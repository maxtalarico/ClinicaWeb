<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>RegJsp</title>
</head>
<body>	
	<%@page import = "java.sql.*" %>
	<%@page import = "javax.sql.*" %>
	<%
		String user = request.getParameter("userid");
		//session.putValue("userid",user);
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("nome");
		String lastName=request.getParameter("sobrenome");
		String Email=request.getParameter("email");
		String RG=request.getParameter("rg");
		String CPF=request.getParameter("cpf");
		String CEP=request.getParameter("cep");
		String number=request.getParameter("numero");
		String complement=request.getParameter("complemento");
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
		Statement st = con.createStatement();
		ResultSet rs;
		int i=st.executeUpdate("insert into acesso values(null,'"+user+"','"+pwd+"')");
		    i=st.executeUpdate("insert into pacientes values (null,'"+name+"','"+lastName+"','"+Email+"','"+RG+"','"+CPF+"','"+CEP+"','"+number+"','"+complement+"', true)");
		out.println("Cadastrado");
	%>
	<a href="index.html">Login</a>
	<a href="index.html">Página Inicial</a>
</body>
</html>	