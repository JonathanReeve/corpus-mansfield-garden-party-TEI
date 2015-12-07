$(document).ready(function(){
	counter = 0 
	$('.tag').click(function(){
		counter = counter + 1; 
		var scrollTo = '.' + $(this).text(); 
		scrollTo = $(scrollTo)		
		console.debug(scrollTo);
		len = scrollTo.length
		if ( counter > len-1 ) { 
			counter = 0; 
			scrollTo = $(scrollTo)[0]; 
		} else { 
			scrollTo = $(scrollTo)[counter]
		} 
		console.debug(scrollTo);
		$('html, body').animate({ scrollTop: $(scrollTo).parent().offset().top });
	}); 
}); 
