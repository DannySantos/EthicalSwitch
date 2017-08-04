$(document).ready(function() {
  $(document.body).on('click', '.btn-switch-icon', function() {
    if($('#state_id').val() != "") {
      $('#switch_type').val($(this).data('switch-type'));
      $(this).parents('form:first').submit();
    } else {
      $('#state_error').html("Please select a state");
      $('#state_error').show();
    }
  })
})