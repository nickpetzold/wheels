import 'mapbox-gl/dist/mapbox-gl.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

const mapElement = document.getElementById('map');
const cards = document.querySelectorAll('.product');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb'
  });
    const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .addTo(map);
  })
   if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 0, padding: 75 })
  }
  const glMarker = []
  markers.forEach((marker) => {
    var popup = new mapboxgl.Popup({offset: 0})
    const mapMarker = new mapboxgl.Marker({color: "#60CD44"})
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup // add popups
      .setHTML(marker.infoWindow.content))
      .addTo(map);
     glMarker.push(mapMarker);


  cards.forEach((card, index) => {
    let removeMarker = glMarker[index];
    let marker = markers[index];

    card.addEventListener('click', () => {

      map.flyTo({
        center: [marker.lng, marker.lat-0.01],
        zoom:12,
        bearing:0,
        speed:2,
        curve:1
      })
    });

  });


document.getElementById("car-"+ marker.id).onclick = function(e) {
  if(this.dataset.opened == undefined || this.dataset.opened == "false") {
    this.setAttribute('data-opened', true)
        let popups = document.querySelectorAll('.mapboxgl-popup-content')
    popups.forEach((element) => {
      element.remove()
    })
    popup.addTo(map)
  } else if (this.dataset.opened == "true") {
    this.setAttribute('data-opened', false)
    popup.remove()
  }
}
  });
}


