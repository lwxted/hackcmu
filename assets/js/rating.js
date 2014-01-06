	function voteUp(e) {
		//yo great grandma
		var parent = $(e).parent().parent().parent();
		var name = parent.attr("name");

		if (parent.hasClass("restaurant")) {
			$.ajax("../ajax/s.php?f=rate_restaurant&name=" + parent.parent().attr("name") + "&rating=" + 5);
		} else if (parent.hasClass("food")) {
			var restaurant = parent.parent().attr("name");

			$.ajax({
				// Tweaking needed. 
				// 1. (rate_restaurant v/s rate_food)
				// 2. this.parent().name needs to be adjusted accordingly.
				url: "../ajax/s.php?f=rate_food&restaurant_name=" + restaurant + "&food_name=" + name + "&rating=" + 5,
				type: 'GET',
				dataType: 'json',
				timeout: 25000,
				success: function(data, textStatus, xhr) {
					// alert(data.data);
					var ratingCount = parent.children('.rating-count');

					ratingCount.text(String(parseFloat(data.data).toFixed(1)));
					ratingCount.css('background', 'rgba(102, 205, 0, .5)');
				},
				error: function(xhr, textStatus, errorThrown) {
					// Handling the failure.
				}
			});
		}
		// location.reload();

	}

	function voteDown(e) {
		console.log(e);
		 
		var parent = $(e).parent().parent().parent();
		var name = parent.attr("name");

		if (parent.hasClass("restaurant")) {
			$.ajax("../ajax/s.php?f=rate_restaurant&name=" + parent.parent().attr("name") + "&rating=" + 1);
		} else if (parent.hasClass("food")) {
			var restaurant = parent.parent().attr("name");

			$.ajax({
				// Tweaking needed. 
				// 1. (rate_restaurant v/s rate_food)
				// 2. this.parent().name needs to be adjusted accordingly.
				url: "../ajax/s.php?f=rate_food&restaurant_name=" + restaurant + "&food_name=" + name + "&rating=" + 1,
				type: 'GET',
				dataType: 'json',
				timeout: 25000,
				success: function(data, textStatus, xhr) {
					// alert(data.data);
					var ratingCount = parent.children('.rating-count');

					ratingCount.text(String(parseFloat(data.data).toFixed(1)));
					ratingCount.css('background', 'rgba(102, 205, 0, .5)');
				},
				error: function(xhr, textStatus, errorThrown) {
					// Handling the failure.
				}
			});
		}
		// location.reload();
	}



/*$(function(){
	$('.vote-up').click(function() {
		$.ajax({
			// Tweaking needed. 
			// 1. (rate_restaurant v/s rate_food)
			// 2. this.parent().name needs to be adjusted accordingly.
			url: '../ajax/s.php?f=rate_restaurant&name=' + this.parent().name + '&rating=5',
			type: 'GET',
			dataType: 'json',
			timeout: 25000,
			success: function(data, textStatus, xhr) {
				// Handling the sucess.
			},
			error: function(xhr, textStatus, errorThrown) {
				// Handling the failure.
			}
		});
	});

	$('.vote-down').click(function() {
		$.ajax({
			// Tweaking needed. 
			// 1. (rate_restaurant v/s rate_food)
			// 2. this.parent().name needs to be adjusted accordingly.
			url: '../ajax/s.php?f=rate_restaurant&name=' + this.parent().name + '&rating=1',
			type: 'GET',
			dataType: 'json',
			timeout: 25000,
			success: function(data, textStatus, xhr) {
				// Handling the sucess.
			},
			error: function(xhr, textStatus, errorThrown) {
				// Handling the failure.
			}
		});
	});
});*/