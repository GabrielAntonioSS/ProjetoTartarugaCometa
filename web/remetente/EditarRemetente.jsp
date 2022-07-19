<%-- 
    Document   : EditarRemetente
    Created on : 17/07/2022, 14:40:29
    Author     : Gabriel
--%>

<%@page import="DTO.RemetenteDTO"%>
<%@page import="DAO.RemetenteDAO"%>
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
                objRemetenteDTO.setId(Integer.valueOf(request.getParameter("id")));
                objRemetenteDTO.setCnpj_cpf(request.getParameter("cpf_cnpj_Dest"));
                objRemetenteDTO.setNome_razao(request.getParameter("nome_Dest"));
                objRemetenteDTO.setEndereco(request.getParameter("endereco_Dest"));
                objRemetenteDTO.setCep(request.getParameter("cep_Dest"));
                objRemetenteDTO.setRg(request.getParameter("rg_Dest"));
                objRemetenteDTO.setEmail(request.getParameter("email_Dest"));
                objRemetenteDTO.setNumero(request.getParameter("numero_Dest"));

                RemetenteDAO objRemetenteDAO = new RemetenteDAO();
                objRemetenteDAO.EditarRemetente(objRemetenteDTO);

                out.print("Remetente Editado");

            } catch (Exception e) {
            System.err.println(e.getMessage());
            }
        %>
    </body>
</html>
