<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!-- for validation -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Coiny&family=Shadows+Into+Light&family=Sono:wght@400;500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Help Duck</title>
</head>
<body>
	<header class="header-container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		  <div class="container-fluid">
		    <a class="navbar-brand" href="#"><span><img src="/images/duck1.png" alt="duck brand pic" class="header-pic" /></span>Help Duck</a>
		    <div class="collapse navbar-collapse" id="navbarNavDarkDropdown">
		      <ul class="navbar-nav float-right">
		        <li class="nav-item dropdown">
		          <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
		            <span class="navbar-toggler-icon"></span>
		          </a>
		          <ul class="dropdown-menu dropdown-menu-dark" aria-labelledby="navbarDarkDropdownMenuLink">
					<li><a class="dropdown-item" href="/home">Home</a></li>
					<li><a class="dropdown-item" href="/profile">Profile</a></li>
					<li><a class="dropdown-item" href="/dashboard">Dashboard</a></li>
				    <li><a class="dropdown-item" href="/ticket/add">Ask For Help</a></li>
				    <li><a class="dropdown-item" href="/resolved">Resolved Tickets</a></li>
				    <li><a class="dropdown-item" href="/timer">Timer</a></li>
				    <li><a class="dropdown-item" href="/logout">Logout</a></li>
		          </ul>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
	</header>
    <main>
    	<div>
		    <div class="timer-container">
				<input id="duck" type="checkbox">
				<label class="duck" for="duck">
				  <div class="head">
				    <div class="eyes"></div>
				    <div class="mouth"><i></i></div>
				  </div>
				  <div class="arms"></div>
				</label>
		    </div>
		    <div class="timer-music">
			    <div class="timer"></div>
		    	<audio controls autoplay>
				  <source src="/images/wii.mp3" type="audio/mpeg">
				<p>Your browser does not support the audio element.</p>
				</audio>
		    </div>
    	</div>
    </main>
    <footer>
    
    </footer>
    <script type="module" src="/js/script.js"></script>
</body>
</html>