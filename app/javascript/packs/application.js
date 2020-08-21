// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
// import { bookingprice } from 'bookingprice';

const end = document.querySelector("#booking_end_date");
    if (end) {
    end.addEventListener("change", (event) => {
      const start = document.querySelector("#booking_start_date");
      const price = document.querySelector(".pricefield");
      const end = document.querySelector("#booking_end_date");
      const dateStart = new Date(start.value);
      const dateEnd = new Date(end.value);
      const days = parseInt((dateEnd - dateStart)/86400000)
      const initprice = document.querySelector(".card-trip-pricing");
      const dayprice = parseInt(initprice.innerText.split(" ")[0])
      const sum = dayprice * days
      price.innerText = sum + " €"
    });
  };

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initMapbox } from '../plugins/init_mapbox';

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
})

