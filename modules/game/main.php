<?php
if (!isset($_SESSION['client'])) {
    $_SESSION['client'] = 10;
    $_SESSION['server'] = 10;
} else {
    $random = rand(1,3);
    if (!empty($_POST['num']) && $_POST['num'] == $random) {
        $client = rand(1,4);
        $_SESSION['client'] = $_SESSION['client'] - $client;
    } elseif (!empty($_POST['num']) && $_POST['num'] !== $random) {
        $server = rand(1,4);
        $_SESSION['server'] = $_SESSION['server'] - $server;
    }
}

if ($_SESSION['client'] <= 0) {
    session_unset();
    header("Location: /index.php?module=game&page=lost");
    exit();
}
if ($_SESSION['server'] <= 0) {
    session_unset();
    header("Location: /index.php?module=game&page=won");
    exit();
}
