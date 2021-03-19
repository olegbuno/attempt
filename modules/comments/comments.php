<?php
$res = mysqli_query($link,"SELECT * FROM `comments` ORDER BY `id`") or exit(mysqli_error());

if (mysqli_num_rows($res)) {
    $comments = '<h3>Коментарии о компании ('.mysqli_num_rows($res).'):</h3><br><div>';
    while ($row = mysqli_fetch_assoc($res)) {
        $comments.= '
            <div class="comment-block">
                <div class="comment-title">- '.htmlspecialchars($row['login']).'
                <span class="comment-title-date">'.$row['date'].'</span>
                </div>
                <div class="comment-body">'.nl2br(htmlspecialchars($row['content'])).'</div>
            </div>';
    }
    $comments.= '</div>';
} else {
    $comments = 'Нет записей';
}


// Обработка комментариев
if(isset($_POST['login'], $_POST['email'], $_POST['content'])) {
	$errors = [];
	if(empty($_POST['login'])) {
		$errors['login'] = 'Вы не заполнили логин';
	}
	if(empty($_POST['email']) || !filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
		$errors['email'] = 'Вы не заполнили email';
	}
	if(empty($_POST['content'])) {
		$errors['content'] = 'Вы не заполнили коментарий';
	}

	if(!count($errors)) {
		mysqli_query($link, "
			INSERT INTO `comments` SET
			`login` = '".mysqli_real_escape_string($link, $_POST['login'])."',
			`email` = '".mysqli_real_escape_string($link, $_POST['email'])."',
			`content` = '".mysqli_real_escape_string($link, $_POST['content'])."',
			`date` = NOW()
		") or exit(mysqli_error($link));

		$_SESSION['comok'] = 'OK';
		header("Location: /index.php?module=comments&page=comments");
		exit();
		// Выполняем какие-то действия
	}
}