<!-- @author Pawel -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-2"
	pageEncoding="ISO-8859-2"%>
<%@ page import="dao.interf.products.*"%>
<%@ page import="dao.impl.products.*"%>
<%@ page import="java.util.*"%>
<%@ page import="model.products.*"%>
 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<script data-pace-options='{ "ajax": false }' src='/webdzieknat2/pace/pace.js'></script>  

 <link href="/webdzieknat2/pace/themes/pace-theme-corner-indicator.css" rel="stylesheet" />
 <link href="/webdzieknat2/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
 <link href="/webdzieknat2/bootstrap/css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
 <link href="/webdzieknat2/pace/themes/pace-theme-corner-indicator.css" rel="stylesheet" type="text/css" />
 <link href="/webdzieknat2/FooTable/css/footable-0.1.css" rel="stylesheet" type="text/css"/>

<script src="/webdzieknat2/FooTable/js/jquery-1.11.1.js" type="text/javascript"></script> 
<script src="/webdzieknat2/bootstrap/js/bootstrap.js" type="text/javascript"></script>
<script src="/webdzieknat2/FooTable/js/footable-0.1.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="well well-sm">
					<form class="form-horizontal" action="addCourses.jsp" method="post">
						<fieldset>
							<legend class="text-center">Dodawanie kursu do bazy</legend>
							<div class="form-group">
								<label class="col-md-3 control-label" for="name">Nazwa</label>
								<div class="col-md-9">
									<input id="name" name="name" type="text"
										placeholder="Nazwa przedmiotu..." class="form-control">
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label" for="description">Opis</label>
								<div class="col-md-9">
									<textarea class="form-control" id="description" name="description"
										placeholder="Opis przedmiotu..." rows="5"></textarea>
								</div>
							</div>
							
							<div class="form-group">
								<label class="col-md-3 control-label" for="ects">ECTS</label>
								<div class="col-md-9">
									<input id="ects" name="ects" type="text"
										placeholder="Ilo�� ECTS..." class="form-control">
								</div>
							</div>

							<div class="form-group">
								<div class="col-md-12 text-center">
									<button type="submit" class="btn btn-primary btn-lg">Dodaj</button>
								</div>
							</div>
						</fieldset>
						<%
			String name = request.getParameter("name");
			String description = request.getParameter("description");
			String ects = request.getParameter("ects");
			
			if(name!=null && description!=null && ects!=null){
			if(name!="" && description!="" && ects!="") {
				Course cour = new Course();
				cour.setName(name);
				cour.setDescription(description);
				cour.setEcts(Integer.parseInt(ects));
				
				CourseDaoInterface courseDaoInterface;
				courseDaoInterface = new HibernateCourseDaoImpl();
				courseDaoInterface.add(cour);
				
				%>
				<h3>
				<span class="label label-default">Kurs zosta� dodany do bazy.</span>
				</h3>
				<br/>
				<%
				}
			}
			%>
			
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>