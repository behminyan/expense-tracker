<%-- 
    Document   : index
    Created on : Aug 28, 2015, 9:31:29 AM
    Author     : behminyan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>SE Week 02</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom style: jumbotron-narrow -->
    <link href="css/jumbotron-narrow.css" rel="stylesheet">
</head>

  <body>

    <div class="container">
        <div class="header clearfix">
            <nav>
              <ul class="nav nav-pills pull-right">
                <li role="presentation" class="active"><a href="#">Home</a></li>
                <li role="presentation"><a href="index-ugly.jsp">Basic Page</a></li>
                <li role="presentation"><a href="Resources.html">Resources</a></li>
              </ul>
            </nav>
            <h3 class="text-muted">SE Week 02 Exercises</h3>
        </div>

        <div class="jumbotron">
            <h1>Welcome!</h1>
            <p class="lead">Scroll down for exercises,</br> toggle between top-right tabs,</br> resize the window! </br><b>Enjoy :)</b></p>
            <!--p><a class="btn btn-lg btn-success" href="#" role="button">Okay!</a></p-->
        </div>

        
        <div class="col-lg-6 col-md-6 col-sm-6">
            <br />
            <div class="panel panel-info">
                <div class="panel-heading">Exercise 01</div>
                <div class="panel-body">
                    <b>Generate Lucky 4D Numbers!</b></br></br>

                    <form method = 'post' action = 'num.jsp'>
                        <div class="input-group">
                            <span class="input-group-addon">How many?</span>
                            <input type='text' class='form-control' placeholder='type a positive integer' name = 'num'>
                        </div>
                        </br>
                        <button type = 'submit' class='btn btn-info right'>Huat ah!</button>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="col-lg-6 col-md-6 col-sm-6">
            <br />
            <div class="panel panel-info">
                <div class="panel-heading">Exercise 02 - Product Search</div>
                <div class="panel-body">
                    <b>Product codes:</b> 0000, 0100, 0001</br></br>

                    <form method = 'post' action = 'product.jsp'>
                        <div class="input-group">
                            <span class="input-group-addon">Search Product</span>
                            <input type='text' class='form-control' placeholder='enter product code' name = 'code'>
                        </div>
                        </br>
                        <button type = 'submit' class='btn btn-info right'>Find it!</button>
                    </form>
                </div>
            </div>
        </div>
        
        <div class="col-12 col-md-12 col-sm-12">
            <br />
            <div class="panel panel-info">
                <div class="panel-heading">Exercise 03</div>
                <div class="panel-body">
                    <b>Retrieve my SE members!</b></br></br>

                    <form method = 'post' action = 'members.jsp'>
                        <button type = 'submit' class='btn btn-info right'>Show Me!</button>
                    </form>
                </div>
            </div>
        </div>
        
      <footer class="footer">
        <p>&copy; Min Yan, for G3-T2 (28 Aug 2015)</p>
      </footer>

    </div> <!-- /container -->
    </body>

    <style>
        .center{
            margin: auto;
        }
        .right{
            float: right;
        }
    </style>
        
</html>
