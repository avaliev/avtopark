package ru.avtopark

class Route {

    String urlName;

    String name;

    City departureCity;

    City destinationCity;

    static constraints = {

        urlName unique: true
        name unique: true
    }
}
