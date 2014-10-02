import ru.avtopark.City
import ru.avtopark.Route

class BootStrap {

    def init = { servletContext ->
       if (City.count<1) {
           new City(name: "Москва",urlName: "moskva",desc: "Описание").save()
           new City(name: "Санкт-Петербург",urlName: "peterburg",desc: "Описание").save()
           new City(name: "Казань",urlName: "kazan",desc: "Описание").save()
           new City(name: "Самара",urlName: "samara",desc: "Описание").save()
           new City(name: "Саратов",urlName: "saratov",desc: "Описание").save()
           new City(name: "Волгоград",urlName: "volgograd",desc: "Описание").save()
           new City(name: "Нижний Новгород",urlName: "nizhnij_novgorod",desc: "Описание").save()
           new City(name: "Набережные Челны",urlName: "naberezhnye_chelny",desc: "Описание").save()
           new City(name: "Нижнекамск",urlName: "nizhnekamsk",desc: "Описание").save()
           new City(name: "Астрахань",urlName: "astrahan",desc: "Описание").save()
           new City(name: "Пермь",urlName: "perm",desc: "Описание").save()
           new City(name: "Екатеринбург",urlName: "ekaterinburg",desc: "Описание").save()
           new City(name: "Уфа",urlName: "ufa",desc: "Описание").save()
           new City(name: "Тюмень",urlName: "tyumen",desc: "tyumen").save()
       }

       if (Route.count<1) {
//            def cities=City.list();
//
//           for (City cityFrom: cities) {
//               for (City cityTo: cities) {
//
//               }
//
//           }
       }

    }
    def destroy = {
    }
}
