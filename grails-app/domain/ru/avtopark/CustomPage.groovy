package ru.avtopark

class CustomPage {


    String url;

    String title;

    String metaTag;

    PageGroup group;

    String content;

    static constraints = {
        content nullable: true
        url unique: true
        group nullable: true
    }

    static mapping = {
        content type: 'text'
    }
}
