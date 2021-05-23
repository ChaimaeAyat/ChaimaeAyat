<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.util.Etudiant,com.util.Categorie"%>
    <%@ page import="com.util.Gestion,java.util.List"%>
    <%@ page import="com.util.Livre,java.util.ArrayList"%>
<%
Etudiant u=(Etudiant)session.getAttribute("etudiant");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</head>
<body>
<div class="m-4"> 
<hr/>

<%
	Gestion gs=new Gestion();
	List<Categorie> cat=gs.AllCat();
	List<Livre> list = null;
	String id_categorie;
	if(request.getParameter("category") ==null || request.getParameter("category").equals("tous")){
		list = gs.All();
		id_categorie = "tous";
	}else{
		String id = request.getParameter("category");
		id_categorie = id;
		list = gs.findLivreBycategorie(Integer.parseInt(id));
	}
%>
<form class="row mb-4 g-3 d-flex align-items-center" action="" method="get" target="_self">
  <div class="col-md-4">
    <label for="inputState" class="form-label">Categorie</label>
    <select id="inputState" onchange="this.form.submit()" class="form-select" name="category">
      	<option value="tous" <%=id_categorie.equals("tous")?"selected":""%>>tous</option>
		<%
		for(Categorie ct : cat){
		%>
		<option value="<%=ct.getId_categorie()%>" <%=id_categorie.equals(String.valueOf(ct.getId_categorie()))?"selected":""%>><%=ct.getNom_categorie() %></option>
		<%
		}
		%>
    </select>
  </div>
  </form>
  
  <form action="Addlivrejsp.jsp" method="post">
  <div class="row"> 
    <button class="btn btn-secondary pull-right" type="submit">Ajouter Livre</button>
  </div>
  </form>
  <form action="AddCategorie.jsp" method="post">
  <div class="row">
    <button type="submit" class="btn btn-secondary pull-right">Ajouter Categorie</button>
  </div>
  </form>
  
<table class="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Auteur</th>
      <th scope="col">Nom</th>
      <th scope="col">Price</th>
    </tr>
  </thead>
  <tbody>
  	<%
	for(Livre lv : list){
	%>	
    <tr>
      <th scope="row">1</th>
      <td><%=lv.getAuteur() %></td>
      <td><%=lv.getNom_livre() %></td>
      <td><%=lv.getPrice() %></td>
    </tr>
    <%
	}
	%>
  </tbody>
</table>
</div>
</body>
</html>