<div>
    <img src="/img/FG-White.png" class="fight-logo" width="720" alt="logo">
    <div class="left">
        <img src="/img/left-fighter.png" class="left-fighter" alt="left fighter">
        <span class="text-game">ХП у клиента: <?php echo @$_SESSION['client'] ?></span>
    </div>

    <div class="center-block-game">
    <?php if(!isset($_SESSION['action'])) { ?>
    <span class="text-game text-margin">Введите число от 1 до 3:</span>
    <form action="" method="post">
        <input class="text-margin2" type="number" name="num" required min="1" max="3" value="<?php echo @htmlspecialchars($_POST['num']); ?>">
        <input class="text-button" type="submit" name="sendnum" value="Удар">
    </form>
    <?php
    } else { ?>
    <div class="reg-ok">Был произведен удар</div>
    <?php } ?>
    </div>

    <div class="left">
        <img src="/img/right-fighter.png" class="right-fighter" alt="right fighter">
        <span class="text-game"> ХП у сервера: <?php echo @$_SESSION['server'] ?></span>
    </div>
    <div class="clear"></div>

    <?php if(isset($server)) { ?>
    <div class="punch">
    </div>
    <div class="text-game">
        Вы ударили на: <span class="red"><?php echo @$server?></span> HP
    </div>
    <?php } ?>
    <?php if(isset($client)) { ?>
    <div class="punch">
    </div>
    <div class="text-game">
        Вас ударили на: <span class="red"><?php echo @$client?></span> HP
    </div>
    <?php } ?>
</div>