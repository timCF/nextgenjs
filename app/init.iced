document.addEventListener "DOMContentLoaded", (e) ->
	# state for main function, mutable
	state = {}
	# some compile-time defined utils, frozen
	utils = Object.freeze(require("utils"))
	# full state structure, frozen
	fullstate = Object.freeze({state: state, utils: utils})
	react = require("react-dom")
	widget = require("widget")
	render = () ->
		react.render(widget(fullstate), document.getElementById("main_frame"))
		setTimeout(render, 500)
	require("main")(state, utils)
	render()
