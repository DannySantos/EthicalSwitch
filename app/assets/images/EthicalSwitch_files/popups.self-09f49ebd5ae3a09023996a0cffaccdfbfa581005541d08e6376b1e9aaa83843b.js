$(document).ready(function() {
  $(document.body).on('click', '.close', function() {
    $('.overlay').css('opacity', '0');
    $('.overlay').hide();
    $(this).parent().hide();
  })
  
  $(document.body).on('click', '.popup_reveal', function() {
    $('.overlay').show();
    $('.overlay').css('opacity', '1');
  })
  
  $(document.body).on('click', '#switch_power_button', function() {
    $('#switch_power').show();
  })
  
  $(document.body).on('click', '#switch_super_button', function() {
    $('#switch_super').show();
  })
  
  $(document.body).on('click', '#switch_homeloans_button', function() {
    $('#switch_homeloans').show();
  })
})
