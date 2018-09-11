package ru.avtopark

class Route {

    String urlName;

    String name;

    City departureCity;

    City destinationCity;

    String content;

    static constraints = {
        urlName unique: true
        name unique: true
        content nullable: true
    }
    static mapping = {
        content type: 'text'
    }
}
