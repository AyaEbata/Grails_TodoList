class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
//        "/"(controller: 'todo')
        "500"(view:'/error')
	}
}
