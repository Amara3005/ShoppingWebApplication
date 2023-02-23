<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <style>
        .nav-item{
         padding-left: 10px;
       }
       .error{
             color: tomato;
             font-size: 20px;
         }
     </style>
</head>
<body>
       
    <div class="container bg">
        <header class="d-flex flex-wrap justify-content-end py-3 mb-4 border-bottom">
          <ul class="nav nav-pills  ">
            <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">LogOut</button></a></li>
            <li class="nav-item"><a href="/admin" ><button type="button" class="btn btn-outline-warning">Home</button></a></li>
            <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
          </ul>
        </header>
      </div>
     
     <p class="fst-italic"><div class="text-center error">( ${num} ) Orders to be  Delivered </div></p>
     <p class="fst-italic"><div class="text-center error">If the Product is Delivered then press the Deliver button to remove 
         the Order from the list</div></p>
    
     <table class="table table-striped table-hover">
        <thead>
            <tr>
              <th scope="col">Order Id</th>
              <th scope="col">Name</th>
              <th scope="col">Total Cost</th>
              <th scope="col">Address</th>
              <th scope="col">Qnty remaing  </th>
              <th scope="col">Qnty to deliver</th>
              <th scope="col">Image</th>
              <th scope="col">Status</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="ord" items="${list}"> 
            <tr>
              <td>${ord.id}</td>
              <td>${ord.product.name}</td>
              <td>${ord.product.cost}</td>
              <td>${ord.adrs}</td>
              <td>${ord.product.qnty}</td>
              <td>${ord.qntyNeed}</td>
              <td><image src="${ord.product.img}" width="40px" height="40px"></image></td>
              <td><a href="/orders/${ord.id}"><button type="button" class="btn btn-outline-primary" >Deliver</button></a></td>
            </tr>
            </c:forEach>
          </tbody>
      </table>
</body>
</html>