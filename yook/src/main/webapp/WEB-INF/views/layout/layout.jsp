<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head> 
 
 	<body>
	<!-- --------------------------- <header> --------------------------------------- -->
	<div id="header">
	<tiles:insertAttribute name="header"/>
   </div>

	
	<!-- --------------------------- <body> --------------------------------------- -->
	<div id="body">
		<tiles:insertAttribute name="body"/>
	</div>
	
	

    <!-- ------------------- <footer> --------------------------------------- -->
	<div id="footer">
	<tiles:insertAttribute name="footer"/>
</div>
      
     
      
    </body>
    </html>