<%-- 
    Document   : index
    Created on : Aug 26, 2015, 2:26:22 PM
    Author     : behminyan
--%>

<%@page import="java.util.Random"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>4D result</title>
        
        <style>
            h1, .centre{
                text-align: center;
            }
            table.blue{
                margin-left:auto; 
                margin-right:auto;
                padding:0px;
                box-shadow: 5px 5px 2px #888888;
                border:1px solid #000000;
            }
            table.blue tr:nth-child(odd){ background-color:#aad4ff; }
            table.blue tr:nth-child(even){ background-color:#ffffff; }
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
            int num;
            try{
                num = Integer.parseInt(request.getParameter("num"));            
            }catch(NumberFormatException e){
                out.write("<h1>You did not enter a number ):</h1></body></html>");
                return;
            }
            
            out.write("<h1>You have asked for <b><u>" + num + "</b></u> numbers. </h1>");
            
            if(num < 0){
                out.println("<div class='centre'>Number is invalid!</div></body></html>");
                return;
            }
            
            out.write("</div><table class='blue'>");
            out.write("<tr><th>S/N</th><th>Random Number</th></tr>");
            for(int i = 1; i <= num; i++){
                out.write("<tr>");
                out.write("<td>"+ i + "</td>");
                Random r = new Random();
                out.write("<td>"+ r.nextInt(10) + r.nextInt(10) + r.nextInt(10) + r.nextInt(10) +"</td>");
                out.write("</tr>");
            }
            out.write("</table>");
            
        %>
    </body>
    
</html>