<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
    <style type="text/css">
    body {background-color: powderblue;}
   
    #main
   {
     width:600px; height:260px; margin-left:auto; margin-right:auto; border-radius:5px; padding-left:10px; margin-top:100px;
     border-top:3px double #f1f1f1; border-bottom:3px double #f1f1f1; padding-top:20px;
   }
    </style>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <!--
        <link href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/themes/base/jquery-ui.css" rel="stylesheet" />
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.1/jquery-ui.min.js"></script>
        -->

        <!--
        <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        -->

        <!--
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        -->

        <link href="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-4.1.3-dist/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
        <script src="${pageContext.request.contextPath}/resources/bootstrap/bootstrap-4.1.3-dist/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/cdnjs/jquery.min.js"></script>

        <title>Project List</title>
        <style>
       table, th, td 
       {
         border: 1px solid black;
         border-collapse: collapse;
        }
</style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body p-0">
                            <div class="row p-5">
                                <div class="col-md-12">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <!--<th class="border-0 text-uppercase small font-weight-bold">Title</th>-->
                                                <th >projectName</th>
                                                <th >plannedStartDate</th>
                                                <th >plannedFinishedDate</th>
                                                <th >description</th>
                                                <th >procedure1</th>
                                                <th >createdDate</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="proj" items="${listProject}">
                                                <tr>
                                                    <td>${proj.projectName}</td>
                                                    <td>${proj.plannedStartDate}</td>
                                                    <td>${proj.plannedFinishedDate}</td>
                                                    <td>${proj.description}</td>
                                                    <td>${proj.procedure1}</td>
                                                    <td>${proj.createdDate}</td>
                                                    <td><a href="editProject?id=${proj.id}"><button class="button">Edit</button></a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="deleteProject?id=${proj.id}"><button class="button">Delete</button></a></td>
                                                </tr>
                                            </c:forEach> 
                                        </tbody>
                                    </table>
                                    <p>Register new project&nbsp;<a href="newProject">here</a><p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>