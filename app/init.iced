document.addEventListener "DOMContentLoaded", (e) ->
	state = {}
	utils = require("utils")
	fullstate = {state: state, utils: utils}
	react = require("react-dom")
	widget = require("widget")
	setInterval((() -> react.render(widget(fullstate), document.getElementById("main_frame"))), 500)
	require("main")(state, utils)
