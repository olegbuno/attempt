<div class="center2">
	<span class="reg-word">Регистрация пользователя</span>
	<?php if(!isset($_SESSION['regok'])) { ?>
	<form action="" method="post">
		<table class="reg">
			<tr>
				<td>Логин *</td>
				<td><input type="text" name="login" value="<?php echo @htmlspecialchars($_POST['login']); ?>"></td>
				<td><?php echo @$errors['login']; ?></td>
			</tr>
			<tr>
				<td>Пароль *</td>
				<td><input type="password" name="password" value="<?php echo @htmlspecialchars($_POST['password']); ?>"></td>
				<td><?php echo @$errors['password']; ?></td>
			</tr>
			<tr>
				<td>E-mail *</td>
				<td><input type="email" name="email" value="<?php echo @htmlspecialchars($_POST['email']); ?>"></td>
				<td><?php echo @$errors['email']; ?></td>
			</tr>
			<tr>
				<td>Возраст</td>
				<td class="age"><input type="number" min="1" max="150" name="age" value="<?php echo @htmlspecialchars($_POST['age']); ?>"></td>
				<div class="clear"></div>
			</tr>
		</table>
		<p class="size10">* - обьязательные для заполнения</p>
		<input class="reg-butt" type="submit" name="sendreg" value="Зарегистрироваться">
	</form>
	<?php } else {unset($_SESSION['regok']); ?>
	<div class="reg-ok">Вы успешно зарегистрировались на сайте!</div>
	<?php } ?>
</div>