

// Sticky navbar
// =========================
$(function () {
    var $nav = $(".main-menu");
    $nav.toggleClass('scrolled',$(this).scrollTop() > $nav.height());
    $(document).scroll(function () {
        $nav.toggleClass('scrolled',$(this).scrollTop() > $nav.height());
    });
});