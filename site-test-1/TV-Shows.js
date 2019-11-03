var main = function() {
    $('.btn').addClass('disabled');
    
    $('.name-box').keyup(function() {
        var text = $(this).val().length;
        
        if(text >= 1) {
            $(this).addClass('background');
            $('.btn').removeClass('disabled');
        }
        else if(text == 0) {
            $(this).removeClass('background');
            $('.btn').addClass('disabled');
        };
    });
    
    $('.btn').click(function() {
        var name = $('.name-box').val();

        $('.name-box').val('');
        $(this).addClass('disabled');
        $('.name-box').removeClass('background');
        $('<li>').text(name).prependTo('.shows');    
    });
};

$(document).ready(main);