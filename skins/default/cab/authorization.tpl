<div class="center2">
    <span class="reg-word">Авторизация пользователя</span>
    <?php if(!isset($_COOKIE['access'])) { ?>
    <form action="" method="post">
        <table class="reg">
            <tr>
                <td>Логин </td>
                <td><input type="text" name="login" value="<?php echo @htmlspecialchars($_POST['login']); ?>"></td>
                <td><?php echo @$errors['login']; ?></td>
            </tr>
            <tr>
                <td>Пароль </td>
                <td><input type="password" name="password" value="<?php echo @htmlspecialchars($_POST['password']); ?>"></td>
                <td><?php echo @$errors['password']; ?></td>
            </tr>
            <tr>
                <td>E-mail </td>
                <td><input type="email" name="email" value="<?php echo @htmlspecialchars($_POST['email']); ?>"></td>
                <td><?php echo @$errors['email']; ?></td>
            </tr>
        </table>
        <input class="reg-butt" type="submit" name="sendauth" value="Войти">
    </form>
    <?php } else { ?>
    <div class="reg-ok">Вы авторизированы!</div>
    <div><a href="/index.php?module=cab&page=exit">Выйти</a></div>
    <?php } ?>
</div>