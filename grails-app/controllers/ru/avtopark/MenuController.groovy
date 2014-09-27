package ru.avtopark

class MenuController {

    def index() {
        // how to map
        render params*.toString()
    }
}
