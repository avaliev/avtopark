package ru.avtopark

import avto.park.EmailSendService

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


        redirect(controller: 'main')
    }


    def about(){
        render( view : 'about')
    }

}
