$(function(){

  $('button').click(send_json_request_to_rails);

});

function send_json_request_to_rails()
{
  $.ajax({
    type: "POST",
    url: "/movies/data"
  }).done(function(msg) {
    display_graph(msg);
  });
}

function display_graph(movies)
{
  Morris.Bar({
    element: 'moviegraph',
    data: movies,
    xkey: 'name',
    ykeys: ['gross'],
    labels: ['Movie Gross']
  });
}
