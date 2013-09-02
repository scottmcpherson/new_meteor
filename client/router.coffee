@Router = Backbone.Router.extend

	routes:
		"": "home"
		"other" : "other"

	view: null

	page_parent_sel: "#content"

	page_header_sel: "#header"

	initialize:()->
		@showHeader = new ShowHeader()
		$(@page_header_sel).replaceWith(@showHeader.render().$el)

	home: ()->
		@.go Home 

	other: ()->
		@.go Other

	go: (viewClass, internal, params)->
		if !viewClass?
			viewClass = Home

		@view = new viewClass(params)
		@render()

	render: ()->
		$(@page_parent_sel).html(@view.render().$el)


	aReplace: (e)->
		e.preventDefault()

		a = document.createElement("a")
		a.href = @getHref(e.target)
		route = a.pathname + a.search

		@navigate(route, {trigger: true})

		window.scrollTo(0,0)

	getHref: (elt)->
		if elt.hasAttribute("href")
			return elt.href 
		else 
			return @getHref(elt.parentElement)
			