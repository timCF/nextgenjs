module.exports = (state, utils) ->
	opts = {
		era: 'long',
		year: 'numeric',
		month: 'long',
		day: 'numeric',
		weekday: 'long',
		timezone: 'UTC',
		hour: 'numeric',
		minute: 'numeric',
		second: 'numeric'
	}
	setInterval((() -> if state.data.enabled then state.stack.push(state.login+" "+(new Date()).toLocaleString(state.data.option,opts))), 500)
	utils.render_coroutine() # here first render and starts coroutine
	if not(state.auth) then $('[tabindex="' + 1  + '"]').focus()
