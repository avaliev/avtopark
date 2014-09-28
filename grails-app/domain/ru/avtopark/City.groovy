package ru.avtopark

class City {

    String name;
    String urlName;
    String desc;

    static hasMany = [routes: Route];
    static mappedBy = [routes: "departureCity"]

    static constraints = {
    }
}
