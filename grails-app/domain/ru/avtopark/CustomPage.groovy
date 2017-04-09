package ru.avtopark

class CustomPage {


    String url;

    String title;

    String metaTag;

    String content;

    static constraints = {
        content nullable: true
        url unique: true
    }

    static mapping = {
        content type: 'text';
    }
}
