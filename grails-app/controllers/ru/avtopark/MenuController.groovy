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


    def about(){
        render( view : 'about')
    }

}
