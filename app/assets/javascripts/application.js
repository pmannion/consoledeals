// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {
    $("#giftsearch_max_spend").slider({
        min: 1,
        max: 10,
        values: [ 6 ],
        step: 0.5,
        slide: function(event, ui) {
            $(this).next('input').val(ui.value);
            $(this).parent().find('span.slider-value').html(ui.value);
        }
    });
});