<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>loginjsp</title>
</head>
<body>
	<%@page import="java.sql.*"%>
	<%@page import="javax.sql.*" %>
	<%
		String userid=request.getParameter("usr");
		session.putValue("userid",userid);
		String pwd=request.getParameter("pwd");
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/clinica","root","1234");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from acesso where login='"+userid+"'");
		if(rs.next()){
			if(rs.getString(3).equals(pwd)){
				out.println("Bem Vindo, "+userid);
			}else{
				out.println("Senha Inválida Tente Novamente");
			}
		}else
			out.println("Digite seu login e senha!");
	%>
		<a href="index.html">Pagina Inicial</a>
</body>
</html>