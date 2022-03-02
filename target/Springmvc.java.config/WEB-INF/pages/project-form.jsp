<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
       

        <!--
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        -->

        <!--
        <link href="//netdna.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
        -->
<%-- 
        <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-4.1.3-dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
        <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/jQuery/jQuery-3.x/jquery-3.3.1.min.js"></script>
 --%>
        <title>New/Edit Project</title>
    </head>
    <body>
        <div class="container">
            <div class="col-md-5">
                <div class="form-area">
                    <form:form id="inputForm" action="saveProject" method="post" modelAttribute="project">
                        <form:hidden path="id"/>
                        <br style="clear:both">
                        <h4 style="margin-bottom: 25px; text-align: center;">New/Edit Project</h4>
                        <p>Please enter values in all the fields.</p>
		    			<div class="form-group">
		                            <label for="projectName">projectName</label>
					    <form:input type="text" path="projectName" class="form-control" id="projectName" name="projectName" placeholder="Title" required="true" />
						</div>
					<%-- 	<div class="form-group">
		                            <label for="plannedStartDate">plannedStartDate</label>
					    <form:input type="date" path="plannedStartDate" class="form-control" id="plannedStartDate" name="plannedStartDate" placeholder="mm/dd/yyyy" required="false" />
						</div>
						<div class="form-group">
			                            <label for="plannedFinishedDate">plannedFinishedDate</label>
						    <form:input type="date" path="plannedFinishedDate" class="form-control" id="plannedFinishedDate" name="plannedFinishedDate" placeholder="mm/dd/yyyy" required="false" />
						</div> --%>
						<div class="form-group">
			                            <label for="description">description</label>
						    <form:input type="text" path="description" class="form-control" id="description" name="description" placeholder="description" required="true" />
						</div>
		        		<div class="form-group">
		                            <label for="procedure1">procedure1</label>
					    <form:input type="text" path="procedure1" class="form-control" id="procedure1" name="procedure1" placeholder="procedure1" required="true" />
				        </div>     
				     <%--    <div class="form-group">
		                            <label for="createdDate">createdDate</label>
					    <form:input type="text" path="createdDate" class="form-control" id="createdDate" name="createdDate" placeholder="mm/dd/yyyy" required="false" />
				        </div>   --%>      
                        <input type="submit" id="submit" name="submit" value="Save" class="btn btn-primary pull-right">
                     </form:form>
                    <span></span>
                   <p>Revert to projects list&nbsp;<a href="./">here</a></p> 
                </div>
           	 </div>
            </div>
    </body>
</html>