package ru.avtopark

import avto.park.FriendlyUrlService

class MainController {

    def FriendlyUrlService friendlyUrlService;

    City lastCity=null;

    def index() {
//        render(params*.toString()+'main');
        // show main page with cities
        // for url: /city/index.html
        render(view: 'index', model : [cities :City.list()] )
    }


    def city(){
        String url=params.get("city");
        City city=City.findByUrlName(url);
        lastCity=city;
        render(view: 'city' ,  model: [city : city] )
    }

    def withRoutes() {
       // need model routes , city
        // need variable for context
        def query=Route.where {
            (departureCity==lastCity) && (urlName==params.get("route"))
        }
//        Route route = lastCity.routes.find {
//            route.urlName==params.get("route")
//        }
        Route route=query.find();
        render(view: 'route' , model: [route : route , city : lastCity])
    }


}
