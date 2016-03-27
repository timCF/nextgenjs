document.addEventListener "DOMContentLoaded", (e) ->
	# state for main function, mutable
	state = {}
	# some compile-time defined utils, frozen
	utils = Object.freeze(require("utils"))
	# full state structure, frozen
	fullstate = Object.freeze({state: state, utils: utils})
	react = require("react-dom")
	widget = require("widget")
	setInterval((() -> react.render(widget(fullstate), document.getElementById("main_frame"))), 500)
	require("main")(state, utils)
