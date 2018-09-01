package ru.avtopark

class PageGroup {

    String url;
    String title;

    static hasMany = [pages: CustomPage]

    static constraints = {
        url blank: false, unique: true
        title blank: false, unique: true
        pages nullable: true
    }
}
