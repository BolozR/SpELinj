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
            <section id="search">
                <div id="right">
                    <h3>${user.firstName}</h3>
                    <h3>${user.lastName}</h3>
                    <a class="title" href="/logout">Выход</a>
                </div>
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
        <script type='text/javascript'>
            function send(){
                if(document.getElementById('concern').value === "" ||
                    document.getElementById('model').value === "" ||
                    document.getElementById('price').value === "")
                    alert("Заполните все поля!");
                else
                $.ajax({
                    url: 'cars',
                    type: 'POST',
                    data: JSON.stringify({ "concern" : document.getElementById('concern').value,
                        "model" : document.getElementById('model').value,
                        "price" : document.getElementById('price').value,
                        "image" : document.getElementById('image').value }),
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    async: false,
                    success: function() {
                        alert("Добавлено!");
                    },
                    error: function () {
                        alert("Ошибка!")
                    }
                });
            }
        </script>
            <div class="container">
                    <label for="concern"><b>Производитель</b></label><br>
                    <input type="text" id="concern" placeholder="Введите производителя" name="concern"><br>
                    <label for="model"><b>Модель</b></label><br>
                    <input type="text" id="model" placeholder="Введите модель" name="model"><br>
                    <label for="price"><b>Цена</b></label><br>
                    <input type="text" id="price" placeholder="Введите цену" name="price"><br>
                    <label for="image"><b>Изображение</b></label><br>
                    <input type="text" id="image" placeholder="Введите ссылку на изображение" name="image"><br>
                    <button onclick="send()" type="submit">Добавить</button><br>
            </div>
        </section>
    </div>
</body></html>