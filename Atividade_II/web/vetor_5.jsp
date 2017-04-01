<%-- 
    Document   : vetor_5
    Created on : 30/03/2017, 17:49:03
    Author     : haguilar
--%>

<%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Questão 5</h1>
        <form action="vetor_5.jsp" method="POST">
            Adicione um numero: <input type="text" name="n"/>
            <input type="submit" value="Adicionar no Vetor"/>
        </form>
        <%!
            int indice=0, max = 10;
            int[] vetor = new int[max];
            int i, somaPositivos = 0, qtdPares = 0;
        %>
        <%
            if(request.getParameter("n") == null){
                out.println("objeto nulo");
            }else{
                String numero = request.getParameter("n");
                if(indice >= vetor.length){
                
                    for (i = 0; i < vetor.length; i++){
                        if(vetor[i] % 2 == 0)
                            qtdPares++;
                        
                        if (vetor[i] > 0)
                            somaPositivos += vetor[i];
                    }
                    %>
                        <h2> Soma dos números positivos: <%=somaPositivos%></h2>
                        <h2> Quantidade de números pares: <%=qtdPares%></h2>
                    <%
                } else if(!numero.equals("")){
                    vetor[indice] = Integer.valueOf(numero);
                    indice++;
                }
            }
        %>
         <table>
            <tr>
            <td>Indice</td>
            <td>Valor</td>
            </tr>
                <%
                    for(int i=0;i< vetor.length;i++){
                %>
            <tr>
                <td><%=i %></td>
                <td><%=vetor[i] %></td>
            </tr>
                <%
                }
                %>
        </table>
    </body>
</html>
