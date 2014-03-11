(function($) {
    $(document).ready(function($) {
        $('form').submit(function() {
            url = $('#id_video').val();
            var regExp = /^.*((youtu.be\/)|(v\/)|(\/u\/\w\/)|(embed\/)|(watch\?))\??v?=?([^#\&\?]*).*/;
            var match = url.match(regExp);
            if (match&&match[7].length==11){
                id_url = match[7];
                url_correcta = 'http://www.youtube.com/embed/'+id_url;
                $('#id_url').val(url_correcta);
                return true;
            }else{
                alert("Url incorrecta corriga porfavor");
                return false;
            }
        });
     });
})(django.jQuery)
