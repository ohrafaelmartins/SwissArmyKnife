<?php

$weekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

for ($year = 2017; $year < 2030; $year++){
	$date = date($year . '-11-25');
	$weekDaynumber = date('w', strtotime($date));

	$dates[$year]['Year'] = $year;
	$dates[$year]['Day of week'] = $weekDays[$weekDaynumber];
	
}

print_r($dates);
