$( document ).on('turbolinks:load', function() {


  $('.user_tabs .tab1').on( 'click', function () {
        $('.artist_artworks_pictures').hide();
        $('.user_map').hide();
        $('.user_pictures').show();
        $('.user_tabs .tab1').addClass('active_tab');
        $('.user_tabs li:not(.tab1)').removeClass('active_tab');
        $(".popup-container").hide();

        $('.user_tabs').css("height","80px")
        $('#map_user').css("height","54vh");
        $('.count-items').show();
  });

  $('.user_tabs .tab2').on( 'click', function () {
        $('.artist_artworks_pictures').hide();
        $('.user_pictures').hide();
        
        $('.count-items').hide();
        $('.user_tabs').css("height","8vh")
        $('.user_tabs').css("min-height","8vh")
        $('#map_user').css("height","63vh");
        $('.user_map').show();

        $('.user_tabs .tab2').addClass('active_tab');
        $('.user_tabs li:not(.tab2)').removeClass('active_tab');
        map._onResize();
  });

  $('.user_tabs .tab0').on( 'click', function () {
        $('.user_pictures').hide();
        $('.user_map').hide();
        $('.artist_artworks_pictures').show();
        $('.user_tabs .tab0').addClass('active_tab');
        $('.user_tabs li:not(.tab0)').removeClass('active_tab');
        $(".popup-container").hide();

        $('.user_tabs').css("height","80px")
        $('#map_user').css("height","54vh");
        $('.count-items').show();


  });
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


