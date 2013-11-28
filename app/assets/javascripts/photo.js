var connection = new WebSocketRails('localhost:3000/websocket');

// subscribe to the channel
var channel = connection.subscribe('photos');

// bind to a channel event
channel.bind('new_photo', function() {
  alert('photo recieved yall!');
});