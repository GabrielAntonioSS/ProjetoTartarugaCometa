<%-- 
    Document   : CadastEntrega
    Created on : 15/07/2022, 21:57:23
    Author     : Gabriel
--%>

<%@page import="DTO.DestinatarioDTO"%>
<%@page import="DTO.EntregaDTO"%>
<%@page import="DAO.EntregaDAO"%>
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
                objEntregaDTO.getRemet().setId(Integer.parseInt(request.getParameter("remetente_id")));
                objEntregaDTO.getDest().setId(Integer.parseInt(request.getParameter("destinatario_id")));
                objEntregaDTO.getProd().setId(Integer.parseInt(request.getParameter("produto_id")));
                
                EntregaDAO objEntregaDAO = new EntregaDAO();
                objEntregaDAO.CadastrarEntrega(objEntregaDTO);
                    
                } catch (Exception e) {
                System.err.println(e.getMessage());
                }
        %>
        
    </body>
</html>
