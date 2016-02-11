$(document).ready(function() {
    
    
    /* For the sticky navigation */
    $('.js--section-author').waypoint(function(direction) {
        if (direction == "down") {
            $('nav').addClass('sticky');
        } else {
            $('nav').removeClass('sticky');
        }
    }, {
      offset: '60px;'
    });

    /* Scroll on buttons */
    $('.js--scroll-to-order').click(function () {
       $('html, body').animate({scrollTop: $('.js--section-order').offset().top}, 1000); 
    });

    $('.js--scroll-to-fan-pics').click(function () {
       $('html, body').animate({scrollTop: $('.js--fan-pics').offset().top}, 1000); 
    });

    $('.js--scroll-to-author').click(function () {
       $('html, body').animate({scrollTop: $('.js--section-author').offset().top}, 1000); 
    });

    $('.js--scroll-to-main-nav').click(function () {
       $('html, body').animate({scrollTop: $('.js--top').offset().top}, 1000); 
    });

    $('.js--scroll-to-book').click(function () {
       $('html, body').animate({scrollTop: $('.js--section-order').offset().top}, 1000); 
    });
    

    $('.js--scroll-to-contact').click(function () {
       $('html, body').animate({scrollTop: $('.js--section-contact').offset().top}, 1000); 
    });   
    
    /* Navigation scroll */
    $(function() {
      $('a[href*=#]:not([href=#])').click(function() {
        if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
          if (target.length) {
            $('html,body').animate({
              scrollTop: target.offset().top
            }, 1000);
            return false;
          }
        }
      });
    });

     /* Animations on scroll */
    $('.js--wp-1').waypoint(function(direction) {
        $('.js--wp-1').addClass('animated fadeIn');
    }, {
        offset: '95%'
    });
    
    $('.js--wp-2').waypoint(function(direction) {
        $('.js--wp-2').addClass('animated fadeInUp');
    }, {
        offset: '100%'
    });
    
    $('.js--wp-3').waypoint(function(direction) {
        $('.js--wp-3').addClass('animated fadeIn');
    }, {
        offset: '95%'
    });
    
    $('.js--wp-4').waypoint(function(direction) {
        $('.js--wp-4').addClass('animated pulse');
    }, {
        offset: '95%'
    });

});