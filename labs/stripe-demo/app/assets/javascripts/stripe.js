$(function(){

  $('.stripe-button').bind('token', token_generated);

});

function token_generated(e, token)
{
  $('#stripeform input[type=hidden]').val(token.id);
  $('#stripeform').submit();
}
