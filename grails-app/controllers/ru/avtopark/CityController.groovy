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

    def cityroutes(Long id) {
        City c = City.findById(id)
        render view: 'cityroutes', model: [city: c]
    }

    def save(City city) {

        if (city.id) {
            def oldCity = City.findById(city.id)
            if (oldCity) {
                oldCity.name = city.name
                oldCity.gname = city.gname
                oldCity.urlName = city.urlName
                oldCity.descr = city.descr
                oldCity.aboutGazel = city.aboutGazel
                oldCity.aboutZil = city.aboutZil
                oldCity.aboutKamaz = city.aboutKamaz
                oldCity.aboutFura = city.aboutFura
                oldCity.aboutPereezd = city.aboutPereezd
                oldCity.videoLink = city.videoLink
                oldCity.save()
                if (city.routes.isEmpty()) {
                    createRoutesFor(city)
                }
            }
        } else {
            city.save()
            createRoutesFor(city)
        }
        def cityName = city.name
        flash.message = "Город ${cityName} сохранен"
        redirect(action: 'index')
    }

    def private createRoutesFor(City city) {
        def list = City.list()
        list.each { City c ->
            if (!c.urlName.equals(city.urlName)) {
                def routeFrom = new Route()
                def routeTo = new Route()
                routeFrom.departureCity = city
                routeFrom.destinationCity = c
                routeFrom.name = city.name + " - " + c.name
                routeFrom.urlName = city.urlName + "-" + c.urlName
                routeFrom.save(failOnError: true, validate: false)
                routeTo.departureCity = c
                routeTo.destinationCity = city
                routeTo.name = c.name + " - " + city.name
                routeTo.urlName = c.urlName + "-" + city.urlName
                routeTo.save(failOnError: true, validate: false)
            }

        }
    }
}
