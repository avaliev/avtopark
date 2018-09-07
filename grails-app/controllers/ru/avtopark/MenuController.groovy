package ru.avtopark


class MenuController {


    EmailSendService emailSendService

    def phone_yandex

    def index() {
        // how to map
        render params*.toString()
    }


    def request(){
        render ( view : 'request')
    }

    def intent() {
        try {
            emailSendService.createIntent(params,session.getAttribute("utm_term"),session.getAttribute("param_map"))
            render(view: 'request_ok')
        }  catch (IllegalArgumentException e) {
            render(view: 'request_fail', model: [ message: e.message ])
        }  catch (Exception e){
            render(view: 'request_fail')
        }
    }

    def services(){
        replacePhone()
        render( view: 'services')
    }

    def pereezdy(){
        replacePhone()
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render (view: 'pereezdy',  model : [cities: maincont.loadCities()])
    }

    def pereezd_dom() {
        replacePhone()
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render (view: 'pereezd1',  model : [cities: maincont.loadCities()])
    }

    def pereezd2() {
        replacePhone()
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        render(view: 'pereezd2',  model : [cities: maincont.loadCities()])
    }


    def docs(){
        render(view: 'docs')
    }

    def about(){
//        def maincontroller=grailsApplication.getArtefact("Controller","MainController");
        def maincont=applicationContext.getBean("ru.avtopark.MainController")
        maincont.loadCities()
        render( view : 'about', model : [cities: maincont.cities])
    }

    def contacts(){
//        def maincontroller=grailsApplication.getArtefact("Controller","MainController");
        def maincont=applicationContext.getBean("ru.avtopark.MainController")

        render( view : 'contacts', model : [cities: maincont.cities])
    }


    def replacePhone(){
        if (phone_yandex==null) {
            if ("yandex".equals(params.get("utm_source"))){
                def value=Settings.findByParam_key("phone_yandex")
                phone_yandex=value.param_value
            }
        }
    }

}
