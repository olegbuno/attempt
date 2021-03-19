<?php
if (isset($_GET['link'])) {
    $link = $_GET['link'];
    $directory = '/IT/OSPanel/domains/loc.attempt.com/modules/manager'.$link;
    $scanned_directory = array_diff(scandir($directory), array('..', '.'));
} else {
    $directory = '/IT/OSPanel/domains/loc.attempt.com/modules/manager';
    $scanned_directory = array_diff(scandir($directory), array('..', '.'));
}