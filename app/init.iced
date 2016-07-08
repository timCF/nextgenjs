document.addEventListener "DOMContentLoaded", (e) ->
	prettyform = (e) ->
		keyCode = e.keyCode || e.which
		if ( keyCode ==  13 )
			e.preventDefault()
			nextElement = $('[tabindex="' + (this.tabIndex+1)  + '"]')
			if(nextElement.length != 0)
				nextElement.focus()
			else
				$('[tabindex="1"]').focus()
				$('.submitmegaform')[0].click()
	$(document).on("keypress",".megaform", prettyform)
	react = require("react-dom")
	widget = require("widget")
	render_tooltips = () ->
		$('[data-toggle="tooltip"]').tooltip()
		out = $(".tooltip").attr('id')
		if out and ($("[aria-describedby='"+out+"']").length == 0)
			$( document.getElementById(out) ).remove()
			console.log("destroy tooltip "+out)
	render_jqcb = () ->
		# NOTICE !!! not reload page on submit forms
		$('form').submit((e) -> e.preventDefault())
	render = () ->
		react.render(widget(fullstate), document.getElementById("main_frame"))
		render_tooltips()
		render_jqcb()
	render_coroutine = () ->
		render()
		setTimeout(render_coroutine, 500)
	#
	# state for main function, mutable
	#
	state = {
		stack: [],
		data: {
			option: "ru",
			enabled: false,
			files: []
		},
		auth: false,
		login: '',
		password: ''
	}
	#
	# state for main function, mutable
	#
	utils = Object.freeze(Object.assign(require("utils"), {render: render, render_coroutine: render_coroutine}))
	fullstate = Object.freeze({state: state, utils: utils})
	require("main")(state, utils)
