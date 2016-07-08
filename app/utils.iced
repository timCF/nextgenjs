jf = require('jsfunky')
module.exports =
	error: (mess) -> $.growl.error({title: '', message: mess , duration: 20000})
	warn: (mess) -> $.growl.warning({title: '', message: mess , duration: 20000})
	notice: (mess) -> $.growl.notice({title: '', message: mess , duration: 20000})
	info: (mess) -> $.growl({title: '', message: mess , duration: 20000})
	view_set: (state, path, ev) ->
		if (ev? and ev.target? and ev.target.value?)
			subj = ev.target.value
			jf.put_in(state, path, subj)
	view_put: (state, path, data) ->
		jf.put_in(state, path, data)
	view_swap: (state, path) ->
		jf.update_in(state, path, (bool) -> not(bool))
	view_files: (state, path, ev) ->
		if (ev? and ev.target? and ev.target.files? and (ev.target.files.length > 0))
			jf.update_in(state, path, (_) -> [].map.call(ev.target.files, (el) -> el))
			console.log(jf.get_in(state, path))
	auth: (state) ->
		state.auth = true
