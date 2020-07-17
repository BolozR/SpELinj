<!DOCTYPE html>
<html lang="en"><head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Store</title>
    <meta charset="utf-8">

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/login.css" type="text/css" media="screen">

    <script src="js/jquery.js"></script>
    <script src="js/jquery.nivo.slider.pack.js"></script>
    <script src="js/main.js"></script>

</head>
<body>
<div class="container">

    <header>
        <nav>
            <ul>
                <li><a href="/store">Магазин</a></li>
                <li><a href="/login">Вход</a></li>
                <li><a href="/signUp">Регистрация</a></li>
            </ul>
        </nav>


        <div class="top_head">
            <div class="logo">
                <img src="images/logo_car.jpg" title="E-Store template" alt="E-Store template" />
            </div>
        </div>

        <section id="submenu">
            <ul>
                <li><a href="/store">Автомобили</a></li>
                <li><a href="/add">Добавить объявление</a></li>
            </ul>
        </section>
    </header>

    <div id="slider">

        <section id="slider-wrapper">
            <div id="slider" class="nivoSlider">
                <img style="display: none;" src="images/promo1_car.jpg" alt="" title="#htmlcaption-1">
                <img style="display: none;" src="images/promo2_car.jpg" alt="" title="#htmlcaption-2">
                <img style="display: none;" src="images/promo3_car.jpg" alt="" title="#htmlcaption-3">
            </div>
            <div id="htmlcaption-1" class="nivo-html-caption">
                <h5 class="p2">Автомобили</h5>
                <p>Новые, поддержанные</p>
            </div>
            <div id="htmlcaption-2" class="nivo-html-caption">
                <h5 class="p2">Автозапчасти</h5>
                <p>Широкий выбор запчастей для различных марок</p>
            </div>
            <div id="htmlcaption-3" class="nivo-html-caption">
                <h5 class="p2">Скидки и акции</h5>
                <p></p>
            </div>
        </section>
    </div>

    <div id="main">
            <form method="post" action="/login">
                <div class="container">
                    <#if error??>
                        <div class="redtext">
                            <label for="login"><b>Логин или пароль введены неверно</b></label><br>
                        </div>
                    </#if>
                    <label for="login"><b>Логин</b></label><br>
                    <input type="text" id="login" placeholder="Введите логин" name="login" required><br>
                    <label for="password"><b>Пароль</b></label><br>
                    <input type="password" id="password" placeholder="Введите пароль" name="password" required><br>
                    <button type="submit">Вход</button><br>
                    <label>
                        <input type="checkbox" id="remember-me" checked="checked" name="remember-me"> Запомнить меня
                    </label>
                </div>
            </form>
        </section>
    </div>
</body></html>