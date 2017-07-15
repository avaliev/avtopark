package ru.avtopark

class TransportController {

    def index() {}

    def page(String transport) {
        def t = Transport.findByUrl(transport)
        render(view: "transport", model: [transport: t])
    }

    def city(String transport, String city) {
        def t = Transport.findByUrl(transport)
        def c = City.findByUrlName(city)
        render(view: "transport-city", model: [transport: t, city: c])
    }

    def uslugi(String city) {
        render(view: "transport-uslugi", model: [city: City.findByUrlName(city)])
    }
}
