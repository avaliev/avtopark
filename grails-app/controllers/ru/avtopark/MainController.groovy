package ru.avtopark

import avto.park.FriendlyUrlService

class MainController {

    def FriendlyUrlService friendlyUrlService;

    def index() {
//        render(params*.toString()+'main');
        // show main page with cities
        // for url: /city/index.html
        render(view: 'index' , model: [city : params.get("city")])
    }

        def withRoutes(){
       // need model routes , city
       // own view - difference in left links list
        // for url /city/route.html (/city/city-city.html)
//        render('with routes')
        render(params*.toString());
    }


}
