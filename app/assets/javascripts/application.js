// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).on('ready page:load', function(){

	//for datenschutz accordions
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
    	acc[i].onclick = function(){
        	this.classList.toggle("active");
        	this.nextElementSibling.classList.toggle("show");        
    	}
	}

	//for contact form
	setTimeout(function(){
    $('.notice').removeClass("show");
  }, 3000);


	//scroll-to-top-button
	$('.scrollToTop').hide();

	$(window).on('scroll', function(){
		if ($(this).scrollTop() > 100) {
			$('.scrollToTop').fadeIn();
		} else {
			$('.scrollToTop').fadeOut();
		}
	});
	
	//Click event to scroll to top
	$('.scrollToTop').on('click', function(){
		$('html, body').animate({scrollTop : 0},800);
		return false;
	});
});












