package ru.avtopark

import avto.park.EmailSendService
import groovyjarjarcommonscli.MissingArgumentException

class MenuController {


    def EmailSendService emailSendService;

    def index() {
        // how to map
        render params*.toString()
    }


    def request(){
        render ( view : 'request')
    }

    def intent() {
        try {
            emailSendService.createIntent(params);
            render(view: 'request_ok');
        }  catch (IllegalArgumentException e) {
            render(view: 'request_fail', model: [ message: e.message ])
        }  catch (Exception e){
            render(view: 'request_fail');
        }
    }

    def services(){
        render( view: 'services')
    }

    def pereezdy(){
        render(view: 'pereezdy')
    }

    def pereezd1() {
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render (view: 'pereezd1',  model : [cities: maincont.cities]);
    }

    def pereezd2() {
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render(view: 'pereezd2',  model : [cities: maincont.cities]);
    }


    def docs(){
        render(view: 'docs')
    }

    def about(){
//        def maincontroller=grailsApplication.getArtefact("Controller","MainController");
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        maincont.loadCities();
        render( view : 'about', model : [cities: maincont.cities]);
    }

    def contacts(){
//        def maincontroller=grailsApplication.getArtefact("Controller","MainController");
        def maincont=applicationContext.getBean("ru.avtopark.MainController")

        render( view : 'contacts', model : [cities: maincont.cities]);
    }

}
