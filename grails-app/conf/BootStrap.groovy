import ru.avtopark.Settings

class BootStrap {

    def init = { servletContext ->

        if (Settings.count<1) {
            new Settings(param_key: "address", param_value: "г. Казань, ул. Оренбургский тракт, д.20").save();
            new Settings(param_key: "phone", param_value: "8 800 500-67-94").save();
            new Settings(param_key: "email", param_value: "logist.d1@mail.ru").save();
            new Settings(param_key: "fax", param_value: "8(843) 212-23-84").save();
            new Settings(param_key: "tel_kazan", param_value: "8(843) 212-23-84").save();
            new Settings(param_key: "tel_spb", param_value: "(812) 385-57-94").save();
            new Settings(param_key: "tel_moscow", param_value: "(499) 322-17-94").save();
            new Settings(param_key: "about", param_value: "Грузоперевозки по России любым видом транспорта!").save();
        }
    }
    def destroy = {
    }
}
