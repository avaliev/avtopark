package ru.avtopark

/**
 * Created by Admin on 19.10.14.
 */
class Transport {

    String url;
    String name;
    String gname;
    String descr;
    String imgUrl;
    Integer price;

    static constraints = {
        descr nullable: true
        gname nullable: true
    }

    static mapping = {
        descr type: 'text';
    }
}
