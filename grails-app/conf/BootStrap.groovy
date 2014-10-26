import org.apache.log4j.Logger
import ru.avtopark.City

import ru.avtopark.Route
import ru.avtopark.Settings

class BootStrap {

    def init = { servletContext ->

//       if (City.count<1) {
//           new City(name: "Москва",urlName: "moskva",desc: "Описание").save()
//           new City(name: "Санкт-Петербург",urlName: "peterburg",desc: "Описание").save()
//           new City(name: "Казань",urlName: "kazan",desc: "Описание").save()
//           new City(name: "Самара",urlName: "samara",desc: "Описание").save()
//           new City(name: "Саратов",urlName: "saratov",desc: "Описание").save()
//           new City(name: "Волгоград",urlName: "volgograd",desc: "Описание").save()
//           new City(name: "Нижний Новгород",urlName: "nizhnij_novgorod",desc: "Описание").save()
//           new City(name: "Набережные Челны",urlName: "naberezhnye_chelny",desc: "Описание").save()
//           new City(name: "Нижнекамск",urlName: "nizhnekamsk",desc: "Описание").save()
//           new City(name: "Астрахань",urlName: "astrahan",desc: "Описание").save()
//           new City(name: "Пермь",urlName: "perm",desc: "Описание").save()
//           new City(name: "Екатеринбург",urlName: "ekaterinburg",desc: "Описание").save()
//           new City(name: "Уфа",urlName: "ufa",desc: "Описание").save()
//           new City(name: "Тюмень",urlName: "tyumen",desc: "tyumen").save()
//       }

//       if (Route.count<1) {
//            def cities=City.list();
//
//           for (City cityFrom: cities) {
//               for (City cityTo: cities) {
//                   if (cityFrom.urlName!=cityTo.urlName) {
//                       Route route=new Route();
//                       route.setUrlName(cityFrom.urlName+'-'+cityTo.urlName);
//                       route.setName(cityFrom.name+' - '+cityTo.name)
//                       route.setDepartureCity(cityFrom);
//                       route.setDestinationCity(cityTo);
//                       route.save();
//                   }
//               }
//           }
//       }


        if (Settings.count<1) {
            new Settings(param_key: "address", param_value: "Kazan").save();
            new Settings(param_key: "phone", param_value: "8-800-700-6798").save();
            new Settings(param_key: "email", param_value: "logist.d1@mail.ru").save();
            new Settings(param_key: "fax", param_value: "-").save();
            new Settings(param_key: "about", param_value: "Грузоперевозки по России любым видом транспорта!").save();
        }

    }
    def destroy = {
    }
}
