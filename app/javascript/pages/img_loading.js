document.addEventListener("turbolinks:load", function () {
 let images = document.getElementsByTagName('img');

 for (let i = 0; i < images.length; i++) {
  if(images[i].complete) {
   removeImageOpacity(images[i]);
   continue;
  }
  images[i].addEventListener('load', function() {
    removeImageOpacity(images[i]);
  });
 }
});

function removeImageOpacity(image) {
 image.classList.add("no-opacity");
}