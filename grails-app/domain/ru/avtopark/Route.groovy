package ru.avtopark

class Route {

    String urlName;

    String name;

    Integer price;

    Integer distance;

    City departureCity;

    City destinationCity;

    static constraints = {
        price nullable: true;
        distance nullable: true;
    }
}
