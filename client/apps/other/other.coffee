@Other = Backbone.View.extend
	
	template: null

	initialize: ()->
		@template = Meteor.render ()->
			return Template.other()

	render: ()->
		@$el.html(@template)
		return this