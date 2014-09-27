class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: "main" , action: "index")
        "/$city?"(controller: "main", action: "city")
        "/$city?/$route?"(controller: "main", action: "withRoutes")
        "500"(view:'/error')
	}
}
