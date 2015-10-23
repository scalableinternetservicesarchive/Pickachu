var map;
var maker;


function initialize() {
  map = new google.maps.Map(document.getElementById('map_canvas'), {
    center: {lat: 34.067, lng: -118.445},
    zoom: 14
  });

  // for (var i = 0; i < notes.length; i++) {
  //   var marker = new google.maps.Marker({
  //     position: new google.maps.LatLng(notes[i].latitude, notes[i].longitude),
  //     map: map,
  //     title: notes[i].title,
  //     body: notes[i].body
  //   });
  // }
  marker = new google.maps.Marker({
          map: map,
          draggable: true,
          // title: 'Old book for free',
          animation: google.maps.Animation.DROP
          // position: pos
        });
  var pos;
  // Try HTML5 geolocation.
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      pos = {
        lat: position.coords.latitude,
        lng: position.coords.longitude  
      };
      marker.setPosition(pos);
      map.setCenter(pos);
    }, function() {
      handleLocationError(true, infoWindow, map.getCenter());
    });
  } else {
    // Browser doesn't support Geolocation
    handleLocationError(false, infoWindow, map.getCenter());
  }
  
  var contentString = '<div id="content">'+
      '<div id="siteNotice">'+
      '</div>'+
      '<h1 id="firstHeading" class="firstHeading">Old book for FREE!</h1>'+
      '<div id="bodyContent">'+
      'I want to give my old books to someone who needs them!';
  var infowindow = new google.maps.InfoWindow({
    content: contentString
  });      

  // marker.addListener('click', toggleBounce);
  marker.addListener('click', function() {
    infowindow.open(map, marker);
  });
}

// function toggleBounce() {
//   if (marker.getAnimation() !== null) {
//     marker.setAnimation(null);
//   } else {
//     marker.setAnimation(google.maps.Animation.BOUNCE);
//   }
// }

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
  infoWindow.setPosition(pos);
  infoWindow.setContent(browserHasGeolocation ?
                        'Error: The Geolocation service failed.' :
                        'Error: Your browser doesn\'t support geolocation.');
}