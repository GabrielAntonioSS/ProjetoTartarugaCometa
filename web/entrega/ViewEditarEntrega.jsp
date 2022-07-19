<%-- 
    Document   : ViewEditarEntrega
    Created on : 17/07/2022, 14:34:39
    Author     : Gabriel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="EditarEntrega.jsp" method="POST"> 

            <label> Código da Entrega </label> <br>
            <input type ="text" name="id"
                   value="<%=request.getParameter("id")%>"> <Br>            

            <label> Código do Remetente: </label> <br>
            <input type ="text" name="remetente_id"
                   value="<%=request.getParameter("remetente_id")%>"> <Br>

            <label> Código do Destinatario: </label> <br>
            <input type ="text" name="destinatario_id"
                   value="<%=request.getParameter("destinatario_id")%>"> <Br>

            <label> Código do Produto: </label> <br>
            <input type ="text" name="produto_id"
                   value="<%=request.getParameter("produto_id")%>"> <Br>

            <button type="submit">Editar </button>      

        </form> 
    </body>
</html>
