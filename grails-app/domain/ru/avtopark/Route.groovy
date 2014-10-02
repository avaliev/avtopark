package ru.avtopark

class Route {

    String urlName;

    Integer price;

    City departureCity;

    City destinationCity;

    static constraints = {
        price nullable: true;
    }
}
