document.addEventListener("turbolinks:load", function () {
    var pageYield = document.getElementById("yield");
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
        console.log(event.data.url);
        Turbolinks.visit(event.data.url);
    }, 500);
});