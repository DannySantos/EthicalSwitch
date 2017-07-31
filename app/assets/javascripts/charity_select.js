$(document).ready(function() {
  $(document.body).on('click', '#switch_referrer_2', function() {
    $('#charity-options').show();
  })
  
  $(document.body).on('click', '#switch_referrer_1, #switch_referrer_3, #switch_referrer_4', function() {
    $('#charity-options').hide();
  })
  
  $(document.body).on('click', '.charity-option', function() {
    var charityId = $(this).data('charity-id');
    $('#switch_charity_id').val(charityId);
    $('.charity-option').css('border', '1px solid #eaeaea');
    $(this).css('border', '2px solid #4ead52');
  })
})