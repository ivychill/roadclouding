# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	#testAjaxLogin()
	return

testAjaxLogin = () -> 
	login_string = {"user": {"email":"user@example.com", "password":"please"}}
	$.ajax({
		type: 'POST',
		url: '/sessions',
		data: login_string,
		success: -> 
			return
		,
		dataType: "json"
	})							
