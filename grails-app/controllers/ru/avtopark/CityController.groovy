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
        city.save()
        def cityName = city.name
        flash.message = "Город ${cityName} сохранен"
        redirect(action: 'index')
    }
}
