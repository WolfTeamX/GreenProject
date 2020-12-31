const Tobii = require("../../../node_modules/tobii/dist/js/tobii");

document.addEventListener("turbolinks:load", function () {
    var gallery = document.getElementById("gallery");

    if(gallery) {
        window.tobii = new Tobii({
            captions: true
        });

    }

    if ($('#infinite-scrolling')) {
        $(window).on('scroll', function() {
            var more_posts_url;
            more_posts_url = $('.pagination .next_page').attr('href');
            if (more_posts_url && $('#infinite-scrolling').inView() && $.active === 0) {
                $.getScript(more_posts_url);
            }
        });
    }
});
