<%-- 
    Document   : index-ugly
    Created on : Aug 28, 2015, 12:33:36 PM
    Author     : behminyan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Old Page</title>
    </head>
    <body>
        <h1>Exercise 01 - How many 4D numbers you want?</h1>
        <form method = 'post' action = 'num.jsp' >
            Num sets: <input type = 'text' name='num'/>
            <input type = 'submit' value = 'Generate!' />
        </form>
        
        <h1>Exercise 02 - Product Search</h1>
        <form method = 'post' action = 'product.jsp' >
            Acceptable codes: 0000, 1000, 2000 <br />
            Product Code: <input type = 'text' name='code'/>
            <input type = 'submit' value = 'Okay!' />
        </form>
        
        <h1>Exercise 03 - Member & MemberDAO</h1>
        <form method = 'post' action = 'members.jsp' >
            Click to: <input type = 'submit' value = 'Get Members!' />
        </form>
        
        <br/><br/>
        <h1>
            <form method = 'post' action = 'index.jsp' >
                <input type = 'submit' value = '<<' />
                < Go back to the nice page :)
            </form>
        </h1>        
    </body>

</html>
