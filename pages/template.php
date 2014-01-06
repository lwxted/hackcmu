<?php
session_start();
require_once ("includes.php");
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />

		<!-- Always force latest IE rendering engine (even in intranet) & Chrome Frame
		Remove this if you use the .htaccess -->
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

		<title><?php echo $_SESSION['title']; ?></title>
		<meta name="description" content=<?php echo $_SESSION['site-description'] ?> />
		<meta name="author" content="HACKATHON 2013" />

		<meta name="viewport" content="width=device-width; initial-scale=1.0" />

		<!-- Replace favicon.ico & apple-touch-icon.png in the root of your domain and delete these references -->
		<link rel="shortcut icon" href="/favicon.ico" />
		<link rel="apple-touch-icon" href="/apple-touch-icon.png" />
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=true"></script>

		
		<style>
			.details {
				display: inline-block;
			}

		</style>
	</head>

	<body>
		<div class="body-container">
			<?php
			require_once ("./navbar.php");
			?>
			
			<div id="body-content">
				
			</div>
			
			
		</div>
		
	</body>
	
	<script>
			$("#body-content").load("./<?php echo $_SESSION['page-body']; ?>".replace(" " , "+"), function() {});
	</script>
</html>
