
<div id="restaurant" class="provider-list clearfix">

</div>

<div id="food-list">
	
</div>

<script>
	console.log("in body");
	loadRestaurant("<?php echo $_GET['name']; ?>");
	loadFoodItems("<?php echo $_GET['name']; ?>", {});
</script>