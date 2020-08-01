var displayLoader = false;
var submit = false;
var lastVisitedPage = "";

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
    if(pageYield.classList.contains("fading") && !submit)
        return;

    event.preventDefault();
    if(lastVisitedPage === event.data.url && !submit)
        return;

    if(!pageYield.classList.contains("fading")) {
        pageYield.classList.add("fading");
    }
    submit = false;
    setTimeout(function () {
        Turbolinks.visit(event.data.url);
        lastVisitedPage = event.data.url;
        showLoader(false);
    }, 500);
});

function showLoader(delay) {
    let timeout = delay ? 600 : 300;
    displayLoader = true;
    setTimeout(function () {
        var loader = document.getElementById("css-loader");
        if(!loader.classList.contains("loader-show") && displayLoader) {
            loader.classList.add("loader-show");
            window.scrollTo(0,0);
        }
    }, timeout)
}

document.addEventListener("turbolinks:load", function (event) {
    var admin = document.getElementsByClassName("admin-edit");
    var pageYield = document.getElementById("yield");

    if (admin) {
        $('input[type="submit"]:not(.contact-submit)').on("click", function () {
            if(!pageYield.classList.contains("fading")){
                pageYield.classList.add("fading");
                lastVisitedPage = event.data.url;
                submit = true;
                showLoader(true);
            }
        })
    }
});