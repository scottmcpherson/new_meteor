@Home = Backbone.View.extend
	
	template: null

	initialize: ()->
		@template = Meteor.render ()->
			return Template.home()

	render: ()->
		@$el.html(@template)
		return this