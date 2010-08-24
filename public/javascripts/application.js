// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){ 
  slideMenu();
  featureSlider();
});

// MENU SYSTEM (PRETTY LONGWINDED)
function slideMenu(){

  $('ul.nav').superfish();
  
  //Add the current class to Home
  $('ul.nav li:first').addClass('current');
  
  //The current class
  $('ul.nav li').live('click', function(){
    $('ul.nav li').each(function(){
      $(this).removeClass('current');
    });
    $(this).addClass('current');
  });
};

// FEATURE SLIDER
function featureSlider(){
  $('#slideshowHolder').jqFancyTransitions({ 'effect' : 'wave', 'width': 950, 'height': 220, 'navigation' : true, 'links' : true }); 
}


  
  
  
  
  
  
  
  
  
  
  
  
