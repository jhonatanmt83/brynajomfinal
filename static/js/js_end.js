
$(window).scroll(function(){
    var alto_scroll = $(window).scrollTop();
    if( alto_scroll > 0 && alto_scroll <= 240) {
        $( ".navbar-inner" ).addClass( "opacity_bajo" );
        $( ".color_degradado2" ).removeClass( "opacity_bajo" );
    }else{
        $( ".navbar-inner" ).removeClass( "opacity_bajo" );
    }
});
//$('#myModal').modal('show');