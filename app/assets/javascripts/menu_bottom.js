$( document ).on('turbolinks:load', function() {

      $('.bottom_menu .tab1').on( 'click', function () {
            $('.bottom_menu .tab1').addClass('active_bottom_tab');
            $('.bottom_menu li:not(.tab1)').removeClass('active_bottom_tab');
      });

      $('.bottom_menu .tab2').on( 'click', function () {
            $('.bottom_menu .tab2').addClass('active_bottom_tab');
            $('.bottom_menu li:not(.tab2)').removeClass('active_bottom_tab');
      });

      $('.bottom_menu .tab3').on( 'click', function () {
            $('.bottom_menu .tab3').addClass('active_bottom_tab');
            $('.bottom_menu li:not(.tab3)').removeClass('active_bottom_tab');
      });

      $('.bottom_menu .tab4').on( 'click', function () {
            $('.bottom_menu .tab4').addClass('active_bottom_tab');
            $('.bottom_menu li:not(.tab4)').removeClass('active_bottom_tab');
      });

      $('.bottom_menu .tab5').on( 'click', function () {
            $('.bottom_menu .tab5').addClass('active_bottom_tab');
            $('.bottom_menu li:not(.tab5)').removeClass('active_bottom_tab');
      });

});
