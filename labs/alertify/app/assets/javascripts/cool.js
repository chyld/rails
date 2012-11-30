$(function(){

  $('#b1').click(b1);
  $('#b2').click(b2);
  $('#b3').click(b3);
  $('#b4').click(b4);

});

function b1()
{
  alertify.alert( "this is our message!", function () {
      $('h1').text('we rule and you drool!');
  });
}

function b2()
{
  alertify.log("hey!!!", "warning");
}

function b3()
{
  alertify.success("this is good!!!!");
}

function b4()
{
  alertify.error("this is an error");
}
