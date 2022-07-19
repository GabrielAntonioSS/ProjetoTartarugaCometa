<%-- 
    Document   : CadastDest
    Created on : 15/07/2022, 20:37:24
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
                objDestinatarioDTO.setCnpj_cpf(request.getParameter("cpf_cnpj_Dest"));
                objDestinatarioDTO.setNome_razao(request.getParameter("nome_Dest"));
                objDestinatarioDTO.setEndereco(request.getParameter("endereco_Dest"));
                objDestinatarioDTO.setCep(request.getParameter("cep_Dest"));
                objDestinatarioDTO.setRg(request.getParameter("rg_Dest"));
                objDestinatarioDTO.setEmail(request.getParameter("email_Dest"));
                objDestinatarioDTO.setNumero(request.getParameter("numero_Dest"));

                DestinatarioDAO objDestinatarioDAO = new DestinatarioDAO();
                objDestinatarioDAO.CadastrarDestinatario(objDestinatarioDTO);

                out.print("Destinatário cadastrado");

            } catch (Exception e) {
                System.err.println(e.getMessage());
            }

        %>

    </body>
</html>
