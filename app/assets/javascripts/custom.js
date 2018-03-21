$( document ).on('turbolinks:load', function() {


$('.user_tabs .tab1').on( 'click', function () {
      $('.artist_artworks_pictures').hide();
      $('.user_map').hide();
      $('.user_pictures').show();
      $('.user_tabs .tab1').addClass('active_tab');
      $('.user_tabs li:not(.tab1)').removeClass('active_tab');
});

$('.user_tabs .tab2').on( 'click', function () {
      $('.artist_artworks_pictures').hide();
      $('.user_pictures').hide();
      $('.user_map').show();
      $('.user_tabs .tab2').addClass('active_tab');
      $('.user_tabs li:not(.tab2)').removeClass('active_tab');
});

$('.user_tabs .tab0').on( 'click', function () {
      $('.user_pictures').hide();
      $('.user_map').hide();
      $('.artist_artworks_pictures').show();
      $('.user_tabs .tab0').addClass('active_tab');
      $('.user_tabs li:not(.tab0)').removeClass('active_tab');

});

// // If the user clicks on the background, the form is hidden
//     $(".background-new-form").on("click", function(){
//       $(".background-new-form").hide();
//       $(".popup-form").hide();
//     });

});
  

function getLocation(){
  navigator.geolocation.watchPosition(locationFound, locationFailed, {
  enableHighAccuracy: false,
  timeout: 5000,
  maximumAge: 0
});
}

function locationFound(position){
  sessionStorage.setItem("lat", position.coords.latitude);
  sessionStorage.setItem("lng", position.coords.longitude);
  console.log(sessionStorage.getItem('lat')+ ", " + sessionStorage.getItem('lng'));
}

function locationFailed(position){
  if (sessionStorage.getItem('lat') === null){
    alert("Merci d'activer votre géolocalisation !")
  };
} 




