$(document).ready(function(){

$('.user_tabs .tab1').on( 'click', function () {
    $('.user_map').hide()
    $('.user_pictures').show()
});
$('.user_tabs .tab2').on( 'click', function () {
    $('.user_pictures').hide()
    $('.user_map').show()
});


});
