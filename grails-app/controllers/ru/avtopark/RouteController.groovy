package ru.avtopark

import grails.transaction.Transactional


@Transactional
class RouteController {

    def index() {}


    def edit(Long id) {
        Route route = Route.findById(id)
        render(view: 'edit', model: [route: route])
    }

    def save(Route route) {
        if (route.id) {
            Route oldRoute = Route.findById(route.id)
            oldRoute.name = oldRoute.name
            oldRoute.urlName = oldRoute.urlName
            oldRoute.content = oldRoute.content
            oldRoute.save()
        } else {
            route.save()
        }
        flash.message = "Маршрут сохранен"
        render(view: 'edit', model: [route: route])
    }
}
