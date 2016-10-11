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
{ src: 'assets/img/1.jpg', fade: 1000, delay: 9000 },
{ src: 'assets/img/2.jpg', fade: 1000, delay: 9000 },
{ src: 'assets/img/3.jpg', fade: 1000, delay: 9000 },
{ src: 'assets/img/4.jpg', fade: 1000, delay: 9000 },
{ src: 'assets/img/5.jpg', fade: 1000, delay: 9000 },
{ src: 'assets/img/6.jpg', fade: 1000, delay: 9000 },
]
})('overlay', {
/** SLIDESHOW OVERLAY IMAGE **/
src: 'assets/js/vegas/overlays/06.png' // THERE ARE TOTAL 01 TO 15 .png IMAGES AT THE PATH GIVEN, WHICH YOU CAN USE HERE
});
 



});
