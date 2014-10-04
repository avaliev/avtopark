class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "main" , action: "index")
        "/gorod/$city?" (controller: "main", action: "city")
        "/gorod/$city?/$route?"(controller: "main", action: "withRoutes")
        "500"(view:'/error')
	}
}
