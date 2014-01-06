 <?php
	require_once('../initialize.php');
	// header('Content-Type: application/json; charset=utf-8');
	// header("Expires: on, 01 Jan 1970 00:00:00 GMT");
	// header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
	// header("Cache-Control: no-store, no-cache, must-revalidate");
	// header("Cache-Control: post-check=0, pre-check=0", false);
	// header("Pragma: no-cache");
	
	global $access;
	// Fallback to $_POST if $_GET returns nothing.
	$query = $_GET;
	if (empty($query)) {
		echo E::error(0001);
		exit;
	}
	switch ($query['f']) {
		/**
		 * f=get_all_restaurants
		 * 
		 * Takes no query.
		 * 
		 * Returns a JSON array, containing dictionaries,
		 * each of which encode the information of a single
		 * restaurant.
		 * 
		 * Format:
		 * [{
		 * 		'rest_name': (string) Name of restaurant,
		 *   	'lat_long': (string) Coordinate,
		 *    	'rating': (double) Rating
		 * }, 
		 * ...]
		 */
		case 'get_all_restaurants':
		{
			$result = $access->get_all_restaurants();
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$data_array = array();
			$count_of_results = mysqli_num_rows($result);
			for ($count = 0; $count < $count_of_results; $count ++) { 
				$id_array = $access->next_result($result);
				if (!empty($id_array)) {
					$image_path = strtolower(str_replace(" ", "_", str_replace("'", "", $id_array['rest_name']))) . '.gif';
					$bw_image_path = strtolower(str_replace(" ", "_", str_replace("'", "", $id_array['rest_name']))) . '_bw.gif';
					$id_array['image_path'] = $image_path;
					$id_array['bw_image_path'] = $bw_image_path;
					$data_array[] = $id_array;
				}
			}
			if (empty($data_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($data_array);
			exit;
		}
			break;
		
		/**
		 * f=get_restaurant_info
		 * 
		 * Takes 1 query.
		 * name=restaurant_name
		 * 
		 * Returns a JSON array, containing of a single dictionary,
		 * which encodes the information of a single restaurant.
		 * 
		 * Format:
		 * {
		 * 		'rest_name': (string) Name of restaurant,
		 *   	'lat_long': (string) Coordinate,
		 *    	'rating': (double) Rating
		 * }
		 */
		case 'get_restaurant_info':
		{
			$restaurant_name = $query['name'];
			$result = $access->get_restaurant_info($restaurant_name);
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$id_array = $access->next_result($result);
			if (empty($id_array)) {
				echo E::error(0001);
				exit;
			}
			$image_path = strtolower(str_replace(' ', '_', $id_array['rest_name'])) . '.gif';
			$bw_image_path = strtolower(str_replace(' ', '_', $id_array['rest_name'])) . '_bw.gif';
			$id_array['image_path'] = $image_path;
			$id_array['bw_image_path'] = $bw_image_path;
			$data_array[] = $id_array;
			echo E::data($id_array);
			exit;
		}
			break;

		/**
		 * f=get_menu
		 * 
		 * Takes 1 query.
		 * name=restaurant_name
		 * 
		 * Returns a JSON array, containing dictionaries,
		 * each of which encode the information of a single
		 * food item.
		 * 
		 * Format:
		 * [{
		 * 		'rest_name': (string) Name of restaurant,
		 *   	'item_name': (string) Name of the food item,
		 *    	'rating': (double) Rating of the food,
		 *     	'price': (double) Price of the food,
		 *     	'num_votes': (int) Number of votes made
		 * }, 
		 * ...]
		 */
		case 'get_menu':
		{
			$restaurant_name = $query['name'];
			$result = $access->get_menu($restaurant_name);
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$data_array = array();
			$count_of_results = mysqli_num_rows($result);
			for ($count = 0; $count < $count_of_results; $count ++) { 
				$id_array = $access->next_result($result);
				if (!empty($id_array)) {
					$data_array[] = $id_array;
				}
			}
			if (empty($data_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($data_array);
			exit;
		}
			break;

		/**
		 * f=get_food_info
		 * 
		 * Takes 2 queries.
		 * restaurant_name=restaurant_name
		 * food_name=food_name
		 * 
		 * Returns a JSON array, containing of a single dictionary,
		 * which encodes the information of a single restaurant.
		 * 
		 * Format:
		 * {
		 *   	'item_name': (string) Name of the food item,
		 *    	'rating': (double) Rating of the food,
		 *     	'price': (double) Price of the food,
		 *     	'num_votes': (int) Number of votes made
		 * }
		 */
		case 'get_food_info':
		{
			$restaurant_name = $query['restaurant_name'];
			$food_name = $query['food_name'];
			$result = $access->get_food_info($restaurant_name, $food_name);
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$id_array = $access->next_result($result);
			if (empty($id_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($id_array);
			exit;
		}
			break;

		/**
		 * f=rate_restaurant
		 * 
		 * Takes 2 queries.
		 * name=restaurant_name
		 * rating=rating
		 * 
		 * Returns a success or a failure.
		 */
		case 'rate_restaurant':
		{
			$restaurant_name = $query['name'];
			$rating = $query['rating'];
			$result = $access->rate_restaurant($restaurant_name, $rating);
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$result = $access->get_restaurant_info($restaurant_name);
			$id_array = $access->next_result($result);
			if (empty($id_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($id_array['rating']);
			exit;
		}
			break;


		/**
		 * f=rate_food
		 * 
		 * Takes 3 queries.
		 * restaurant_name=restaurant_name
		 * food_name=food_name
		 * rating=rating
		 * 
		 * Returns a success or a failure.
		 */
		case 'rate_food':
		{
			$food_name = $query['food_name'];
			$restaurant_name = $query['restaurant_name'];
			$rating = $query['rating'];
			$result = $access->rate_food($restaurant_name, $food_name, $rating);
			if ($result === FALSE) {
				echo E::error(0001);
				exit;
			}
			$result = $access->get_food_info($restaurant_name, $food_name);
			$id_array = $access->next_result($result);
			if (empty($id_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($id_array['rating']);
			exit;
		}
			break;

		/**
		 * f=search_food
		 * 
		 * Takes 1 query.
		 * name=food_name
		 * 
		 * Returns a list of search result
		 */

		case 'search_food':
		{
			$food_name = $query['name'];
			$result = $access->search_food($food_name);
			
			$data_array = array();
			$count_of_results = mysqli_num_rows($result);
			for ($count = 0; $count < $count_of_results; $count ++) { 
				$id_array = $access->next_result($result);
				if (!empty($id_array)) {
					$data_array[] = $id_array;
				}
			}
			if (empty($data_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($data_array);
			exit;
		}
			break;

		/**
		 * f=search_restaurant
		 * 
		 * Takes 1 query.
		 * name=restaurant_name
		 * 
		 * Returns a list of search result
		 */

		case 'search_restaurant':
		{
			$rest_name = $query['name'];
			$result = $access->search_restaurant($rest_name);
			
			$data_array = array();
			$count_of_results = mysqli_num_rows($result);
			for ($count = 0; $count < $count_of_results; $count ++) { 
				$id_array = $access->next_result($result);
				if (!empty($id_array)) {
					$data_array[] = $id_array;
				}
			}
			if (empty($data_array)) {
				echo E::error(0001);
				exit;
			}
			echo E::data($data_array);
			exit;
		}
			break;

		default:
		{
			echo E::error(0001);
			exit;
		}
			break;
	}