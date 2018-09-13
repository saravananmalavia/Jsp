<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!--JavaServer Pages Standard Tag Library (JSTL) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Tag Example</title>
</head>
<body>
<font color="blue" size="5"> 
<c:set var="name1" value="e-vision labs"></c:set>
<c:set var="name2" value="Trivandrum"></c:set>
<c:choose>
<c:when test="${name1 eq 'e-vision labs'}">
<c:set var="name" value="${name1}${name2}" />
<c:out value="${name}"></c:out>
</c:when>

<c:otherwise>
<b>${name}</b>
</c:otherwise>
</c:choose> 
</font>
</body>
</html>