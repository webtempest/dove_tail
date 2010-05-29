// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){ 
  slideMenu();
  featureSlider();
});

// MENU SYSTEM (PRETTY LONGWINDED)
function slideMenu(){

  $('ul.nav').superfish();
        
  var contact = $('#contact');
  var home = $('#home');
  var hometext = $('#hometext');
  var contacttext = $('#contacttext');
  
  contacttext.hide();
  
  contact.click(function(){
    home.parent().removeClass('current');
    contact.parent().addClass('current');
    hometext.slideUp(300)
    contacttext.delay(310).slideDown(300)
  });
  
  home.click(function(){
    contact.parent().removeClass('current');
    home.parent().addClass('current');
    contacttext.slideUp(300)
    hometext.delay(310).slideDown(300)
  });
};

// FEATURE SLIDER
function featureSlider(){
  $('#slideshowHolder').jqFancyTransitions({ 'effect' : 'wave', 'width': 950, 'height': 220, 'navigation' : true, 'links' : true }); 
}


  
  
  
  
  
  
  
  
  
  
  
  
