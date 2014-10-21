package avto.park

import ru.avtopark.Settings

class MyFilterFilters {

    def filters = {
        all(controller:'main', action:'*') {
            before = {

            }
            after = { Map model ->
                def settings=Settings.findAll();
                Map contacts=new TreeMap();
                for (def s:settings){
                    contacts.put(s.param_key,s.param_value);
                }

                model.put("contacts",contacts);
            }
            afterView = { Exception e ->

            }
        }
    }
}