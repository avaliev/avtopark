package ru.avtopark

import avto.park.EmailSendService
import avto.park.FriendlyUrlService
import avto.park.UserSessionScopedService

import java.util.logging.Level
import java.util.logging.Logger

class MainController {

//    def FriendlyUrlService friendlyUrlService;

    def EmailSendService emailSendService;

    def cities;

    def index() {
//        render(params*.toString()+'main');
        loadCities()
        render(view: 'index', model: [cities: cities])
    }


    def city() {
        loadCities()
        String url = params.get("city");
        City city = City.findByUrlName(url);
        city.routes.collect {
            it.urlName = '../gruzoperevozki/' + it.urlName;
        }


        city.routes=city.routes.sort ({ r -> r.name});
        render(view: 'city', model: [city: city, cities: cities, seo_content: city.getText(), keyword: city.name ])
    }


    def intent() {

        try {
            // send email
            emailSendService.createIntent(params,session.getAttribute("utm_term"))
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
        def query = Route.where {
            urlName == params.get("route")
        };
        Route route = query.find();
        route.departureCity.routes=route.departureCity.routes.sort({r->r.name});
        render(view: 'route', model: [route: route, city: route.departureCity, cities: cities, keyword: route.name])
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


}
