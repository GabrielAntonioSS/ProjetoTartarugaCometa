<%-- 
    Document   : ViewExcluirProduto
    Created on : 17/07/2022, 13:18:10
    Author     : Batata
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="ExcluirProduto.jsp" method="POST"> 

            <label> Código do Produto </label> <br>
            <input type ="text" name="id"
                   value="<%=request.getParameter("id")%>"> <Br>
            
            <label> Nome do Produto </label> <br>
            <input type ="text" name="nome_prod"
                   value="<%=request.getParameter("nome_prod")%>"> <Br>


            <label> Peso do Produto: </label> <br>
            <input type ="text" name="peso_prod"
                   value="<%=request.getParameter("peso_prod")%>"> <Br>

            <label> Volume do Produto: </label> <br>
            <input type ="text" name="volume_prod"
                   value="<%=request.getParameter("volume_prod")%>"> <Br>

            <label> Valor do Produto: </label> <br>
            <input type ="text" name="valor_prod"
                   value="<%=request.getParameter("valor_prod")%>"> <Br>

            <button type="submit">Excluir </button>      

        </form>   
    </body>
</html>
