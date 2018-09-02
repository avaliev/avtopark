class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "main", action: "index")

        "/p/$page"(controller: "page", action: "index")
//        "/login"(controller: "login", action: 'login', method: "post")
        "/gorod/$city?"(controller: "main", action: "city")
        "/gorod/$city"(controller: "main", action: "city")
        "/pereezdy/$city"(controller: "main", action: "pereezdCity")
        "/pereezdy/r/$route"(controller: "main", action: "pereezdRoute")
        "/transport/$transport"(controller: "transport", action: "page")
        "/transport/$transport/$city"(controller: "transport", action: "city")
        "/transport-uslugi/$city"(controller: "transport", action: "uslugi")

        "/gruzoperevozki/$route?"(controller: "main", action: "route")
        "/gruzoperevozki/$url"(controller: "custompage", action: "page")
        "500"(view: '/error')

        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
    }
}
