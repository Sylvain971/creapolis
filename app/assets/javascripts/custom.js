$(document).ready(function(){

$('.user_tabs .tab1').on( 'click', function () {
    $('.artist_artworks_pictures').hide()
    $('.user_map').hide()
    $('.user_pictures').show()
});
$('.user_tabs .tab2').on( 'click', function () {
    $('.artist_artworks_pictures').hide()
    $('.user_pictures').hide()
    $('.user_map').show()
});

$('.user_tabs .tab0').on( 'click', function () {
    $('.user_pictures').hide()
    $('.user_map').hide()
    $('.artist_artworks_pictures').show()
});

});
