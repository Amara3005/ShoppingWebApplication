<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View all Products</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <style>
        .nav-item{
         padding-left: 10px;
       }
     </style>
</head>
<body>

<div class="container bg">
    <header class="d-flex flex-wrap justify-content-end py-3 mb-4 border-bottom">
      <ul class="nav nav-pills  ">
        <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">Logout</button></a></li>
        <li class="nav-item"><a href="/admin" ><button type="button" class="btn btn-outline-warning">Home</button></a></li>
        <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
      </ul>
    </header>
  </div>
 <br><br>
    <table class="table table-striped table-hover">
        <thead>
            <tr>
              <th scope="col">Id</th>
              <th scope="col">Name</th>
              <th scope="col">Cost / kg</th>
              <th scope="col">Quantity in kg's</th>
              <th scope="col">Image</th>
              <th scope="col">Edit</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="prod" items="${listprd}"> 
            <tr>
              <td>${prod.id}</td>
              <td>${prod.name}</td>
              <td>${prod.cost}</td>
              <td>${prod.qnty}</td>
              <td><image src="${prod.img}" width="40px" height="40px"></image></td>
              <td><a href="/edit/${prod.id}"><button type="button" class="btn btn-outline-primary" >Edit</button></a></td>
            </tr>
            </c:forEach>
          </tbody>
      </table>

</body>
</html>