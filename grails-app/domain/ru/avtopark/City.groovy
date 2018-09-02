package ru.avtopark

class City {

    String name
    String urlName
    String gname
    String descr

    String aboutFura
    String aboutZil
    String aboutGazel
    String aboutKamaz
    String aboutPereezd
    String videoLink


    static hasMany = [routes: Route]
    static mappedBy = [routes: "departureCity"]

    static constraints = {
        gname nullable: true
        urlName unique: true, blank: false
        name unique: true, blank: false
        descr nullable: true
        aboutFura nullable: true
        aboutZil nullable: true
        aboutKamaz nullable: true
        aboutGazel nullable: true
        aboutPereezd nullable: true
        videoLink nullable: true
    }

    static mapping = {
        descr type: 'text'
        aboutFura type: 'text'
        aboutKamaz type: 'text'
        aboutZil type: 'text'
        aboutGazel type: 'text'
        aboutPereezd type: 'text'
    }

}
