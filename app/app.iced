alert(123)
console.log(Date())
document.addEventListener "DOMContentLoaded", (e) ->
	setInterval((() -> console.log(Date())), 1000)
