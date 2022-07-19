<%-- 
    Document   : ExcluirEntrega
    Created on : 17/07/2022, 12:59:51
    Author     : Gabriel
--%>

<%@page import="DAO.EntregaDAO"%>
<%@page import="DTO.EntregaDTO"%>
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
                EntregaDTO objEntregaDTO = new EntregaDTO();
                objEntregaDTO.setId(Integer.parseInt(request.getParameter("id")));
                
                EntregaDAO objEntregaDAO = new EntregaDAO();
                objEntregaDAO.ExcluirEntrega(objEntregaDTO);
                           
                out.print("Entrega Excluida");
                    
                } catch (Exception e) {
                System.err.println(e.getMessage());
                }
        %>
    </body>
</html>
