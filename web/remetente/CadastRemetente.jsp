<%-- 
    Document   : CadastRemetente
    Created on : 15/07/2022, 22:44:03
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
                objRemetenteDTO.setCnpj_cpf(request.getParameter("cpf_cnpj_Remet"));
                objRemetenteDTO.setNome_razao(request.getParameter("nome_Remet"));
                objRemetenteDTO.setEndereco(request.getParameter("endereco_Remet"));
                objRemetenteDTO.setCep(request.getParameter("cep_Remet"));
                objRemetenteDTO.setRg(request.getParameter("rg_Remet"));
                objRemetenteDTO.setEmail(request.getParameter("email_Remet"));
                objRemetenteDTO.setNumero(request.getParameter("numero_Remet"));

                RemetenteDAO objRemetenteDAO = new RemetenteDAO();
                objRemetenteDAO.CadastrarRemetente(objRemetenteDTO);

                out.print("Remetente cadastrado");

            } catch (Exception e) {
                System.err.println(e.getMessage());
            }

        %>

    </body>
</html>
