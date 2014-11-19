// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require bootstrap
//= require_tree .
//= require_self

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});
	})(jQuery);
}
function initHandlers() {

    jQuery("#send-btn").click(function(){
        userName=$("#user_name").val();
        userPhone=$("#user_phone").val();
        comment=$("#comment").val();
        city=$("#city_id").val();

        if ( userName==null || userName=='' || userPhone==null || userPhone=='' )  {
            // show error
            $('#send-alert-err').show();
            $('#send-alert-suc').hide();
        } else {
            // submit ajax
            $.post("main/intent",{userName:userName,phone:userPhone,city_id:city,comment:comment},
                function(data){
                $('#send-alert-suc').show();
                $('#send-alert-err').hide();
            });
        }
    });

    jQuery("#calc-btn").click(function(){
        var service = new google.maps.DistanceMatrixService();
        function callback(response, status){
            var distance=response.rows[0].elements[0].distance.value;
            window.alert(distance);
        }
        service.getDistanceMatrix(
            {
                origins: ['Москва'],
                destinations: ['Вышний Волочек'],
                travelMode: google.maps.TravelMode.DRIVING,
                unitSystem: google.maps.UnitSystem.METRIC,
                avoidHighways: false,
                avoidTolls: false
            }, callback);


        function calculateDistances() {
            var service = new google.maps.DistanceMatrixService();
            window.alert("suka");
            function callback(response, status){
                 window.alert(response);
            }
            service.getDistanceMatrix(
                {
                    origins: ['Москва'],
                    destinations: ['Казань'],
                    travelMode: google.maps.TravelMode.DRIVING,
                    unitSystem: google.maps.UnitSystem.METRIC,
                    avoidHighways: false,
                    avoidTolls: false
                }, callback);


        }
    })



}


