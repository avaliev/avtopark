package ru.avtopark

import avto.park.FriendlyUrlService

class MainController {

    def FriendlyUrlService friendlyUrlService;

    City lastCity=null;

    def index() {
//        render(params*.toString()+'main');
        def cities= City.list();
        cities.collect {
            it.urlName='gorod/'+it.urlName
        }
        render(view: 'index', model : [cities : cities] )
    }


    def city(){
        String url=params.get("city");
        City city=City.findByUrlName(url);
        lastCity=city;
        city.routes.collect {
            it.urlName='../marshrut/'+it.urlName;
        }
        render(view: 'city' ,  model: [city : city ] )
    }


    def intent(){
        String name=params.get("user_name");
        String phone=params.get("user_phone");
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
