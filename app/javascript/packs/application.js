// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

require("../../javascript/pages/main_page");
require("../../javascript/pages/turbolinks-fade");
const Tobii = require("../../../node_modules/tobii/dist/js/tobii");

require("trix");
require("@rails/actiontext");

document.addEventListener("turbolinks:load", function () {
    var gallery = document.getElementById("gallery");

    if(gallery) {
        const tobii = new Tobii();
        console.log("Loading?");
    }
});
