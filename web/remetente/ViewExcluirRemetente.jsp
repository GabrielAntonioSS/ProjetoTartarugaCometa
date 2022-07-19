<%-- 
    Document   : ViewExcluirRemetente
    Created on : 17/07/2022, 12:25:10
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
        <form action="ExcluirRemetente.jsp" method="POST">
         
            <label> Código do Remetente </label> <br>
            <input type ="text" name="id" 
                   value="<%=request.getParameter("id") %>"> <Br>
            
            <label> CPF/CNPJ do Remetente </label> <br>
            <input type ="text" name="cpf_cnpj_Dest" 
                   value="<%=request.getParameter("cpf_cnpj_Remet") %>"> <Br>
                   
            <label> Nome do Remetente </label> <br>
            <input type ="text" name="nome_Dest"
                   value="<%=request.getParameter("nome_Remet") %>"><Br>

            <label> Endereço do Remetente </label> <br>
            <input type ="text" name="endereco_Dest"
                   value="<%=request.getParameter("endereco_Remet") %>"><Br>

            <label> CEP do Remetente </label> <br>
            <input type ="text" name="cep_Dest"
                   value="<%=request.getParameter("cep_Remet") %>"><Br>

            <label> RG do Remetente </label> <br>
            <input type ="text" name="rg_Dest"
                   value="<%=request.getParameter("rg_Remet") %>"><Br>

            <label> E-mail do Remetente </label> <br>
            <input type ="text" name="email_Dest"
                   value="<%=request.getParameter("email_Remet") %>"><Br>

            <label> Numero do Remetente </label> <br>
            <input type ="text" name="numero_Dest"
                   value="<%=request.getParameter("numero_Remet") %>"><Br>

            <button type="submit">Excluir </button>      
        </form>
    </body>
</html>
