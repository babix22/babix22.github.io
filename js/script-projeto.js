let altura1 = convert(340);
console.log(altura1);

$(window).scroll(function(){
	if ($(window).scrollTop() > altura1) {
		$('.line-banner').css("background-color", "black");
		$('.menu li a').css("color", "black");
		$('.circle-rede').css("border-color", "black");
		$('.redes .fa').css("color", "black");
		$('.circle-rede:hover .fa').css("color", "black");
	
	
	}else{
		
		$('.line-banner').css("background-color", "white");
		$('.menu li a').css("color", "white");	
		$('.circle-rede').css("border-color", "white");
		$('.redes .fa').css("color", "white");
				
	}
});

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



function convert (vh){
	let height = screen.height;
	console.log(height);

	let x = (vh * height) / 100;
	return x; 
}




