class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }


//        "/"(view:"/index")
        "/$city?"(controller: "main")
        "/$city?/$route?"(controller: "main", action: 'withRoutes')
        "500"(view:'/error')
	}
}
