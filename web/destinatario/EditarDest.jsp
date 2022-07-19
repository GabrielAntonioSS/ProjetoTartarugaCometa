<%-- 
    Document   : EditarDest
    Created on : 17/07/2022, 14:40:01
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
                objDestinatarioDTO.setId(Integer.valueOf(request.getParameter("id")));
                objDestinatarioDTO.setCnpj_cpf(request.getParameter("cpf_cnpj_Dest"));
                objDestinatarioDTO.setNome_razao(request.getParameter("nome_Dest"));
                objDestinatarioDTO.setEndereco(request.getParameter("endereco_Dest"));
                objDestinatarioDTO.setCep(request.getParameter("cep_Dest"));
                objDestinatarioDTO.setRg(request.getParameter("rg_Dest"));
                objDestinatarioDTO.setEmail(request.getParameter("email_Dest"));
                objDestinatarioDTO.setNumero(request.getParameter("numero_Dest"));

                DestinatarioDAO objDestinatarioDAO = new DestinatarioDAO();
                objDestinatarioDAO.EditarDestinatario(objDestinatarioDTO);

                out.print("Destinatário Editado");

            } catch (Exception e) {
             System.err.println(e.getMessage());
            }
        %>
    </body>
</html>
