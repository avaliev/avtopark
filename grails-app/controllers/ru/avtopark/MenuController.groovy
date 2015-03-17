package ru.avtopark

import avto.park.EmailSendService
import groovyjarjarcommonscli.MissingArgumentException

class MenuController {


    def EmailSendService emailSendService;

    def phone_yandex;

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
        replacePhone()
        render( view: 'services')
    }

    def pereezdy(){
        replacePhone()
        render(view: 'pereezdy')
    }

    def pereezd1() {
        replacePhone()
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render (view: 'pereezd1',  model : [cities: maincont.loadCities()]);
    }

    def pereezd2() {
        replacePhone()
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render(view: 'pereezd2',  model : [cities: maincont.loadCities()]);
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


    public  def replacePhone(){
        if (phone_yandex==null) {
            if ("yandex".equals(params.get("utm_source"))){
                def value=Settings.findByParam_key("phone_yandex");
                phone_yandex=value.param_value;
            }
        }
    }

}
