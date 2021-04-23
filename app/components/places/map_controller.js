import { Controller } from "stimulus"
import mapboxgl from '!mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

export default class extends Controller {
  static targets = [ "container" ]

  connect() {
    mapboxgl.accessToken = this.containerTarget.dataset.mapboxApiKey;
    this.map = new mapboxgl.Map({
      container: this.containerTarget,
      style: 'mapbox://styles/mapbox/light-v10'
    });

    this.attachMarkers()
  }

  attachMarkers() {
    const markers = JSON.parse(this.containerTarget.dataset.markers)
    markers.forEach((marker) => {
      new mapboxgl.Marker(this.htmlToElement(marker.marker))
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map);
    });
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  }



  htmlToElement(html) {
    const template = document.createElement('template');
    html = html.trim(); // Never return a text node of whitespace as the result
    template.innerHTML = html;
    return template.content.firstChild;
  }
}
