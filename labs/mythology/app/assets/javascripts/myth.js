$(function(){

  $('body').keypress(pressed_key);
  $('#searchform').hide();

});

function pressed_key(key)
{
  // ctrl-f
  if(key.keyCode == 6)
  {
    $('#searchform').show();
    $('#searchform input').val('');
    $('#searchform input').focus();
  }

  // ctrl-h
  if(key.keyCode == 8)
  {
    $('#searchform').hide();
  }
}
