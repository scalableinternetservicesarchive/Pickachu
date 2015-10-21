var map;
// function initMap() {
//   map = new google.maps.Map(document.getElementById('map-canvas'), {
//     center: {lat: -34.397, lng: 150.644},
//     zoom: 8
//   });
// }
// function initialize() {
//   var mapOptions = {
//       center: new google.maps.LatLng(34.067, -118.445),
//       zoom: 15,
//       mapTypeId: google.maps.MapTypeId.ROADMAP
//   };
//   map = new google.maps.Map(document.getElementById("map_canvas"),
//   mapOptions);
// }


function initialize() {
  // var mapOptions = {
  //     center: new google.maps.LatLng(notes[0].latitude, notes[0].longitude),
  //     zoom: 8
  // };
  // var map = new google.maps.Map(document.getElementById('map-canvas'),
      // mapOptions);

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
}