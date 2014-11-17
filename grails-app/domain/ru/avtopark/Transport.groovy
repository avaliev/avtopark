package ru.avtopark

/**
 * Created by Admin on 19.10.14.
 */
class Transport {

    String name;

    String descr;
    // for km riding
    Integer price;

    static constraints = {
        descr nullable: true
    }
}
