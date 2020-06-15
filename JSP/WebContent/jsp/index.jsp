
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 
<%-- taglib para obtener el user-agent sin codigo java --%>
<%--   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix='c'%>   --%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pagina web</title>

<style>

header
{
	background: #15399F;
	color: white;
	width: 650px;
	height: auto;
	border-radius: 15px;
}

main
{
	font-size: 25px;
}

#i1
{
	position: relative;
	top: -20px;
}

</style>
</head>

<jsp:useBean id="myBean" class="project.Servlet" scope="request" /> 

<body>

	<center>
		<jsp:getProperty name="myBean" property="saludo" />
		<br>
		<br>
		<img alt="java" src="https://i.blogs.es/6091fa/java/450_1000.jpg" width="275" height="200">
		<img id="i1" alt="eclipse" src="https://2.bp.blogspot.com/-D-6hFNe_60s/WcPdLj7IHtI/AAAAAAAAMKk/djaJyzGOgu4AX31iYMD_NwGkBLqci1-RQCLcBGAs/s1600/eclipse-800x426.png"  width="300" height="160">
		<br>
		<br>
		Fecha de hoy:
		<br>
		<jsp:getProperty name="myBean" property="fecha" />
		
		<br>
		<br>
		Informacion del User-Agent:
		<br>
		<jsp:getProperty name="myBean" property="userAgent" />
		<br>
		
		<c:set var="ua" value="${header['User-Agent']}" scope="session"/>
		<c:out value="${ua}"/>
		
		
		
		
	
	</center>
	
</body>
</html>
