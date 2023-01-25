<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    float resultado = 0;
    float num1 = 0;
    float num2 = 0;
    
    
    if ("POST".equals(request.getMethod())) {
    	
    	num1 = Float.parseFloat(request.getParameter("num1"));
    	num2 = Float.parseFloat(request.getParameter("num2"));
    	
    	 // caso não seja null, significa que o botão correspondente foi acionado, para os casos de somar, subtrair e limpar os campos.   	
   		if (request.getParameter("somar") != null) {
   			resultado = num1 + num2;
   				} else if (request.getParameter("subtrair") != null) {
   					resultado = num1 - num2;
   				} else {
   					num1 = 0;
   		   			num2 = 0;
   				}
   }
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculadora Simples</title>
</head>
<body>
<h1>Calculadora - Teste Atlantic</h1>
  
  <form method="post"> 
  Número 1 <br />
  <input type="number" required name="num1" step="any" value="<%= num1 %>" style="text-align: right; font-size:1.1em; width: 200px"/> <br /><br />
  Número 2 <br />  
  <input type="number" required name="num2" step="any" value="<%= num2 %>" style="text-align: right; font-size:1.1em; width: 200px"/> <br /><br />

 <br />  
  Resultado: <input type="number" required name="resultado" step="any" value="<%= resultado %>" style="text-align: right; font-size:1.1em;" />
  <br />
  <br />
  <input type="submit" value="Somar" name="somar" />
  <input type="submit" value="Subtrair" name="subtrair" />
  <input type="submit" value="Limpar" name="limpar" />
  <br />
  
  </form>
</body>
</html>