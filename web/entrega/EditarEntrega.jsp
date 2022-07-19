<%-- 
    Document   : EditarEntrega
    Created on : 17/07/2022, 14:40:12
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
                objEntregaDTO.getRemet().setId(Integer.parseInt(request.getParameter("remetente_id")));
                objEntregaDTO.getDest().setId(Integer.parseInt(request.getParameter("destinatario_id")));
                objEntregaDTO.getProd().setId(Integer.parseInt(request.getParameter("produto_id")));
                
                EntregaDAO objEntregaDAO = new EntregaDAO();
                objEntregaDAO.EditarEntrega(objEntregaDTO);
                           
                out.print("Entrega Editada");
                    
                } catch (Exception e) {
                System.err.println(e.getMessage());
                }
        %>
    </body>
</html>
