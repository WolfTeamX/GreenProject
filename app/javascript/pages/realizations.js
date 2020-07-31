const Tobii = require("../../../node_modules/tobii/dist/js/tobii");

$.fn.inView = function(){
    var rect = this[0].getBoundingClientRect();
    return (
        rect.top >= 0 &&
        rect.left >= 0 &&
        rect.bottom <= (window.innerHeight || document.documentElement.clientHeight) &&
        rect.right <= (window.innerWidth || document.documentElement.clientWidth)
    );

};

document.addEventListener("turbolinks:load", function () {
    var gallery = document.getElementById("gallery");

    if(gallery) {
        window.tobii = new Tobii();
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
