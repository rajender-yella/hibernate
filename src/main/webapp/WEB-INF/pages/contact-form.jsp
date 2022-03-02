				<!DOCTYPE html>
				<html>
				<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
				    <head>
				        <title>New/Edit contact</title>
				    </head>
				    <body>  
			
					<div ng-controller="ContactController">  
					
					<form>  
					<table>  
					<tr>  
					<td>FirstName</td>   
					<td><input type="text" name="firstname" ng-model="newcontact.firstname"/></td>  
					</tr>  
					<tr>  
					<td>MiddleName</td>   
					<td><input type="text" name="firstname" ng-model="newcontact.middlename"/></td>  
					</tr> 
					<tr>  
					<td>LastName</td>   
					<td><input type="text" name="lastname" ng-model="newcontact.lastname"/></td>  
					</tr> 
					<tr>  
					<td>Gender</td>   
					<td><input type="text" name="gender" ng-model="newcontact.gender"/></td>  
					</tr> 
					<tr>  
					<td>Email</td>  
					<td><input type="text" name="email" ng-model="newcontact.email"/></td>  
					</tr>  
					
					<tr>  
					
					<td>Phone</td>   
					
					<td><input type="text" name="phone" ng-model="newcontact.phone"/></td>  
					
					</tr>  
					
					<tr>  
					
					<td><input type="hidden" ng-model="newcontact.id" /></td>  
					
					<td><input type="button" value="Save" ng-click="saveContact()" /></td>  
					
					</tr>  
					
					</table>  
					
					    </form>  
					
					<table border="1">  
					
					<tr>  
					
					    <th>Name</th>  
					
					    <th>Email</th>  
					
					    <th>Phone</th>  
					
					    <th>Action</th>  
					
					</tr>  
					
					<tr ng-repeat="contact in contacts">  
					
					    <td>{{ contact.name }}</td>  
					
					    <td>{{ contact.email }}</td>  
					
					    <td>{{ contact.phone }}</td>  
					
					    <td>  
					
					        <a  href="#" ng-click="edit(contact.id)">edit</a> |   
					
					        <a href="#" ng-click="delete(contact.id)">delete</a>  
					
					    </td>  
					
					 </tr>  
					
					</table>      
					
					</div>  
					
					</body>  
					
					</html>  
	


       
				    