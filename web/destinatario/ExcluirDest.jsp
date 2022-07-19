<%-- 
    Document   : ExcluirDest
    Created on : 17/07/2022, 11:48:01
    Author     : Gabriel
--%>

<%@page import="DAO.DestinatarioDAO"%>
<%@page import="DTO.DestinatarioDTO"%>
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
                DestinatarioDTO objDestinatarioDTO = new DestinatarioDTO();
                objDestinatarioDTO.setId(Integer.parseInt(request.getParameter("id")));

                DestinatarioDAO objDestinatarioDAO = new DestinatarioDAO();
                objDestinatarioDAO.ExcluirDestinatario(objDestinatarioDTO);

                out.print("Destinatário Excluido");

            } catch (Exception e) {
             System.err.println(e.getMessage());
            }
        %>
    </body>
</html>
