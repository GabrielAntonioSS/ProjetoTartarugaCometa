<%-- 
    Document   : ListarRemetente
    Created on : 16/07/2022, 16:45:56
    Author     : Gabriel
--%>

<%@page import="java.util.ArrayList"%>
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

                RemetenteDAO objRemetenteDAO = new RemetenteDAO();
                ArrayList<RemetenteDTO> lista = objRemetenteDAO.ListarRemetente();

                for (int num = 0; num < lista.size(); num++) {

                    out.print("Código do Remetente: " + lista.get(num).getId() + "<br>");
                    out.print("CPF/CNPJ do Remetente: " + lista.get(num).getCnpj_cpf() + "<br>");
                    out.print("Nome do Remetente: " + lista.get(num).getNome_razao() + "<br>");
                    out.print("Endereço do Remetente: " + lista.get(num).getEndereco() + "<br>");
                    out.print("CEP do Remetente: " + lista.get(num).getCep() + "<br>");
                    out.print("RG do Remetente: " + lista.get(num).getRg() + "<br>");
                    out.print("Email do Remetente: " + lista.get(num).getEmail() + "<br>");
                    out.print("Numero do Remetente: " + lista.get(num).getNumero() + "<br>");
                    out.print("Data de Criação do Remetente: " + lista.get(num).getData_criado() + "<br>");
                    out.print("Data de Nascimento do Remetente: " + lista.get(num).getData_nasc() + "<br>");

                    out.print("<a href='ViewExcluirRemetente.jsp?id="
                            + lista.get(num).getId() + "&cpf_cnpj_Remet="
                            + lista.get(num).getCnpj_cpf() + "&nome_Remet="
                            + lista.get(num).getNome_razao() + "&endereco_Reme=t"
                            + lista.get(num).getEndereco() + "&cep_Remet="
                            + lista.get(num).getCep() + "&rg_Remet="
                            + lista.get(num).getRg() + "&email_Remet="
                            + lista.get(num).getEmail() + "&numero_Remet="
                            + lista.get(num).getNumero() + "&data_criacao_Remet="
                            + lista.get(num).getData_criado() + "&data_nascimento_Remet="
                            + lista.get(num).getData_nasc() + "'> Excluir </a>");

                    out.print("<a href='ViewEditarRemetente.jsp?id="
                            + lista.get(num).getId() + "&cpf_cnpj_Remet="
                            + lista.get(num).getCnpj_cpf() + "&nome_Remet="
                            + lista.get(num).getNome_razao() + "&endereco_Remet="
                            + lista.get(num).getEndereco() + "&cep_Remet="
                            + lista.get(num).getCep() + "&rg_Remet="
                            + lista.get(num).getRg() + "&email_Remet="
                            + lista.get(num).getEmail() + "&numero_Remet="
                            + lista.get(num).getNumero() + "&data_criacao_Remet="
                            + lista.get(num).getData_criado() + "&data_nascimento_Remet="
                            + lista.get(num).getData_nasc() + "'> Editar </a>");

        %><br><br><%                        }

            } catch (Exception e) {
                System.err.println(e.getMessage());

            }
        %>
    </body>
</html>
