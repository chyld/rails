$(function(){

  $('#enqueue').click(enqueue_data);
  $('#dequeue').click(dequeue_data);

});

function enqueue_data()
{
  $.ajax({
    type: "POST",
    url: "/enqueue",
    data: { color: $('#color').val() }
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function dequeue_data()
{
  $.ajax({
    type: "POST",
    url: "/dequeue"
  }).done(function(msg) {
    show_colors(msg.data);
  });
}

function show_colors(colors)
{
  $('#colors').empty();

  for(var i = 0; i < colors.length; i++)
  {
    var color = $('<div>');
    color.addClass('color');
    color.css('background-color', colors[i]);
    $('#colors').append(color);
  }
}
