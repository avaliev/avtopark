class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "main", action: "index")
        "/gorod/$city?"(controller: "main", action: "city")
        "/gorod/$city"(controller: "main", action: "city")
        "/transport/$transport" (controller: "transport", action: "page")
        "/transport/$transport/$city" (controller: "transport", action: "city")

        "/gruzoperevozki/$route?"(controller: "main", action: "route")
        "/$url"(controller: "customPage", action: "page")
        "500"(view: '/error')

        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
    }
}
