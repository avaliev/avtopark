package ru.avtopark

import avto.park.EmailSendService
import java.util.logging.Level
import java.util.logging.Logger

class MainController {

//    def FriendlyUrlService friendlyUrlService;

    def EmailSendService emailSendService;


    def cities;

    def phone_yandex;

    def index() {
        replacePhone()
        loadCities()
        render(view: 'index', model: [cities: cities,phoneYa : phone_yandex])

    }


    def city() {
        replacePhone()
        loadCities()
        String url = params.get("city");
        City city = City.findByUrlName(url);
        city.routes.collect {
            it.urlName = '../gruzoperevozki/' + it.urlName;
        }

        city.routes=city.routes.sort ({ r -> r.name});
        render(view: 'city', model: [city: city, cities: cities, seo_content: city.getText(), keyword: city.name , phoneYa : phone_yandex ])
    }


    def intent() {

        try {
            // send email
            emailSendService.createIntent(params,session.getAttribute("utm_term"),session.getAttribute("param_map"));

        } catch (Exception e) {
            e.printStackTrace()
            Logger.getLogger("Main").log(Level.SEVERE, e.message)
        }
        render("OK");
    }

    def route() {
        // need model routes , city
        // need variable for context
        // существует такой метод чтобы найти соответв. маршрут и вывести его имя на русском
        loadCities()
        replacePhone()
        def query = Route.where {
            urlName == params.get("route")
        };
        Route route = query.find();
        route.departureCity.routes=route.departureCity.routes.sort({r->r.name});
        render(view: 'route', model: [route: route, city: route.departureCity, cities: cities, keyword: route.name, phoneYa : phone_yandex])
    }

    public def loadCities(){
        if (cities==null) {
            cities=City.list();
            cities.collect {
                it.urlName = 'gorod/' + it.urlName
            }

            cities.sort(new Comparator<City>() {
                @Override
                int compare(City o1, City o2) {
                    return o1.name.compareTo(o2.name);
                }
            })
        }
        return cities;
    }

    public  def replacePhone(){
        if (phone_yandex==null) {
            if ("yandex".equals(params.get("utm_source"))){
                def value=Settings.findByParam_key("phone_yandex");
                phone_yandex=value.param_value;
            }
        }
    }
}
