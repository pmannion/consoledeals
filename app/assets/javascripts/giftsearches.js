$(document).ready(function(){
    $("#product_form").keyup(function(){
        $.post($(this).attr('action'), $(this).serialize(), null,'script');
        return false;

    });
})