<?php
error_reporting(-1);
ini_set('display_errors',1);
header('Content-Type: text/html; charset=utf-8');
session_start();

// Конфиг сайта
include_once './config.php';
include_once './libs/default.php';
include_once './variables.php';

// Роутер
$link = mysqli_connect(DB_LOCAL,DB_LOGIN,DB_PASS,DB_NAME);
mysqli_set_charset($link,'utf8');


include './modules/'.$_GET['module'].'/'.$_GET['page'].'.php';
include './skins/'.SKIN.'/index.tpl';
