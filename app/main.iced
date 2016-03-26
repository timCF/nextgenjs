module.exports = (state, utils) ->
	state.stack = []
	state.data = {}
	state.data.enabled = false
	setInterval((() -> if state.data.enabled then state.stack.push(Date())), 500)
