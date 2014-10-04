package ru.avtopark

class Route {

    String urlName;

    Integer price;

    Integer distance;

    City departureCity;

    City destinationCity;

    static constraints = {
        price nullable: true;
        distance nullable: true;
    }
}
