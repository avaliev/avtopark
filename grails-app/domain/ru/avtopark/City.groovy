package ru.avtopark

class City {

    String name;
    String urlName;
    String genitiveName;
    String descr;

    static hasMany = [routes: Route];
    static mappedBy = [routes: "departureCity"]

    static constraints = {
        genitiveName nullable: true
        descr nullable: true
    }
}
