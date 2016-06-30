<!DOCTYPE html>

<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="en">
<head>
  <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>CAS &#8211; Central Authentication Service</title>

    <meta name="_csrf" content="${_csrf.token}"/>
    <meta name="_csrf_header" content="${_csrf.headerName}"/>


    <spring:theme code="standard.custom.css.file" var="customCssFile" />
    <link rel="stylesheet" href="<c:url value="${customCssFile}" />" />
    <link rel="icon" href="<c:url value="/favicon.ico" />" type="image/x-icon" />
    <!--[if IE 7 ]>
   <style>
    #logo {
  zoom:140%;
  margin-top:-20px;
    }
  #login .btn-submit {
    margin-top:50px;
}

  #login .btn-reset {
    margin-top:50px;
}

  #copyright,  #copyright2{
  color:white;
  text-align: center;
  }
  #copyright a:link{
  color: white;
  }
  #copyright a:visited{
  color: black;
  }
  img{
    zoom:120%;

  }
   </style>
    <![endif]-->
</head>
<body id="cas">
<!-- the code below is for header, includes logo, link and header background  -->
<div class = "topMenu">
 <a id="logo" ></a>

 <img src = "images/MDTALogo-01.png">

 <li id="homeMenuButton"><a href="${urlBase}login.html" class="top_menu">Home</a></li>
 <div class="CornerLink">

 <a style="text-decoration: none; padding: 0px 5px 0px 0px; color: #000000;" target="_blank" href="http://www.maryland.gov" >Maryland.gov</a> 
 <a style="text-decoration: none; padding: 0px 5px 0px 5px; color: #000000;" target="_blank" href="http://www.doit.state.md.us/phonebook/">Phone Directory</a> 
 <a style="text-decoration: none; padding: 0px 5px 0px 5px; color: #000000;" target="_blank" href="http://www.maryland.gov/pages/agency_directory.aspx">State Agencies</a>
 <a style="text-decoration: none; padding: 0px 0px 0px 5px; color: #000000;" target="_blank" href="http://www.maryland.gov/pages/online_services.aspx">Online Services v2.2.7</a>
 </div>
</div>

<div id="container">
  <header>
  </header>
   <div class = "welcomeText"><p>Welcome to the Project Management and Controls System(PMCS). Please enter your credentials below:</p></div>
  <div id="content">
