@App = {}

Meteor.startup ()->
	$ ->
		App.router = new Router()
		Backbone.history.start({pushState: true})