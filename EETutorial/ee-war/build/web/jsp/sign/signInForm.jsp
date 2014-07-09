<%
    
    String sup=request.getParameter("signUp");
    String sin=request.getParameter("signIn");
    String fwd;
    if(sup!=null) {
            RequestDispatcher dispatcher =getServletContext().getRequestDispatcher("/jsp/sign/regform.jsp");
        dispatcher.forward(request, response);
    } else if(sin!=null) {
            RequestDispatcher dispatcher =getServletContext().getRequestDispatcher("/checkpwds");
        dispatcher.forward(request, response);
        fwd="/checkpwds";
    }
    
%>
<form action="" method="post">
    <input type="text" name="userName"/><br>
    <input type="password" name="pass"/><br>
    <input type="submit" name="signIn" value="Sign In"/>
    <input type="submit" name="signUp" value="Sign Up"/>
</form>