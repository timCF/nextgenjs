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
	state.stack = []
	state.data = {}
	state.data.option = "ru"
	state.data.enabled = false
	setInterval((() -> if state.data.enabled then state.stack.push((new Date()).toLocaleString(state.data.option,opts))), 500)
