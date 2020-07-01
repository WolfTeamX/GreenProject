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
        setTimeout(showSlides, 7000); // Change image every 2 seconds
    }

    /*var gallery = document.getElementById("gallery");

    if(gallery)
    {
        function openModal() {
            document.getElementById("gallery-modal").style.display = "block";
        }

        function closeModal() {
            document.getElementById("gallery-modal").style.display = "none";
        }

        function plusSlides(n) {
            showGallerySlides(slide += n);
        }

        function setSlide(n) {
            showGallerySlides(slide = n);
        }

        var slides = Array.from(document.getElementsByClassName("gallerySlides")).reverse();

        function showGallerySlides(n) {
            var i;
            if (n > slides.length) { slide = 1; }
            if (n < 1) { slide = slides.length; }
            for (i = 0; i < slides.length; i++) { slides[i].style.display = "none"; }
            slides[slide-1].style.display = "block";
        }

        var slide = 1;
        showGallerySlides(slide);

        var images = [];
        var children = Array.from(gallery.children);
        children.forEach(function(child) {
            var subChildren = Array.from(child.children);
            subChildren.forEach(function(subChild) {
                images.push(subChild.getElementsByTagName('img')[0]);
            });
        });

        if(images.length > 0)
        {
            images.forEach(function(child){
                child.addEventListener("click", function () {
                    openModal();
                    console.log(images.indexOf(child)+1);
                    setSlide(images.indexOf(child)+1);
                });
            });
        }

        var previous = document.getElementById("previous-slide");
        var next = document.getElementById("next-slide");

        previous.addEventListener("click", function () {
            plusSlides(-1);
        });
        next.addEventListener("click", function () {
            plusSlides(1);
        });

        var close = document.getElementById("close-modal");

        close.addEventListener("click", function () {
            closeModal();
        });
    }*/

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
});