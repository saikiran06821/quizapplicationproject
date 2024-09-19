

<%@page import="utility.SqlUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>
        <%
           
            session.removeAttribute("newuser");
            session.invalidate();
            SqlUtil.user=null;
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
            %>
    </body>
</html>
