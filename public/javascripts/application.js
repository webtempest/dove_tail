// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function(){ 
  var contact = $('#contact');
  var home = $('#home');
  var hometext = $('#hometext');
  var contacttext = $('#contacttext');
  
  contacttext.hide();
  
  contact.click(function(){
    home.parent().removeClass('current');
    contact.parent().addClass('current');
    hometext.hide();
    contacttext.show();
  });
  
  home.click(function(){
    contact.parent().removeClass('current');
    home.parent().addClass('current');
    hometext.show();
    contacttext.hide();
  });
});
