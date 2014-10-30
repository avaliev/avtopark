package ru.avtopark

import avto.park.EmailSendService
import avto.park.FriendlyUrlService

import java.util.logging.Level
import java.util.logging.Logger

class MainController {

//    def FriendlyUrlService friendlyUrlService;

    def EmailSendService emailSendService;

    // область видимости контроллеров
    City lastCity = null;

    def index() {
//        render(params*.toString()+'main');
        def cities = City.list(sort: 'name');
        def moscow = cities.find { city -> city.name == "Москва" }
        def piter = cities.find { city -> city.urlName == "sankt-peterburg" }
        cities.remove(moscow);
        cities.add(0, moscow);
        cities.remove(piter);
        cities.add(1, piter);
        cities.collect {
            it.urlName = 'gorod/' + it.urlName
        }
        render(view: 'index', model: [cities: cities])
    }


    def city() {
        String url = params.get("city");
        City city = City.findByUrlName(url);
        lastCity = city;
        city.routes.collect {
            it.urlName = '../marshrut/' + it.urlName;
        }
        render(view: 'city', model: [city: city])
    }


    def intent() {

        try {
            // send email
            emailSendService.createIntent(params)
        } catch (Exception e) {
            e.printStackTrace()
            Logger.getLogger("Main").log(Level.SEVERE, e.message)
        }
        render("OK");
    }

    def withRoutes() {
        // need model routes , city
        // need variable for context
        // существует такой метод чтобы найти соответв. маршрут и вывести его имя на русском
        def query = Route.where {
            (departureCity == lastCity) && (urlName == params.get("route"))
        }
//        Route route = lastCity.routes.find {
//            route.urlName==params.get("route")
//        }
        Route route = query.find();
        render(view: 'route', model: [route: route, city: lastCity])
    }


}
