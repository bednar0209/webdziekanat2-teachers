<!-- @author Pawel -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
	pageEncoding="ISO-8859-2"%>
<!DOCTYPE html>
<html>
<head>

<script data-pace-options='{ "ajax": false }'
src='http://bednar.url.ph/webdz/pace.js'></script>

<link href="http://bednar.url.ph/webdz/pace-theme-corner-indicator.css"
rel="stylesheet" />
<link href="http://bednar.url.ph/webdz/bootstrap.css" rel="stylesheet"
type="text/css" />
<link href="http://bednar.url.ph/webdz/bootstrap-theme.css"
rel="stylesheet" type="text/css" />
<link href="http://bednar.url.ph/webdz/pace-theme-corner-indicator.css"
rel="stylesheet" type="text/css" />
<link href="http://bednar.url.ph/webdz/footable-0.1.css"
rel="stylesheet" type="text/css" />

<script src="http://bednar.url.ph/webdz/jquery-1.11.1.js"
type="text/javascript"></script>
<script src="http://bednar.url.ph/webdz/bootstrap.js"
type="text/javascript"></script>
<script src="http://bednar.url.ph/webdz/footable-0.1.js"
type="text/javascript"></script>
<script src="http://mymaplist.com/js/vendor/TweenLite.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="MainPage.jsp">WEB DZIEKANAT&nbsp <span
					class="glyphicon glyphicon-book"></span></a>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">STUDENT<b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="students/student/studentPage.jsp"
								target="frame">Studenci</a></li>
							<li class="divider"></li>
							<li><a href="students/rating/ratingPage.jsp" target="frame">Oceny</a></li>
						</ul></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">KURSY <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="products/coursePage.jsp" target="frame">Przedmioty</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="index.jsp" style="color: red">Wyloguj&nbsp <span
							class="glyphicon glyphicon-log-out"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>
<!-- 	<div class="jumbotron" style="padding-top:5px; padding-bottom:5px;"> -->
<!-- 			<h2 class="text-center">Witaj w wirtualnym dziekanacie Politechniki ��dzkiej!</h2> -->
<!-- 	</div> -->
	<div id="content">
		<iframe name="frame" height="800px" width="100%" frameBorder="0"></iframe>
	</div>
</body>
</html>
