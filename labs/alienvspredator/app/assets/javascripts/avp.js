$(function(){

  $('#creature_form').hide();
  $('#new_creature').click(show_form);

});

function show_form()
{
  $('#creature_form').show();
  $('#new_creature').hide();
}
