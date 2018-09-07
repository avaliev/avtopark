package ru.avtopark

class AdminController {

    def index() {}


    def login() {
        if (request.get) {
            render(view: "login")
        }
    }
}
