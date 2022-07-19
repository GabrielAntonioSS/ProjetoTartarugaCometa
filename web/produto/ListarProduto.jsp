<%-- 
    Document   : ListarProduto
    Created on : 16/07/2022, 16:45:43
    Author     : Gabriel
--%>

<%@page import="DTO.ProdutoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProdutoDAO"%>
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
                ProdutoDAO objProdutoDAO = new ProdutoDAO();
                ArrayList<ProdutoDTO> lista = objProdutoDAO.ListarProduto();

                for (int num = 0; num < lista.size(); num++) {

                    out.print("Código do Produto: " + lista.get(num).getId() + "<br>");
                    out.print("Nome do Produto: " + lista.get(num).getNome() + "<br>");
                    out.print("Data de Criação: " + lista.get(num).getData_criado() + "<br>");
                    out.print("Peso do Produto: " + lista.get(num).getPeso() + "<br>");
                    out.print("Volume do Produto: " + lista.get(num).getVolume() + "<br>");
                    out.print("Valor do Produto: " + lista.get(num).getValor() + "<br>");

                    out.print("<a href='ViewExcluirProduto.jsp?id="
                            + lista.get(num).getId() + "&nome_prod="
                            + lista.get(num).getNome() + "&data_criacao_produto="
                            + lista.get(num).getData_criado() + "&peso_prod="
                            + lista.get(num).getPeso() + "&volume_prod="
                            + lista.get(num).getVolume() + "&valor_prod="
                            + lista.get(num).getValor() + "'> Excluir </a>");

                    out.print("<a href='ViewEditarProduto.jsp?id="
                            + lista.get(num).getId() + "&nome_prod="
                            + lista.get(num).getNome() + "&data_criacao_produto="
                            + lista.get(num).getData_criado() + "&peso_prod="
                            + lista.get(num).getPeso() + "&volume_prod="
                            + lista.get(num).getVolume() + "&valor_prod="
                            + lista.get(num).getValor() + "'> Editar </a>");

        %><br><br><%                        }

                    } catch (Exception e) {
                    }
        %>
    </body>
</html>
