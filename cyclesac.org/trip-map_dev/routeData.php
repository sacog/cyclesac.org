<?php

include_once('CoordFactory_dev.php');
include_once('TripFactory_dev.php');

if($_POST['t']=="get_coords_by_trip"){	
	$obj = new CoordFactory();	
	echo $obj->getAllCoordsByTrip($_POST['q']);
} else {
	//no-op
}

?>