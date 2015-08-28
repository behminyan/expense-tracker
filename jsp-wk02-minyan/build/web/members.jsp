<%-- 
    Document   : members.jsp
    Created on : Aug 28, 2015, 11:18:45 AM
    Author     : behminyan
--%>

<%@page import="dao.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="entity.Member"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Members</title>
        
        <style>
            h1{
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
        <h1>Here are your members!</h1>
        <table class='blue'>
        <%
            out.write("<tr><th>S/N</th><th>Name</th><th>Age</th><th>Gender</th></tr>");
            ArrayList<Member> members = MemberDAO.retrieveAll();
            for(int i = 0; i < members.size(); i++){
                out.write("<tr>");
                out.write("<td>"+ (i+1) + "</td>");
                Member m = members.get(i);
                out.write("<td>"+ m.getName() +"</td>");
                out.write("<td>"+ m.getAge() +"</td>");
                
                switch(m.getGender()){
                    case 'M':
                    case 'm':
                        out.write("<td>Male</td>");
                        break;
                    case 'F':
                    case 'f':
                        out.write("<td>Female</td>");
                        break;
                    default:
                        out.write("<td>Unknown</td>");
                }
            }
        %>
        </table>
    </body>
    
</html>
