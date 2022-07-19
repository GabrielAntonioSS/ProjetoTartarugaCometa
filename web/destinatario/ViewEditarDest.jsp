<%-- 
    Document   : ViewExcluirDest
    Created on : 17/07/2022, 14:28:27
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
        <form action="EditarDest.jsp" method="POST">

            <label> Código do Destinatario: </label> <br>
            <input type ="text" name="id" 
                   value="<%=request.getParameter("id")%>"> <Br>

            <label> CPF/CNPJ do Destinatario: </label> <br>
            <input type ="text" name="cpf_cnpj_Dest" 
                   value="<%=request.getParameter("cpf_cnpj_Dest")%>"> <Br>

            <label> Nome do Destinatario: </label> <br>
            <input type ="text" name="nome_Dest"
                   value="<%=request.getParameter("nome_Dest")%>"><Br>

            <label> Endereço do Destinatario: </label> <br>
            <input type ="text" name="endereco_Dest"
                   value="<%=request.getParameter("endereco_Dest")%>"><Br>

            <label> CEP do Destinatario: </label> <br>
            <input type ="text" name="cep_Dest"
                   value="<%=request.getParameter("cep_Dest")%>"><Br>

            <label> RG do Destinatario: </label> <br>
            <input type ="text" name="rg_Dest"
                   value="<%=request.getParameter("rg_Dest")%>"><Br>

            <label> E-mail do Destinatario: </label> <br>
            <input type ="text" name="email_Dest"
                   value="<%=request.getParameter("email_Dest")%>"><Br>

            <label> Numero do Destinatario: </label> <br>
            <input type ="text" name="numero_Dest"
                   value="<%=request.getParameter("numero_Dest")%>"><Br>

            <button type="submit">Editar </button>      
        </form>
    </body>
</html>
