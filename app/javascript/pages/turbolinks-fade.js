var displayLoader = false;

document.addEventListener("turbolinks:load", function () {
    var pageYield = document.getElementById("yield");
    var loader = document.getElementById("css-loader");
    displayLoader = false;
    loader.classList.remove("loader-show");
    setTimeout(function () {
        pageYield.classList.remove("fading");
    }, 50)
});

document.addEventListener("turbolinks:before-visit", function (event) {
    var pageYield = document.getElementById("yield");
    if(pageYield.classList.contains("fading"))
        return;

    event.preventDefault();
    pageYield.classList.add("fading");
    setTimeout(function () {
        Turbolinks.visit(event.data.url);
        displayLoader = true;
        setTimeout(function () {
            var loader = document.getElementById("css-loader");
            if(!loader.classList.contains("loader-show") && displayLoader) {
                loader.classList.add("loader-show");
            }
        }, 300)
    }, 500);
});