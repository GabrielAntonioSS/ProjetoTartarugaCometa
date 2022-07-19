<%-- 
    Document   : ListarDest
    Created on : 16/07/2022, 14:53:47
    Author     : Gabriel
--%>

<%@page import="DTO.DestinatarioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.DestinatarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../style/dataview.css">
    </head>
    <body>
        <%
            try {

                DestinatarioDAO objDestinatarioDAO = new DestinatarioDAO();
                ArrayList<DestinatarioDTO> lista = objDestinatarioDAO.ListarDestinatario();

                for (int num = 0; num < lista.size(); num++) {

                    out.print("Código do Destinatario:" + lista.get(num).getId() + "<br>");
                    out.print("CPF/CNPJ do Destinatario:" + lista.get(num).getCnpj_cpf() + "<br>");
                    out.print("Nome do Destinatario:" + lista.get(num).getNome_razao() + "<br>");
                    out.print("Endereço do Destinatario:" + lista.get(num).getEndereco() + "<br>");
                    out.print("CEP do Destinatario:" + lista.get(num).getCep() + "<br>");
                    out.print("RG do Destinatario:" + lista.get(num).getRg() + "<br>");
                    out.print("Email do Destinatario:" + lista.get(num).getEmail() + "<br>");
                    out.print("Numero do Destinatario:" + lista.get(num).getNumero() + "<br>");
                    out.print("Data de Criação do Destinatario:" + lista.get(num).getData_criado() + "<br>");
                    out.print("Data de Nascimento do Destinatario:" + lista.get(num).getData_nasc() + "<br>");

                    out.print("<a href='ViewExcluirDest.jsp?id="
                            + lista.get(num).getId() + "&cpf_cnpj_Dest="
                            + lista.get(num).getCnpj_cpf() + "&nome_Dest="
                            + lista.get(num).getNome_razao() + "&endereco_Dest="
                            + lista.get(num).getEndereco() + "&cep_Dest="
                            + lista.get(num).getCep() + "&rg_Dest="
                            + lista.get(num).getRg() + "&email_Dest="
                            + lista.get(num).getEmail() + "&numero_Dest="
                            + lista.get(num).getNumero() + "&data_criacao_Dest="
                            + lista.get(num).getData_criado() + "&data_nascimento_Dest="
                            + lista.get(num).getData_nasc() + "'> Excluir </a>");

                    out.print("<a href='ViewEditarDest.jsp?id="
                            + lista.get(num).getId() + "&cpf_cnpj_Dest="
                            + lista.get(num).getCnpj_cpf() + "&nome_Dest="
                            + lista.get(num).getNome_razao() + "&endereco_Dest="
                            + lista.get(num).getEndereco() + "&cep_Dest="
                            + lista.get(num).getCep() + "&rg_Dest="
                            + lista.get(num).getRg() + "&email_Dest="
                            + lista.get(num).getEmail() + "&numero_Dest="
                            + lista.get(num).getNumero() + "&data_criacao_Dest="
                            + lista.get(num).getData_criado() + "&data_nascimento_Dest="
                            + lista.get(num).getData_nasc() + "'> Editar </a>");

        %>         <br><br>       <%                }

            } catch (Exception e) {
                System.err.println(e.getMessage());

            }
        %>
    </body>
</html>
