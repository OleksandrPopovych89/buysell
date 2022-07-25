<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1>
<hr>
<h4>Товари з усієї України</h4>
<form action="/" method="get">
    Пошук по назві оголошення:
    <input type="text" name="title"><br>
    <input type="submit" value="Пошук"/>
</form>
<#list products as product>
    <div>
        <p><b>${product.title} | </b>${product.price} грн. | <a href="/product/${product.id}">Детальніше...</a></p>
    </div>
<#else>
    <h3>Товарів немає</h3>
</#list>
<hr>
<h3>Створити новий товар</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Назва заяви : <input type="text" name="title"/><br><br>
    Опис заяви : <input type="text" name="description"/><br><br>
    Ціна : <input type="number" name="price"/><br><br>
    Місто : <input type="text" name="city"/><br><br>
    Ім'я : <input type="text" name="author"/><br><br>

    Переше фото <input type="file" name="file1"/><br><br>
    Друге фото <input type="file" name="file2"/><br><br>
    Третє фото <input type="file" name="file3"/><br><br>

    <input type="submit" value="Додати товар"/>
</form>
</body>
</html>