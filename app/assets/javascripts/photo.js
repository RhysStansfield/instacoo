var connection = new WebSocketRails('localhost:3000/websocket');

var channel = connection.subscribe('photos');

channel.bind('new_photo', function(photo) {
  // alert('photo recieved yall!');
  $photo = $('.picture:last').clone();

  $photo.find('p').text(photo.description);
  $photo.find('img').attr('src', photo.image_url);

  function insertTags(tag) {
    $photo('.tags').text(tag)
  }
  
  photo.tags.forEach(insertTags);


  $('.photos').append($photo);
});