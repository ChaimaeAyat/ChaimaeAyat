<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.util.Gestion" %>
    
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form  action="Ajouterlivre" method="post" class="col-6 ms-5">
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Nom Livre</label>
    <input type="text" class="form-control"name="nom">
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Auteur</label>
    <input type="text" class="form-control" name="auteur">
  </div>
   <div class="mb-3">
    <label class="form-label">Price</label>
    <input type="number" class="form-control" name="price">
  </div>
 <div class="mb-3">
    <label class="form-label">Id</label>
    <input type="number" class="form-control" name="id">
  </div>

  <button type="submit" class="btn btn-primary">Ajouter</button>
  </form>

</body>
</html>