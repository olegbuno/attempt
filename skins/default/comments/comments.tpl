<div class="body-content">
	<?php echo @$comments; ?>
</div>
<div class="center2">
	<?php if(!isset($_SESSION['comok'])) { ?>
		<span class="reg-word">Напишите свой комментарий:</span>
		<form action="" method="post">
			<table class="reg2">
				<tr>
					<td class="right">Логин</td>
					<div class="clear"></div>
					<td><input type="text" name="login" value="<?php echo @htmlspecialchars($_POST['login']); ?>"></td>
					<td><?php echo @$errors['login']; ?></td>
				</tr>
				<tr>
					<td class="right">E-mail</td>
					<div class="clear"></div>
					<td><input type="email" name="email" value="<?php echo @htmlspecialchars($_POST['email']); ?>"></td>
					<td><?php echo @$errors['email']; ?></td>
				</tr>
				<tr>
					<td class="right">Введите комментарий:</td>
					<div class="clear"></div>
					<td><textarea rows="5" cols="23" name="content"></textarea></td>
					<td><?php echo @$errors['content']; ?></td>
				</tr>
			</table>
			<input class="reg-butt" type="submit" name="sendcom" value="Отправить">
		</form>
	<?php } else {unset($_SESSION['comok']); ?>
		<div class="reg-ok">Вы написали комментарий!</div>
	<?php } ?>
</div>