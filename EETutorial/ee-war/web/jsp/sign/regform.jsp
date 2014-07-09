<%
    String uName=request.getParameter("userName");
%>
<form action="" method="post">
    <label for="userName">Enter your full name: </label>
    <input type="text" name="fullName"/><br>
    <label for="userName">Choose User Name: </label>
    <%if(uName!=null) { %>
    <input type="text" name="userName" value="<%=uName%>"/><br>
    <%}else{%>
    <input type="text" name="userName"/><br> <%}%>
    <label for="pass">Choose password: </label>
    <input type="password" name="pass"/><br>
    <input type="submit" value="Sign Up" name="signUp"/>
    <input type="hidden" name="type" value="sup"/>
    
</form>