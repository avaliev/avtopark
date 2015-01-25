package avto.park

import ru.avtopark.Settings

class MyFilterFilters {

    def filters = {
        main(controller: 'main', action: '*' , actionExclude : 'intent') {
            before = {

            }
            after = { Map model ->
                addContacts(model)
            }

            afterView = { Exception e ->

            }
        }

        menu(controller: 'menu', action: '*') {
            before = {

            }
            after = { Map model ->
                addContacts(model)
            }

            afterView = { Exception e ->

            }
        }
    }


    def addContacts(Map model) {
        if (model != null) {
            def settings = Settings.findAll();
            Map contacts = new TreeMap();
            for (def s : settings) {
                contacts.put(s.param_key, s.param_value);
            }
            model.put("contacts", contacts);
        }
    }

}
