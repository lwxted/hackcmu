<style>
	.navbar-static-top {
		margin-bottom: 19px;
	}

	.well {
		margin-top: 20px;
		margin-bottom: 30px;
	}

	#map-canvas {
		margin: 0;
		padding: 0;
	}

</style>

<!-- Main component for a primary marketing message or call to action -->
<div class="well clearfix">
	<div id="map-canvas"></div>
</div>

<script>
var map;
var gpsPosition = {};
function initialize() {
  var mapOptions = {
    zoom: 18,
    center: new google.maps.LatLng(40.443433899999995, -79.94290039999998),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  console.log("hi");
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);
}


</script>

<script>
	var currentLoc = new google.maps.Marker({
				map : map
			});
	
	$('html, body').css({
		'height' : '100%'
	});
	$("#map-canvas").css({
		'height' : '80%'
	});
	initialize();

	loadRestaurants(function(info){
		 var shape = {
      		coord: [1, 1, 1, 20, 18, 20, 18 , 1],
      		type: 'poly'
  		};

		var restWindows= {};
		var infoArr = new Array();
		var infowindow = new google.maps.InfoWindow();

		for ( i = 0; i < info.data.length; i++ )
		{
			infoArr[i] = '<div id="content">'+
	     		'<div id="siteNotice">'+
	      		'</div>'+
	      		'<h1 id="firstHeading" class="firstHeading">'+info.data[i].rest_name+'</h1>'+
	      		'<div id="bodyContent">'+
	      		'<p><b>Rating: </b>' +info.data[i].rating +' </br> <b>Open Time: </b>'+info.data[i].open_time +
	      		'</br><b>Close Time: </b>'+info.data[i].close_time+
	      		'</br><b>Introduction: </b>'+info.data[i]['description']+
	      		'</div>'+
	      		'</div>';
	      	var restName = info.data[i].rest_name;
			var LatLng = new google.maps.LatLng(info.data[i].lat_long.split(",")[0], info.data[i].lat_long.split(",")[1]);
			marker = new google.maps.Marker({
				position : LatLng,
				map : map,
				title: info.data[i].rest_name,
				shape: shape
			});
			
			google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
              infowindow.setContent(infoArr[i]);
              infowindow.open(map, marker);
            }
          })(marker, i));
		}
		
	},{});
	
	       geolocate(map,gpsPosition);
	 		currentLoc.setMap(null);
	 		currentLoc = new google.maps.Marker({
			position : gpsPosition[0],
			map : map
			});
	//setInterval(movement = geolocate(map,currentLoc,movement),2000);
	setInterval( function() {
	 		geolocate(map,gpsPosition);
	 		currentLoc.setMap(null);
	 		currentLoc = new google.maps.Marker({
			position : gpsPosition[0],
			map : map
			});
		},5000);
</script>

