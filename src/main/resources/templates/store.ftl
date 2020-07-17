<!DOCTYPE html>
<html lang="en"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>Store</title>
    <meta charset="utf-8">

    <link rel="stylesheet" href="css/reset.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
    <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen">

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

                <section id="search">
                    <form method="post" action="/store">
                        <input class="input-field" placeholder="Введите марку" type="text" id="concern" name="concern">
                        <input type="submit" value="Поиск">
                    </form>
                    <#if user != "">
                        <div id="right">
                            <h3>${user.firstName}</h3>
                            <h3>${user.lastName}</h3>
                            <a class="title" href="/logout">Выход</a>
                        </div>
                    </#if>
                </section>
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
            <section id="content">
                <div id="left">
                    <h3>Последние авто</h3>
                    <ul>
                        <#list carsFromServer as car>
                            <li>
                                <div class="img"><a href="#"><img alt="" src=${car.image}></a></div>
                                <div class="info">
                                    <a class="title" href="#">${car.concern}</a>
                                    <p>${car.model}</p>
                                    <div class="price">
                                        <span class="st">Цена:</span><strong>${car.price}</strong>
                                    </div>
                                    <div class="actions">
                                        <a href="#">Детали</a>
                                        <a href="#">Купить</a>
                                    </div>
                                </div>
                            </li>
                        </#list>
                </div>
                <div id="right">
                    <h3>Популярное</h3>
                    <ul>
                        <#list carsFromServer?reverse as car>
                            <li>
                                <div class="img"><a href="#"><img alt="" src=${car.image}></a></div>
                                <div class="info">
                                    <a class="title" href="#">${car.concern}</a>
                                    <p>${car.model}</p>
                                    <div class="price">
                                        <span class="st">Цена:</span><strong>${car.price}</strong>
                                    </div>
                                    <div class="actions">
                                        <a href="#">Детали</a>
                                        <a href="#">Купить</a>
                                    </div>
                                </div>
                            </li>
                        </#list>
                    </ul>
                </div>
            </section>

</body></html>