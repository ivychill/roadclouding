# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
	#testAjaxLogin()
	$('#follow').click( ->
			#alert(I18n.t("luyun.follow"))
			alert("新浪微博：路云科技\n技术博客：http://www.cnblogs.com/mobileinternet")
			return false
		)
	$('#contact').click( ->
			#alert(I18n.t("luyun.follow"))
			alert("Email: webmaster@roadclouding.com\n地址：广东省深圳市宝安25区前进一路华丰时代广场四楼D93")
			return false
		)
	$('#slides').slides({
				preload: true,
				preloadImage: '/loading.gif',
				play: 5000,
				pause: 2500,
				hoverPause: true
		})
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
