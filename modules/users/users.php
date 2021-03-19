<?php
$res = mysqli_query($link,"SELECT * FROM `users` ORDER BY `id`") or exit(mysqli_error());

if (mysqli_num_rows($res)) {
    $users = '<b class="size20">Всего у нас на сайте ' . mysqli_num_rows($res) . ' пользователей. А именно:</b>
    <div class="text-left"><br>
    <ul>';
    $i = 0;
    while ($row = mysqli_fetch_assoc($res)) {
        $users.= '<li>' . ++$i . '. ' . htmlspecialchars($row['login']) . '</li>';
    }
    $users.= '</ul></div>';
} else {
    $users = 'Нет записей';
}

