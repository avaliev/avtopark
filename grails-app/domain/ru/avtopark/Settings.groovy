package ru.avtopark

/**
 * Created by Admin on 19.10.14.
 */
class Settings {

    String param_key;
    String param_value;

    static constraints =  {
        param_key unique: true;
    }
}
