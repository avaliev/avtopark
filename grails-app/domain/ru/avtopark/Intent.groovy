package ru.avtopark

class Intent {

    String userName;
    String email;
    String phone;
    Date intentDate;
    // dop info
    String departure;
    String destination;
    String weight;
    String volume;
    String comment;
    String clientType;
    // from which city page was sent intent
    City city;

    static constraints = {
        weight nullable: true
        departure nullable: true;
        destination nullable: true;
        comment nullable: true;
        city nullable: true;
        email nullable: true;
        volume nullable: true
        clientType nullable: true;
    }
}
