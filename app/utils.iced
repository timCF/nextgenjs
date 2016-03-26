module.exports =
	error: (mess) -> $.growl.error({ message: mess , duration: 20000})
	warn: (mess) -> $.growl.warning({ message: mess , duration: 20000})
	notice: (mess) -> $.growl.notice({ message: mess , duration: 20000})
	info: (mess) -> $.growl({ message: mess , duration: 20000})
	view_set: (state, path, ev) ->
		if (ev? and ev.target? and ev.target.value?)
			subj = ev.target.value
			Imuta.update_in(state, path, (_) -> subj)
	view_swap: (state, path) ->
		Imuta.update_in(state, path, (bool) -> not(bool))
