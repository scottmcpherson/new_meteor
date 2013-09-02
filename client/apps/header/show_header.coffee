@ShowHeader = Backbone.View.extend

	template: null

	tagName: "div"
	id: "header"

	initialize: ()->
		Template.header.events = 
			"click a": (e)->
				App.router.aReplace(e)

		@template = Meteor.render ()->
			return Template.header()

	render: ()->
		@$el.html(@template)
		return this
