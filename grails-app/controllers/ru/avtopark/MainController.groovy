package ru.avtopark

import avto.park.EmailSendService
import avto.park.FriendlyUrlService

class MainController {

    def FriendlyUrlService friendlyUrlService;

    def EmailSendService emailSendService;

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
//        render(params*.toString());
        City target=null;
        String city_id=params.get("city_id");
        if (city_id!=null) {
            target=City.findById(Integer.parseInt(city_id));
        }
        new Intent(userName: params.get('userName'),intentDate: new Date(),phone: params.get('phone'), city: target, comment: params.get("comment")).save();
        // send email
        sendMail {
            async true
            from "support@rfperevozki.ru"
            to "dr.classic@yandex.ru"
            subject "vvvvvvvvvvvv"
            body "aaaaaaaaaaaaaaaaaaaaaaa"
        }

        // TODO нужно перенести отправлку почты на другой контроллер
        // save intent
        render("OK");
    }

    def withRoutes() {
       // need model routes , city
        // need variable for context
        // существует такой метод чтобы найти соответв. маршрут и вывести его имя на русском
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
