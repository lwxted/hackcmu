function createMarker(map, restData) {
	var LatLng = new google.maps.LatLng(restData['lat_long'].splice(",")[0], restData['lat_long'].splice(",")[1]);
	var marker = new google.maps.Marker({
		position : LatLng,
		map : map,
		title : restData['rest_name']
	});

}

function geolocate(map,gpsPosition) {
	var location = null;
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
		initialLocation = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
			//alert("your coordinates are: " + initialLocation);
			gpsPosition[0] = initialLocation;
		}, function() {
			alert("GPS Service Failed");
		});
	} else {
		alert("GPS Not Supported");
	}

}
