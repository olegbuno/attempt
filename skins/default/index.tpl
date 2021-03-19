<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php echo @$title; ?></title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <link href="/css/style.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
</head>

<body>
  <header>
      <div class="logo">
          <a href="/"><img class="graficlogo" src="/img/logo.png" alt="Logo"></a>
      </div>
      <nav>
          <div class="topnav" id="myTopnav">
              <a href="/">HOME</a>
              <a href="/index.php?module=manager&page=main">Файловый менеджер</a>
              <a href="/index.php?module=cab&page=authorization">Авторизация</a>
              <a href="/index.php?module=cab&page=registration">Регистрация</a>
              <a href="/index.php?module=comments&page=comments">Коментарии</a>
              <a href="/index.php?module=game&page=main">GAME</a>
              <a id="menu" href="#" class="icon">&#9776;</a>
          </div>
      </nav>
  </header>
  <script src="/js/script.js"></script>
  <div id="content">
    <?php include $_GET['module'].'/'.$_GET['page'].'.tpl'; ?>
  </div>
  <footer>&copy; <?php echo date('Y');?> HOUSE. All Rights Reserved. Theme Design by <a href="#" class="author-bot">Buno</a></footer>
</body>

</html>