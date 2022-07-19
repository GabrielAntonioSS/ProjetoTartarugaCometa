<%-- 
    Document   : ExcluirRemetente
    Created on : 17/07/2022, 12:31:14
    Author     : Gabriel
--%>

<%@page import="DAO.RemetenteDAO"%>
<%@page import="DTO.RemetenteDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                RemetenteDTO objRemetenteDTO = new RemetenteDTO();
                objRemetenteDTO.setId(Integer.parseInt(request.getParameter("id")));

                RemetenteDAO objRemetenteDAO = new RemetenteDAO();
                objRemetenteDAO.ExcluirRemetente(objRemetenteDTO);

                out.print("Remetente cadastrado");

            } catch (Exception e) {
            System.err.println(e.getMessage());
            }
        %>
    </body>
</html>
