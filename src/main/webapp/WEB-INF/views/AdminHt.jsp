<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
     integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        .cntr{
            padding-top:50px;
            
        }
        .img2{
            height:190px;
        }
        body{
            background-color: rgb(218, 250, 250);
        }
        .msg{
            color: tomato;
            font-size: 18px;
            padding-top: 10px;
            text-align: center;
        }
        .nav-item{
         padding-left: 10px;
       }
    </style>
</head>
<body>
 <div class="container bg">
    <header class="d-flex flex-wrap justify-content-end py-3 mb-4 border-bottom">
      <ul class="nav nav-pills  ">
        <li class="nav-item"><a href="/"> <button type="button" class="btn btn-outline-primary">Log out</button></a></li>
        <!--<li class="nav-item"><a href="#" ><button type="button" class="btn btn-outline-warning">Logout</button></a></li>-->
        <li class="nav-item"><a href="/about"><button type="button" class="btn btn-outline-success">About</button></a></li>
      </ul>
    </header>
  </div>

    <p class="msg">${message}</p> <br>
    <div class="container cntr">
      <div class="row row-cols-1 row-cols-md-3 g-4 pd">
          
        <div class="col ">
          <div class="card h-100" style="width: 18rem;">
              <img src="https://thumbs.dreamstime.com/b/people-trolley-supermarket-concept-human-trafficking-modern-slavery-buying-violation-international-laws-freedom-131757157.jpg" 
              class="card-img-top" alt="image of an products">
              <div class="card-body">
                <h5 class="card-title">Add new Product</h5>
                <p class="card-text">To add a New Vegetable Click below Button.</p>
                <a href="/admin/newProduct" class="btn btn-primary">Add New Product</a>
              </div>
            </div>
      </div>

      <div class="col">
        <div class="card h-100" style="width: 18rem;">
            <img src="https://www.mcicon.com/wp-content/uploads/2020/12/Education_Edit_pencil_1.jpg" 
            class="card-img-top img2" alt="image of an edit">
            <div class="card-body">
              <h5 class="card-title">Edit Products</h5>
              <p class="card-text">To change the details of a Vegetable click below button.</p>
              <a href="admin/editView" class="btn btn-primary">Edit Products</a>
            </div>
          </div>
    </div>
       
    <div class="col ">
      <div class="card h-100" style="width: 18rem;">
        <img src="/images/orderimg.jpg"  height="200px" width="25px" class="card-img-top" alt="...">
        <div class="card-body">
          <h5 class="card-title">Orders</h5>
          <p class="card-text"> To know the details of Orders to be delivered Press Below Button
          </p>
          <a href="/orders" class="btn btn-primary">Orders</a>
        </div>
      </div>
    </div>
         
      </div>
    </div>

</body>
</html>