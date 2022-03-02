<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
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
                                                <th class="border-0 font-weight-bold">projectName</th>
                                                <th class="border-0 font-weight-bold">plannedStartDate</th>
                                                <th class="border-0 font-weight-bold">plannedFinishedDate</th>
                                                <th class="border-0 font-weight-bold">description</th>
                                                <th class="border-0 font-weight-bold">procedure1</th>
                                                <th class="border-0 font-weight-bold">createdDate</th>
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
                                                    <td><a href="editProject?id=${proj.id}">Edit</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="deleteProject?id=${proj.id}">Delete</a></td>
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