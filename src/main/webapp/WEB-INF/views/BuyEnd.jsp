<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
         body{
            background-color: rgb(218, 250, 250);
        }
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
            <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">Home</button></a></li>
            <li class="nav-item"><a href="/products" ><button type="button" class="btn btn-outline-warning">Products</button></a></li>
            <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
          </ul>
        </header>
      </div>

      <div class="text-center error">Your Order has been confirmed and will be delivered to mentioned address.</div>
      <p class="fst-italic"><div class="text-center error">Order Id:- ${orderid}</div></p>
      <div class="text-center error">Total Cost:- ${total}, should be paid during delivery</div>
      <div class="text-center error">Press below button in order to Purchase more Products.</div>
      <div class="text-center error"><a href="/products" ><button type="button" class="btn btn-success">Products</button></a></div>

</body>
</html>