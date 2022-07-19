<%-- 
    Document   : EditarProduto
    Created on : 17/07/2022, 14:40:21
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
                objProdutoDTO.setNome(request.getParameter("nome_prod"));
                objProdutoDTO.setPeso(request.getParameter("peso_prod"));
                objProdutoDTO.setVolume(request.getParameter("volume_prod"));
                objProdutoDTO.setValor(request.getParameter("valor_prod"));
                
                ProdutoDAO objProdutoDAO = new ProdutoDAO();
                objProdutoDAO.EditarProduto(objProdutoDTO);
                
                out.print("Produto Editado");

            } catch (Exception e) {
            }

        %>
    </body>
</html>
