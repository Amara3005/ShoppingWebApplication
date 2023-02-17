<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ShopTry Home page </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
     <style>
         body{ 
             
             background-image: url(https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg);
             background-repeat: no-repeat;
             background-attachment: fixed;
             background-size: 100% 100%;
         }
         .head{
          color: rgb(16, 10, 32);
          padding-top: 30px;
          font-size: 30px;
         }
         .form-container{
             padding-top: 40px;
             padding-left: 40px;
             font-size: 35px;
         }
         .error{
             color: tomato;
             font-size: 20px;
         }
         .nav-item{
         padding-left: 10px;
       }
       .bg{
          background-color: aliceblue;
       }
     </style>
</head>
<body>
  <div class="container bg">
        <header class="d-flex flex-wrap justify-content-end py-3 mb-4 border-bottom">
          <ul class="nav nav-pills  ">
            <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">Home</button></a></li>
            <!--<li class="nav-item"><a href="#" ><button type="button" class="btn btn-outline-warning">Primary</button></a></li>-->
            <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
          </ul>
        </header>
      </div>
   
   <div class="text-left error">${message}</div>

    <div class="head"> <br>
    <p class="fs-3 text-center">Welcome to ShopTry Page</p></div>
    
    <form action="/login" method="post" class="form-container">
        <div class="row justify-content-center ">
        <div class="col-12 col-sm-6 col-md-3 ">
        <div class="mb-3 ">
            <label for="user" class="form-label">User Name</label>
            <input type="text" class="form-control" id="user" name="user" placeholder="User Name">
          </div>
          <div class="mb-3 ">
            <label for="Pass" class="form-label">Password</label>
            <input type="password" class="form-control" id="Pass" name="Pass" placeholder="Password">
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </div>
        <br><br>
      </form>
</body>
</html>