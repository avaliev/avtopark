package avto.park

import ru.avtopark.Settings

class MyFilterFilters {

    def filters = {
        main(controller: 'main', action: '*' , actionExclude : 'intent') {
            before = {
                if (params.get("utm_term")!=null) {
                    session.setAttribute("utm_term",params.get("utm_term"));
                }
            }
            after = { Map model ->
                addContacts(model)
            }

            afterView = { Exception e ->

            }
        }

        menu(controller: 'menu', action: '*') {
            before = {
                if (params.get("utm_term")!=null) {
                    session.setAttribute("utm_term",params.get("utm_term"));
                }

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
