package ru.avtopark

class Intent {

    String userName;
    String phone;
    Date intentDate;
    // dop info
    String departure;
    String destination;
    String volume;
    String comment;
    String page;
    String term;
    // from which city page was sent intent
    City city;

    static constraints = {
        departure nullable: true;
        destination nullable: true;
        comment nullable: true;
        city nullable: true;
        volume nullable: true
        page nullable: true;
        term nullable: true;
    }
}
