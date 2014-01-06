<div class="teaser"> <blockquote><p>Go and grab your favorite food!</p></blockquote></div>

<div id="food-list">
	
</div>

<script>
	$.get("../ajax/s.php?f=search_food&name=" + "<?php echo $_GET['term']; ?>", function(obj)
	{
		console.log(obj);
		console.log(obj.data);
		console.log(JSON.parse(obj).data);
		
		
		loadFoodItemsFromData(JSON.parse(obj).data, $("#food-list"));	
	});
	
</script>