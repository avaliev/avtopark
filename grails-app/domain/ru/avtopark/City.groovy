package ru.avtopark

class City {

    String name
    String urlName
    String gname
    String descr

    static hasMany = [routes: Route]
    static mappedBy = [routes: "departureCity"]

    static constraints = {
        gname nullable: true
    }

    static mapping = {
        descr type: 'text'
    }

}
