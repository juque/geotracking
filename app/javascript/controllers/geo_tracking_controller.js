import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="geo-tracking"
export default class extends Controller {

  static targets = [ 'lat', 'long' ];

  connect() {

    navigator.geolocation.getCurrentPosition(function(position) {
      this.latTarget.value = position.coords.latitude;
      this.longTarget.value = position.coords.longitude;
    }.bind(this));

  }

}
