# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	#testAjaxLogin()
	$('#follow').click( ->
			#alert(I18n.t("luyun.follow"))
			alert("官方微博：移动APP开发工作室\n技术博客：http://www.cnblogs.com/mobileinternet")
			return false
		)
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
