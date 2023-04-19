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
    <main class="m-2 w-100 d-flex flex-column align-items-center">
    	
        <video id="background-video" autoplay loop muted poster="/images/toystory.jpeg">
			<source src="/images/giphy.mp4" type="video/mp4">
		</video>
		<h1 class="title">Solution</h1>
		<form:form action="/ticket/${ editSolutionForm.id }/solution/save" method="post" modelAttribute="editSolutionForm" class="d-flex flex-column w-50 form">
			<input type="hidden" name="_method" value="put">  

           <section>
    			<form:input type="hidden" path="title" />
    		</section>
    		
    		<section>
    			<form:input type="hidden" path="type" />
    		</section>
    		<section>
    			<form:input type="hidden" path="description" />
    		</section> 
                
            <!-- Validation Error -->
            <form:errors path="solution" class="text-warning"/>
                <!-- Attribute Information -->
                <div class="d-flex flex-row justify-content-between my-2">
                    <label for="solution">Solution:</label>
                    <form:textarea path="solution" class="w-75" ></form:textarea>
                </div>
                
			<section>
    			<form:input type="hidden" path="resolved" value="true" />
    		</section>  
    		<section>
	    			<form:input type="hidden" path="likedUsers"/>
	    		</section>
    		<section>
    			<form:input type="hidden" path="user" />
    		</section> 
            <div class="d-flex row justify-content-end">
            	<a href="/dashboard" class="button-52 w-25">Cancel</a>
                <button class="button-52 w-25">Submit</button>
            </div>
        </form:form>
    </main>
    <footer>
    
    </footer>
</body>
</html>