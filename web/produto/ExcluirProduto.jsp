<%-- 
    Document   : ExcluirProduto
    Created on : 17/07/2022, 13:17:59
    Author     : Gabriel
--%>

<%@page import="DAO.ProdutoDAO"%>
<%@page import="DTO.ProdutoDTO"%>
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
                ProdutoDTO objProdutoDTO = new ProdutoDTO();
                objProdutoDTO.setId(Integer.parseInt(request.getParameter("id")));

                ProdutoDAO objProdutoDAO = new ProdutoDAO();
                objProdutoDAO.ExcluirProduto(objProdutoDTO);
                
                out.print("Produto Excluido");

            } catch (Exception e) {
            }
        %>
    </body>
</html>
