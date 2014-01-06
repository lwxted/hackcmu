<?php

	/**
	* The Controller Class
	*/
	class Controller
	{
		function get_all_restaurants() {
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'restaurants',
				array(
					'rest_name',
					'lat_long',
					'rating',
					'open_time',
					'close_time',
					'description'
					)
				);
			return $result;
		}

		// function get_open_hours_of_restaurant ($rest_name){
		// 	global $dbo;
		// 	$result = $dbo->select(
		// 		TRUE,
		// 		open_hours,
		// 		array(
		// 			'rest_name',
		// 			'day',
		// 			'open_time',
		// 			'close_time',
		// 			),
		// 		array(
		// 			0 => array(
		// 				'name' => 'rest_name',
		// 				'value' => $rest_name
		// 				)
		// 			)
		// 		);
		// 	return $result;
		// }

		function get_restaurant_info($rest_name){
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'restaurants',
				array(
					'rest_name',
					'open_time',
					'close_time',
					'rating',
					'description',
					'lat_long',
					'num_votes'
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name
						)
					)
				);
			return $result;
		}

		function get_menu($rest_name){
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'menu_item',
				array(
					'rest_name',
					'category',
					'item_name',
					'price',
					'rating',
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name
						)
					),
				array(
					0 => array(
						'column_name' => 'category',
						'asc_desc' => 'ASC'
						)
					)
			);
			return $result;
		}


		function get_food_info($rest_name,$item_name){
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'menu_item',
				array(
					'rest_name',
					'category',
					'item_name',
					'price',
					'rating',
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name,
						'atype' => 'AND'
						),
					1 => array(
						'name' => 'item_name',
						'value' => $item_name
						)
					)
			);
			return $result;
		}

		function rate_restaurant($rest_name, $rating){
			global $dbo;
			$restautant_obj = array();
			$result = $dbo->select(
				TRUE,
				'restaurants',
				array(
					'rating',
					'num_votes'
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name
						)
					),
				null,
				1
				);
			if (!empty($result)) {
				$restautant_obj = $dbo->next_result($result);
			};
			mysqli_free_result($result);
			unset($result);

			$prev_rating = $restautant_obj['rating'];
			$num_votes = $restautant_obj['num_votes']+1;
			
			$result2 = $dbo->update(
				'restaurants',
				array(
					'rating' => ($prev_rating * ($num_votes - 1) + $rating) / floatval($num_votes),
					'num_votes' => $num_votes
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name
						)
					)
				);
			return $result2;
		}


		function rate_food($rest_name, $item_name, $rating){
			global $dbo;
			$food_obj = array();
			$result = $dbo->select(
				TRUE,
				'menu_item',
				array(
					'rating',
					'num_votes'
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name,
						'atype' => 'AND'
						),
					1 => array(
						'name' => 'item_name',
						'value' => $item_name
					)
					),
				null,
				1
				);
			if (!empty($result)) {
				$food_obj = $dbo->next_result($result);
			};
			mysqli_free_result($result);
			unset($result);

			$prev_rating = $food_obj['rating'];
			$num_votes = $food_obj['num_votes'] + 1;

			$result2 = $dbo->update(
				'menu_item',
				array(
					'rating' => ($prev_rating * ($num_votes - 1) + $rating) / floatval($num_votes),
					'num_votes' => $num_votes
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name,
						'atype' => 'AND'
						),
					1 => array(
						'name' => 'item_name',
						'value' => $item_name
						)
					)
				);
			return $result2;
		}

		function search_restaurant ($rest_name) {
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'restaurants',
				array(
					'rest_name',
					'open_time',
					'close_time',
					'rating',
					'description',
					'lat_long',
					'num_votes'
					),
				array(
					0 => array(
						'name' => 'rest_name',
						'value' => $rest_name,
						'regex' => '%@%',
						'ctype' => 'LIKE'
						)
					),
				array(
					0 => array(
						'column_name' => 'rating',
						'asc_desc' => 'desc'
						)
					)
				);
			return $result;
		}

		function search_food ($food_name) {
			global $dbo;
			$result = $dbo->select(
				TRUE,
				'menu_item',
				array(
					'rest_name',
					'category',
					'item_name',
					'price',
					'rating'
					),
				array(
					0 => array(
						'name' => 'item_name',
						'value' => $food_name,
						'regex' => '%@%',
						'ctype' => 'LIKE',
						'atype' => 'OR'
						),
					1 => array(
						'name' => 'category',
						'value' => $food_name,
						'regex' => '%@%',
						'ctype' => 'LIKE',
						)
					),
				array(
					0 => array(
						'column_name' => 'rating',
						'asc_desc' => 'desc'
						)
					)
				);
			return $result;
		}


		function next_result ($result, $resulttype = MYSQLI_ASSOC) {
			global $dbo;
			return $dbo->next_result($result);
		}


	}

?>