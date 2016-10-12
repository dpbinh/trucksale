/*=============================================================
    Authour URL: www.designbootstrap.com
    
    http://www.designbootstrap.com/

    License: MIT

    http://opensource.org/licenses/MIT

    100% Free To use For Personal And Commercial Use.

    IN EXCHANGE JUST TELL PEOPLE ABOUT THIS WEBSITE
   
========================================================  */

$(document).ready(function () {

/*====================================
SCROLLING SCRIPTS
======================================*/

/*====================================
SLIDER SCRIPTS
======================================*/


$('#carousel-slider').carousel({
interval: 2000 //TIME IN MILLI SECONDS
});


/*====================================
VAGAS SLIDESHOW SCRIPTS
======================================*/
$.vegas('slideshow', {
backgrounds: [
{ src: 'static/img/1.jpg', fade: 1000, delay: 9000 },
{ src: 'static/img/2.jpg', fade: 1000, delay: 9000 },
{ src: 'static/img/3.jpg', fade: 1000, delay: 9000 },
{ src: 'static/img/4.jpg', fade: 1000, delay: 9000 },
{ src: 'static/img/5.jpg', fade: 1000, delay: 9000 },
{ src: 'static/img/6.jpg', fade: 1000, delay: 9000 },
]
})('overlay', {
/** SLIDESHOW OVERLAY IMAGE **/
src: 'static/js/vegas/overlays/06.png' // THERE ARE TOTAL 01 TO 15 .png IMAGES AT THE PATH GIVEN, WHICH YOU CAN USE HERE
});
 



});
