/**
 * Created by Айрат on 25.03.2017.
 */
$(function () {
    var autocomplete1 = new google.maps.places.Autocomplete(document.getElementById('autocomplete1'), {
        language: 'ru',
        componentRestrictions: {country: 'ru'}
    });
    var autocomplete2 = new google.maps.places.Autocomplete(document.getElementById('autocomplete2'), {
        language: 'ru',
        componentRestrictions: {country: 'ru'}
    });
});