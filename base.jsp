<%@ page contentType="text/html" pageEncoding="UTF-8" language="java" import="CheckBallance.ballance" %>

<!DOCTYPE html>
<html>
	<head>
		<title>Городок</title>
		<meta name="viewport" content="width=device-width">
		<meta charset="utf-8">
		<link rel="stylesheet" href="style/css.css">
		<!--Стили для connection.jsp-->
		<link rel="stylesheet" href="style/connection.css">
		<!--Стили для мобильных устройств   -->
		<link rel="stylesheet" media="(min-width:280px) and (max-width:768px)" href="style/mobile.css">
	<head>
	<body>
		<header>
			<jsp:include page="check_ballance.jsp"/>
			<div id="HeaderMenu">
				<img id='logo' src='style/images/logo.png'>
				<a href="http://kino2.gorodok1.ru/">
					<img id="kino_link" src="style/images/1.png"/>
				</a>
				<a href="https://cam.gorodok1.ru/">
					<img id="cam_link" src="style/images/2.png"/>
				</a>
				<a href="https://10.0.0.17/login.php">
					<img id="kabinet_link" src="style/images/3.png"/>
				</a>
				<img id='MenuMobileButton' src='style/images/menu.png'>
				<ul class='nav'>
					<li><a class="menu_items" href='index.jsp'>Тарифы</a></li>
					<li><a class="menu_items" href='connection.jsp'>Подключение</a></li>
					<li><a class="menu_items" href='#'>Оборудование</a></li>
					<li><a class="menu_items" href='#'>Оплата</a></li>
					<li><a class="menu_items" href='#'>Помощь</a></li>
					<li><a class="menu_items" href='#'>Акции</a></li>				
				</ul>
			</div>
			<!-- Меню на телефонах  -->
			<div id='MobileNav'>
				<div class='FooterTele'>
					<img src='style/images/tel.png'>
					<p>210-225</p>
				</div>
					<ul>
						<li><a href='index.jsp'>Тарифы</a></li>
						<li><a href='connection.jsp'>Подключение</a></li>
						<li><a href='#'>Оборудование</a></li>
						<li><a href='#'>Оплата</a></li>
						<li><a href='#'>Помощь</a></li>
						<li><a href='#'>Акции</a></li>					
					</ul>
				</div>
		</header>
	
		<!-- Основное содержание  -->
			<main>
			<div class='Main'>
				
								
			
		
			
		