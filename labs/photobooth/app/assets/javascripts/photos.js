$(function(){

  $('#booth').photobooth();
  $('#booth').on( "image", take_photo);
  setInterval(shoot_video, 1000);

});

function shoot_video()
{
  $('.trigger').trigger('click');
}

function take_photo(event, dataUrl)
{
  $.ajax({
    type: "POST",
    url: "/photos ",
    data: { photo: dataUrl }
  }).done(function( msg ) {
    show_photos(msg);
  });
}

function show_photos(photos)
{
  $('#photos').empty();

  for(var i = 0; i < photos.length; i++)
  {
    var img = $('<img>');
    img.attr('src', photos[i].imagedata);
    $('#photos').prepend(img);
  }
}
