<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<title>EditJsp</title>
</head>
<body>	
	<%@page import = "java.sql.*" %>
	<%@page import = "javax.sql.*" %>
	<%
	try{
		String CPF=request.getParameter("cpf");
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost/clinica","root","1234");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT cpf FROM pacientes WHERE cpf="+CPF+" ");
        	
			out.println("<div id='signup-form'>");
			out.println("<div id='signup-inner'>");
			out.println("<div class='clearfix' id='header'>");
         	out.println("<h1>Editar Paciente</h1>");
            out.println("</div>");    

            out.println("<p>Por favor, preencha os campos abaixo.</p>");	
            out.println("<form action='edit-final.jsp' method='post'>");
            out.println("<p>"); 
            out.println("<label for='nome'>Nome *</label>");
            out.println("<input id='nome' type='text' name='nome' value='' />");
            out.println("</p>");     
            out.println("<p>");
            out.println("<label for='sobrenome'>Sobrenome </label>");
            out.println("<input id='sobrenome' type='text' name='sobrenome' value='' />");
            out.println("</p>");
            
            out.println("<p>");
			out.println("<label for='email'>Email *</label>");
                
            out.println("<input id='email' type='text' name='email' value='' />"); 
            out.println("<p>");
                
            out.println("<p>");
            out.println("<label for='rg'>RG *</label>");
            out.println("<input id='rg'  type='text' name='rg' value='' />");    
            out.println("</p>");
			
            out.println("<p>");
            out.println("<label for='cpf'>CPF *</label>");
            out.println("<input id='cpf'  type='text' name='cpf' value='' />");
            out.println("</p>");
            out.println("<p>");
            out.println("<label for='cep'>CEP</label>");
            out.println("<input id='cep' type='text' name='cep' value='' />");
            out.println("</p>");
            
            out.println("<p><label for='numero'>Numero</label><input id='numero' type='text' name='numero' value='' /></p>");
        
            out.println("<p><label for='complemento'>Complemento</label><input id='complemento' type='text' name='complemento' value='' /></p>");
            
           	out.println("<p><button id='submit' type='submit'>Submit</button></p>");
            out.println("</form>");
            out.println("</div>");
            out.println("</div>");
            out.println("</div>");         

	}catch(Exception e){
		out.println(e.toString());
	}
		
	%>

	<a href="index.html" class="btn"><i class="icon-white icon-heart"></i> Página Inicial</a>
</body>
</html>