package ru.avtopark

class City {

    String name;
    String urlName;
    String genitiveName;
    String desc;

    static hasMany = [routes: Route];
    static mappedBy = [routes: "departureCity"]

    static constraints = {
        genitiveName nullable: true
        desc nullable: true
    }
}
