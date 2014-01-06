
function sl(element) {
	element.append("<div class=\"loading-icon\" style='text-align:center'>" + "<img src='../assets/img/loading.gif'/>" + "</div>");
}

function getColor(rating) {
	// return "rgb(" + (parseInt(255 - ((rating / 5.0) * 230))) + ",255,255)";
	return "rgb(255, 255, 255)";
}

function defaultRestaurantView(data) {

	if (data.idt == "idt_data") {
		$("#restaurant-list").addClass("thumbnails").html("");
		$("#restaurant-list").append(
			'<div class="teaser"> <blockquote><p>Come and enjoy food at one of the following dining locations.</p></blockquote></div>'
		);
		$("#restaurant-list").append(
			'<form style="float:right;" method="get" action="../search.php" class="form-inline" role="form">' +
			'  <div class="form-group">' +
			'    <input name="term" type="text" class="form-control search-util" id="search" placeholder="Search...">' +
			'    <input type="submit" style="width: 0; height:0; padding: 0; border:none;" hidefocus="true">' +
			'  </div>' +
			'</form>' 
			);
		for (d in data.data) {
			var name = data.data[d].rest_name;
			var lat = 1;
			//data.data[d].lat_lng.splice(",")[0];
			var longi = 0;
			//data.data[d].lat_lng.splice(",")[1];
			var rating = data.data[d].rating;
			var imgPath = data.data[d].image_path;

			$("#restaurant-list").append(printRestaurant(data.data[d]));	
		}
	}
}



function loadRestaurants(callback, constraints) {
	sl($("#restaurant-list"));
	constraints = typeof constraints !== 'undefined' ? constraints : {};
	callback = typeof callback !== 'undefined' ? callback : defaultRestaurantView;

	$.getJSON("../ajax/s.php", {
		f : "get_all_restaurants"
	}, callback);
}

function loadRestaurant(rest_name) {
	sl($("#restaurant"));
	$.getJSON("../ajax/s.php", "f=get_restaurant_info&name=" + rest_name, function(data) {
		if (data.idt != "idt_data") {
			return;
		}
		$.get("./vote-form.php", function(v) {
			voteForm = v;
			
			$("#restaurant").html(printRestaurant(data.data, voteForm));
		});
	});
}

function printRestaurant(datum, vote)
{
	//return "<div style='background-color:" + getColor(datum.rating) + " class='details' style='text-align:center'> <h3>" + datum.rest_name + "</h3> Rating: <bold>" +
	 //datum.rating + "</bold> <br/> " + datum.close_time + "-" + datum.open_time + "</div>";
	// var hours = "";
	// if (datum.open_time != undefined)
	// {
	// 	hours = datum.open_time + "-" + datum.close_time;
	// } 
	
	// var start = "<div";
	// var end = "<div/>";
	// if (vote == undefined)
	// {
	// 	return "<a href='../display_restaurant.php?name=" + datum.rest_name.replace(" ", "+") + 
	// 	"' style='background-color:" + getColor(datum.rating) + "' name=" + datum.rest_name.replace(" ", "+") + 
	// " class='list-group-item restaurant'>" + 
	// "<img style='height:70px; float:right' src='../assets/img/" + datum.image_path + "'/> " + 
	// "<div class='details'> <h4>" 
	// + datum.rest_name + "</h4>" + "Rated: " + datum.rating + " <br/> " + hours + "</div> </a>";
	// } 

	// return "<div style='background-color:" + getColor(datum.rating) + "' name=" + datum.rest_name.replace(" ", "+") + 
	// " class='list-group-item restaurant'>" + 
	// "<img style='height:70px; float:right' src='../assets/img/" + datum.image_path + "'/> " + 
	// "<a href='../display_restaurant.php?name=" + datum.rest_name.replace(" ", "+") + "'><div class='details'> <h4>" 
	// + datum.rest_name + "</h4>" + "Rated: " + datum.rating + " <br/> " + hours + "</div></a>" + vote + " </div>";
	if (datum.open_time < 1000) {
		datum.open_hours = '0' + String(datum.open_time);
	} else {
		datum.open_hours = String(datum.open_time);
	}

	if (datum.close_time < 1000) {
		datum.close_hours = '0' + String(datum.close_time);
	} else {
		datum.close_hours = String(datum.close_time);
	}

	if (datum.close_time == 0000) {
		datum.close_hours = '0000';
	}


	return '' +
				'<div class="provider-section">' +
					'<div class="provider-logo">' +
						'<div class="logo" style="background-image:url(../assets/img/' + datum.image_path + ')">' +
						'</div>' +
					'</div>'+
					'<div class="provider-info">' +
						'<div class="provider-name">'+
							'<a href="../display_restaurant.php?name=' + datum.rest_name.split(' ').join('+') + '">' + datum.rest_name + '</a>' +
						'</div>' +
						'<div class="provider-website">'+
							'<span class="label label-default">Rating</span>'+
							datum['rating']+
						'</div>'+
						'<div class="provider-website">'+
							'<span class="label label-default">Open</span>'+
							datum.open_hours+
						'</div>'+
						'<div class="provider-website">'+
							'<span class="label label-default">Close</span>'+
							datum.close_hours+
						'</div>'+
						'<div class="provider-website">'+
							'<span class="label label-default">Introduction</span>'+
							datum['description']+
						'</div>'+
					'</div>'+
				'</div>'+
			'';
}

function loadFoodItemsFromData(data, element) {
	sl(element);
	var voteForm;
	$.get("./vote-form.php", function(v) {
		voteForm = v;
		console.log(data);
		var oldCat = "";
		element.html("");

		for (d in data) {
			var cat = data[d].category;
			var item_name = data[d].item_name;
			var price = data[d].price;
			var rating = data[d].rating;

			if (cat != oldCat) {
				element.append("<span class='list-group-item-heading'><h4>" + "" + cat + "</h4></span>");
				oldCat = cat;
			}

			element.append(printElement(item_name, price, rating, voteForm));
		}
	});
}

function printElement(item_name, price, rating, voteForm)
{
	return $("<div " +  
	" style='position:relative; padding-left: 20px; padding-bottom: 15px; background-color:" + getColor(rating) + ";' class='list-group-item food'> " + "<h4>" + item_name 
	+ "</h4> Price: $" + price + " <br />Rating: <span class=\"rating-count\">" + String(parseFloat(rating).toFixed(1)) + "</span>" + voteForm + "</div>").attr("name", item_name);
}

function loadFoodItems(rest_name, filter) {
	$("#food-list").attr("name", rest_name).addClass("restaurant");
	sl($("#food-list"));

	var voteForm;
	$.get("./vote-form.php", function(data) {
		voteForm = data;
	});

	$("#food-list").html("");
	// $("#food-list").append(voteForm).append("<hr/>");
	var oldCat = "";
	$.getJSON("../ajax/s.php", "f=get_menu&name=" + rest_name, function(data) {

		if (data.idt == "idt_data") {

			for (d in data.data) {
				var cat = data.data[d].category;
				var item_name = data.data[d].item_name;
				var price = data.data[d].price;
				var rating = data.data[d].rating;

				if (cat != oldCat) {
					$("#food-list").append("<span class='list-group-item-heading'><h2 style=\"padding-bottom: 15px; padding-top: 15px\">" + "" + cat + "</h2></span>");
					oldCat = cat;
				}

				$("#food-list").append(printElement(item_name, price, rating, voteForm));
			}
		}
	});

}
