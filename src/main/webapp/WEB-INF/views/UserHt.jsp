<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <style>
         body{
            background-color: rgb(218, 250, 250);
        }
        .nav-item{
         padding-left: 10px;
       }
       .pd{
         padding-left: 25px;
       }
     </style>
</head>
<body>
 <div class="container bg">
    <header class="d-flex flex-wrap justify-content-end py-3 mb-4 border-bottom">
      <ul class="nav nav-pills  ">
        <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">LogOut</button></a></li>
        <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
      </ul>
    </header>
  </div>

  <div class="row row-cols-1 row-cols-md-4 g-4 pd">
   ${msg}
  <c:forEach var="prod" items="${list}">
    <div class="col ">
      <div class="card h-100" style="width: 19rem;">
        <img src="${prod.img}"  height="220px" width="30px" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">${prod.name}</h5>
          <p class="card-text"> <b>Cost per kg :-</b> ${prod.cost} <br> <b>Quantity available:-</b> ${prod.qnty} Kg's
          </p>
          <a href="/BuyPrdt/${prod.id}" class="btn btn-primary">Buy</a>
        </div>
      </div>
    </div>
  </c:forEach>
  </div> 
</body>
</html>