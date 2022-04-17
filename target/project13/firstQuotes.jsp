<%@ page import="java.util.concurrent.ThreadLocalRandom" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="quotes.WisdomServlet" %>
<%@ page import="java.util.ArrayList" %>
<%! ArrayList<String> quotes = new WisdomServlet().getQuotes();%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wisdom</title>
    <link rel="stylesheet"  type="text/css" href="style.css">
</head>
<body>
<div class="wrap">
    <section>
        <header class="header">
            <div class="header-title">СЕРВЛЕТ ДЛЯ МУДРЫХ ЦИТАТ</div>
            <div class="links">
                <a class="fab fa-vk" href="https://vk.com/lilechka275"></a>
                <a class="fab fa-instagram" href="https://www.instagram.com/liliia_boyko/"></a>
                <a class="fab fa-telegram-plane" href="https://t.me/liliya_boyko"></a>
            </div>
        </header>
    </section>
    <section class="main">
        <div> <img src="https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/f0958191361321.5e30176f1cbde.jpg"> </div>
        <div class="title">Your wisdom for today:</div>

        <div class="btn">
            <form method="GET" action="firstQuotes.jsp">
                <input type="submit" value="GET WISDOM">
            </form>
            <i class="far fa-long-arrow-right"></i>
        </div>
        <div class="text">"<%= quotes.get(ThreadLocalRandom.current().nextInt(quotes.size()))%>"</div>
    </section>
    <footer>
    </footer>
</div>
<script src="https://kit.fontawesome.com/36f34213e9.js" crossorigin="anonymous"></script>
</body>
</html>