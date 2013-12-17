$(document).ready(function(){
    $("#product_form").submit(function(){
        $.post($(this).attr('action'), $(this).serialize(), null,'script');
        return false;

    });
})