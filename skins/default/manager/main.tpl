<div class="center2">
    <div class="file_block">Файловый менеджер</div>
    <?php if(!isset($_COOKIE['access'])) { ?>
        <div class="file_block2">
            <?php
            foreach ($scanned_directory as $v) {
                if (is_dir($v)) {
                    echo '<div class="directory"><a href="/index.php?module=manager&page=main&link=/' . $v . '">' . $v . '</a></div><br>';
                } else {
                    echo '<div class="file">'.$v.'</div><br>';
                }
            }
            ?>
        </div>
    <?php } else { ?>
    <div class="reg-ok">Вы авторизированы!</div>
    <div><a href="/index.php?module=cab&page=exit">Выйти</a></div>
    <?php } ?>
</div>