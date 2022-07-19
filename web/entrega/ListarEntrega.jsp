<%-- 
    Document   : ListaEntrega
    Created on : 16/07/2022, 15:18:40
    Author     : Gabriel
--%>

<%@page import="DTO.EntregaDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.EntregaDAO"%>
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

                EntregaDAO objEntregaDAO = new EntregaDAO();
                ArrayList<EntregaDTO> lista = objEntregaDAO.ListarEntrega();

                for (int num = 0; num < lista.size(); num++) {

                    out.print("Código: " + lista.get(num).getId() + "<br>");
                    out.print("Código do Remetente:: " + lista.get(num).getRemet().getId() + "<br>");
                    out.print("Código do Destinatario: " + lista.get(num).getDest().getId() + "<br>");
                    out.print("Código do Produto: " + lista.get(num).getProd().getId() + "<br>");

                    out.print("<a href='ViewExluirEntrega.jsp?id="
                            + lista.get(num).getId() + "&remetente_id="
                            + lista.get(num).getRemet().getId() + "&destinatario_id="
                            + lista.get(num).getDest().getId() + "&produto_id="
                            + lista.get(num).getProd().getId() + "'> Excluir </a>");

                    out.print("<a href='ViewEditarEntrega.jsp?id="
                            + lista.get(num).getId() + "&remetente_id="
                            + lista.get(num).getRemet().getId() + "&destinatario_id="
                            + lista.get(num).getDest().getId() + "&produto_id="
                            + lista.get(num).getProd().getId() + "'> Editar </a>");

        %><br><br><%                        }
                    } catch (Exception e) {
                    System.err.println(e.getMessage());
                    }


        %>

    </body>
</html>
