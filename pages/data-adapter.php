<?php

if (isset($_POST)) {
	
	$arr = [];
	for ($i = 0, $j = 0; $i < 10; $i +=2, $j++) {
		$arr[$i / 2] =  ($_POST["rb" . $i] + $_POST["rb" . ($i + 1)]) / 2;
	}
	header('Location: /');
}

?>