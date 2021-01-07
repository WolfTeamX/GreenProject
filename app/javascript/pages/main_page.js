Turbolinks.setProgressBarDelay(1);

document.addEventListener("turbolinks:load", function () {
    var slideIndex = 0;
    showSlides();

    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("slide");
        var dots = document.getElementsByClassName("dot");

        if(slides.length === 0 || dots.length === 0)
            return;

        for (i = 0; i < slides.length; i++) {
            if(!slides[i].classList.contains("transparent"))
            {
                slides[i].classList.add("transparent");
            }
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex-1].classList.remove("transparent");
        dots[slideIndex-1].className += " active";
        setTimeout(showSlides, 10000); // Change image every 10 seconds
    }

    var arrow = document.getElementById("scroll-arrow");

    if(arrow)
    {
        arrow.onclick = function () {
            var target = document.getElementById("scroll-target");
            if(target)
            {
                target.scrollIntoView({ behavior: 'smooth', inline: 'start'});
            }
        }
    }

    let errorNotice = document.getElementById("error-notice");

    if (errorNotice) {
        setInterval(function() {
            errorNotice.classList.add("hidden");
        }, 4000);
    }
});