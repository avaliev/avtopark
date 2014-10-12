package ru.avtopark

class Intent {

    String userName;
    String email;
    String phone;
    String comment;
    // from which city page was sent intent
    City city;


    static constraints = {
        comment nullable: true;
        city nullable: true;
        email nullable: true;
    }
}
