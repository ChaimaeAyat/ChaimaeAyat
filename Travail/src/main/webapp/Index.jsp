<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String etat="";
if(request.getParameter("cpt")!=null){
if(Integer.parseInt(request.getParameter("cpt"))>=3)
{
	etat="disabled='disabled'";
	}
}
%>
<div class="row">
<form action="Authentification"  method="post" class="col-6 ms-5">
<div class="display-6 m-4 ">
authentification
</div>
<div class="mb-3">
  <input type="text" name="log" class="form-control" id="formGroupExampleInput" placeholder="Email">
</div>
<div class="mb-3">
  <input type="text" name="pass" class="form-control" id="formGroupExampleInput2" placeholder="password">
</div>
<div class="col-12">
    <button type="submit"  <%=etat %>class="btn btn-primary">Sign in</button>
  </div>
</form>
</div>
<div class="row">
<form action="Inscription" method="post" class="col-6 ms-5">
<div class="display-6 m-4 ">
Inscription
</div>
    <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Nom</label>
    <input type="text" class="form-control" name="nom">
     </div>
     <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Prenom</label>
    <input type="text" class="form-control" name="prenom">
     </div>
    <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" name="log">
     <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" class="form-control" name="pass">
  </div>
  </div>
     <div class="col-12">
    <button type="submit" class="btn btn-primary">Inscrit</button>
  </div>
    
    </form>
</div>
<%
if(request.getParameter("res")!=null && request.getParameter("cpt")!=null)
{
	if(request.getParameter("res").equals("err"))	
	{
		%>
		<p style="color:red;">userName or Password is incorrect.....!</p>
		<%
	}
}
 %>

</body>
</html>