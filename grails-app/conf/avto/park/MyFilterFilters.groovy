package avto.park

import org.codehaus.groovy.grails.web.servlet.mvc.GrailsParameterMap
import ru.avtopark.City
import ru.avtopark.Settings

class MyFilterFilters {


    TreeMap<String, String> map;

    def filters = {

        main(controller: 'main', action: '*', actionExclude: 'intent') {
            before = {
                map = new TreeMap<>();

                setUtmAttrs(params)
                if (session.getAttribute("param_map") == null) {
                    session.setAttribute("param_map", map);
                }


                if (params.get("utm_term") != null) {
                    session.setAttribute("utm_term", params.get("utm_term"));
                }
            }

            afterView = { Exception e ->

            }
        }

        menu(controller: 'menu', action: '*') {
            before = {
                map = new TreeMap<>();
                setUtmAttrs(params)
                if (params.get("utm_term") != null) {
                    session.setAttribute("utm_term", params.get("utm_term"));
                }
                if (session.getAttribute("param_map") == null) {
                    session.setAttribute("param_map", map);
                }

            }

            afterView = { Exception e ->

            }
        }

        addContacts(controller: "*", action: "*") {
            after = { Map model ->
                addContacts(model)
                addCities(model)
            }
        }
    }


    def setAttr(String name, GrailsParameterMap params) {
        if (params.get(name) != null) {
            map.put(name, params.get(name))
        }
    }

    def setUtmAttrs(GrailsParameterMap params) {
        setAttr("utm_term", params);
        setAttr("utm_medium", params);
        setAttr("utm_source", params);
        setAttr("utm_campaign", params);
        setAttr("utm_content", params);
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


    def addCities(Map model) {
        if (model != null) {
            def list = City.list()
            model.put("cities", list)
        }
    }

}
