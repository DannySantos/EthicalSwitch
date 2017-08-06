$(document).ready(function() {
  $(document.body).on('click', '#signup_submit', function(e) {
    if($('#subscriber_email').val() == "" || $('#subscriber_postcode').val() == "") {
      e.preventDefault();
      $('#subscriber_error').html("Please make sure you have entered your email address and postcode");
      $('#subscriber_error').show();
    }
  })
})
