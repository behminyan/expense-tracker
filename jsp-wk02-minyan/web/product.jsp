<%-- 
    Document   : product
    Created on : Aug 28, 2015, 10:16:32 AM
    Author     : behminyan
--%>


<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="seisfun.Product"%>
<%
    HashMap<String, Product> productList = new HashMap<>();
    productList.put("0000",new Product("0000", "Apples", 5.1));
    productList.put("0100",new Product("0100", "Pears", 6.2));
    productList.put("0001",new Product("0001", "Oranges", 7.3));
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Product</title>
        <style>
            h1{
                text-align: center;
            }
            .left{
                float: left;
            }
            table.blue{
                margin-left:auto; 
                margin-right:auto;
                padding:0px;
                box-shadow: 5px 5px 2px #888888;
                border:1px solid #000000;
            }
            table.blue th{ background-color:#aad4ff; }
            table.blue td{ background-color:#ffffff; }
            table.blue th,td{
                vertical-align:middle;
                border:1px solid #000000;
                border-width:0px 1px 1px 0px;
                text-align:center;
                padding:9px;
                font-size:15px;
                font-family:Arial;
                font-weight:normal;
                color:#000000;
            }
        </style>
    </head>
    <body>
        <form class='left' method = 'post' action = 'index.jsp' >
            <input type = 'submit' value = '<< Return to Main' />
        </form>
        <br/><br/>
        <%
            String code = request.getParameter("code");
            Product pdt = productList.get(code);
            if(pdt==null){
                out.write("<h1>Product not found ): </h1>");
            }else{
                out.write("<h1><u>Your Product</u></h1>");
                out.write("<table class = 'blue'>");
                out.write("<tr><th>Name</th><td>"+pdt.getName()+"</td></tr>");
                String price = new DecimalFormat("#.00").format(pdt.getPrice());
                out.write("<tr><th>Price</th><td>$"+price+"</td></tr>");
                out.write("</table>");
            }
        %>  
    </body>
    
</html>
