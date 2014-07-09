<%-- 
    Document   : index
    Created on : Jul 9, 2014, 10:44:31 PM
    Author     : dns
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <style>
            body {
                position:absolute;
                width:100%;
                height:100%;
                padding:5px;
            }
            div {
                border:1px solid black;
            }
            
        </style>
    </head>
    <body>
       <%
           String name=(String)session.getAttribute("name");          
       %>
           
       <div style="position:fixed;height:5%;width:100%;left:0;top:0;background:black;color:white"/>
       <div style="float:left;margin:7% 2% 20% 1%;width:24%;height:100px;">
           <% if(name!=null) { %>
             <span color="red">Hello, <b><%=name%></b></span>
           <%} else {%>
           <%@include file="sign/signInForm.jsp"%>
           <%}%>
       </div>
       
       <div style="position:fixed;left:0;bottom:0;height:10%;width:100%;color:white;background:green"/>
    </body>
</html>
