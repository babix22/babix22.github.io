FastClick.attach(document.body);	
$('#fullpage').fullpage();

$('.fa-bars').click(function(){
	$('.menu-tel').css("display", "block");
	$('.fa-times').css("display", "block");
	$('.fa-bars').css("display", "none");	
});

$('.fa-times').click(function(){
	$('.menu-tel').css("display", "none");
	$('.fa-times').css("display", "none");
	$('.fa-bars').css("display", "block");	
});

$('.menu-tel a').click(function(){
	$('.menu-tel').css("display", "none");
	$('.fa-times').css("display", "none");
	$('.fa-bars').css("display", "block");	
});


