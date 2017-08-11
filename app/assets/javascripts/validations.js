$(document).ready(function() {
  $(document.body).on('click', '#signup_submit', function(e) {
    if($('#subscriber_email').val() == "" || $('#subscriber_postcode').val() == "") {
      e.preventDefault();
      $('#subscriber_error').html("Please make sure you have entered your email address and postcode");
      $('#subscriber_error').show();
    }
  })
    
  $(document.body).on('click', '.message_send', function(e) {
    if($('#message_name').val() == "" || $('#message_postcode').val() == "" || $('#message_email').val() == "" || $('#message_message').val() == "") {
      e.preventDefault();
      $('#message_error').html("Please make sure you have filled the required fields");
      $('#message_error').show();
    }
  })
})