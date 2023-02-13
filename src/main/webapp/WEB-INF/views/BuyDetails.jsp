<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
         body{
            background-color: rgb(218, 250, 250);
        }
        .nav-item{
         padding-left: 10px;
       }
       .form-container{
             padding-top: 20px;
             padding-left: 520px;
         }
         .crd{
            align-self: center;
            padding-left: 520px;
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
            <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
          </ul>
        </header>
      </div>

      <div class ="crd">
        <div class="card text-dark  border-info mb-3"  style="max-width: 400px;">
            <div class="row g-0">
              <div class="col-md-4">
                <img src="${prdt.img}" 
                class="img-fluid rounded-start" alt="...">
              </div>
              <div class="col-md-8">
                <div class="card-body bg-light">
                  <h5 class="card-title">${prdt.name} </h5>
                  <p class="card-text"> Cost per kg:- ${prdt.cost} <br> Quantity avilable in kg's:- ${prdt.qnty}
                  </p>
                </div>
              </div>
            </div>
          </div>
        </div>
         
       

      
        <form action="/BuyPrdt/${prdt.id}" method="post"  class="form-container">
            <div class="mb-3">
              <label for="exampleInputPassword1" class="form-label">Quantity Needed in kg's</label>
              <input type="number" class="form-control" id="user" name="need" value="0" min="1" max="${prdt.qnty}" style=" width:250px;" required>
            </div>
            <div class="form-floating">
                <textarea class="form-control" placeholder="Leave address here" id="address" name="address" style="height: 100px; width:500px;" required></textarea>
                <label for="floatingTextarea2">Address Details</label>
              </div>
              <br>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
      
          <br><br>
</body>
</html>