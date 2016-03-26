document.addEventListener "DOMContentLoaded", (e) ->
	state = {}
	react = require("react-dom")
	widget = require("widget")
	setInterval((() -> react.render(widget(state), document.getElementById("main_frame"))), 500)
	main(state)
main = (state) ->
	state.stack = []
	setInterval((() -> state.stack.push(Date())), 500)
