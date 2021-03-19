<?php

// Обработка авторизации
if(isset($_POST['login'],$_POST['email'],$_POST['password'])) {

    // Вытаскиваем из БД запись, у которой логин равняеться введенному
    $query = mysqli_query($link,"SELECT login, password, email FROM users WHERE login='".mysqli_real_escape_string($link,$_POST['login'])."' LIMIT 1");
    $data = mysqli_fetch_assoc($query);

    // Ставим куки если пароль и почта верные
    if($data['password'] === $_POST['password'] && $data['email'] == $_POST['email']) {
        setcookie('access',1,time()+3600,'loc.house.com');
        $_COOKIE['access'] = 1;
    }
    $errors = array();
    if ($data['login'] !== $_POST['login']) {
        $errors['login'] = 'Неверный логин';
    } if ($data['password'] !== $_POST['password']) {
        $errors['password'] = 'Неверный пароль';
    } if ($data['email'] !== $_POST['email']) {
        $errors['email'] = 'Неверный E-mail';
    }
    if(empty($_POST['login'])) {
        $errors['login'] = 'Вы не заполнили логин';
    }
    if(empty($_POST['password'])) {
        $errors['password'] = 'Вы не заполнили пароль';
    }
    if(empty($_POST['email']) || !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL)) {
        $errors['email'] = 'Вы не заполнили email';
    }

}