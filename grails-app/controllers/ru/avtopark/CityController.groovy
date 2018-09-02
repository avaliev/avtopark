package ru.avtopark

import grails.transaction.Transactional

@Transactional
class CityController {

    def index() {
        List<City> list = City.findAll("from City order by name")
        render view: 'index', model: [cities: list]
    }

    def create() {
        render view: 'create', model: [city: new City()]
    }

    def edit(Long id) {
        City c = City.findById(id)
        render view: 'edit', model: [city: c]
    }

    def save(City city) {

        if (city.id == null) {
            def oldCity=City.findByUrlName(city.urlName)
            if (oldCity!=null)
                throw new RuntimeException("Страница с таким url уже существует")
            city.save()
            createRoutesFor(city)
        } else {
            city.save()
        }

        def cityName = city.name
        flash.message = "Город ${cityName} сохранен"
        redirect(action: 'index')
    }

    def private createRoutesFor(City city) {
        def list = City.list()
        list.each { City c ->
            def r = new Route()
            r.departureCity = city
            r.destinationCity = c
            r.name = city.name + " - " + c.name
            r.urlName = city.urlName + "-" + c.urlName
            r.save()
        }

    }
}
