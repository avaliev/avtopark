package ru.avtopark

import java.util.logging.Level
import java.util.logging.Logger

class MainController {

//    def ru.avtopark.FriendlyUrlService friendlyUrlService;

    EmailSendService emailSendService

    def cities

    def phone_yandex

    def index() {
        replacePhone()
        loadCities()
        def pages = CustomPage.list()
        def tlist = Transport.list()
        render(view: 'index', model: [cities: cities, pages: pages, tlist: tlist, phoneYa: phone_yandex])
    }


    def city() {
        replacePhone()
        loadCities()
        String url = params.get("city")
        City city = City.findByUrlName(url)
        def pages = CustomPage.list()
        def tlist = Transport.list()
        city.routes = city.routes.sort({ r -> r.name })
        render(view: 'city', model:
                [city   : city, cities: cities, pages: pages, tlist: tlist,
                 keyword: city.name, phoneYa: phone_yandex])
    }

    def pereezdCity() {
        replacePhone()
        loadCities()
        String url = params.get("city")
        def pages = CustomPage.list()
        City city = City.findByUrlName(url)
        city.routes = city.routes.sort({ r -> r.name })
        def tlist = Transport.list()
        render(view: 'pereezd-city', model:
                [city: city, cities: cities, tlist: tlist, pages: pages, keyword: city.name, phoneYa: phone_yandex])
    }

    def pereezdRoute() {
        replacePhone()
        loadCities()
        String url = params.get("route")
        Route route = Route.findByUrlName(url)
        City city = route.departureCity
        def tlist = Transport.list()
        def pages = CustomPage.list()
        render(view: 'pereezd-route', model:
                [city   : city, cities: cities, tlist: tlist,
                 route  : route,
                 pages  : pages,
                 keyword: city.name, phoneYa: phone_yandex])
    }


    def intent() {

        try {
            // send email
            emailSendService.createIntent(params, session.getAttribute("utm_term"), session.getAttribute("param_map"))

        } catch (Exception e) {
            e.printStackTrace()
            Logger.getLogger("Main").log(Level.SEVERE, e.message)
        }
        render("OK")
    }

    def route() {
        // need model routes , city
        // need variable for context
        // существует такой метод чтобы найти соответв. маршрут и вывести его имя на русском
        loadCities()
        replacePhone()
        def query = Route.where {
            urlName == params.get("route")
        }
        def pages = CustomPage.list()
        Route route = query.find()
        //route.departureCity.routes = route.departureCity.routes.sort({ r -> r.name });
        render(view: 'route', model:
                [route  : route,
                 city   : route.departureCity,
                 pages  : pages, cities: cities,
                 keyword: route.name, phoneYa: phone_yandex])
    }

    def loadCities() {
        if (cities == null) {
            cities = City.list()
            cities.sort(new Comparator<City>() {
                @Override
                int compare(City o1, City o2) {
                    return o1.name.compareTo(o2.name)
                }
            })
        }
        return cities
    }

    def replacePhone() {
        if (phone_yandex == null) {
            if ("yandex".equals(params.get("utm_source"))) {
                def value = Settings.findByParam_key("phone_yandex")
                phone_yandex = value.param_value
            }
        }
    }
}
