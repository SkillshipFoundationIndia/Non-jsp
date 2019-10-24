


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assests/css/bootstrap.min.css" rel="stylesheet">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
        <title>JSP Page</title>
        <script>
            function validateForm(){
                var user1=document.login.user1.value;
                var password1=document.login.password1.value;
                if(user1===null||user1==="")
                {
                    alert("enter your username");
                    return false;
                }
                else if(password1===null||password1==="")
                {
                    alert("enter your password");
                     return false;
                }
            }
            
            
            </script>
            <style>
               
                .container-fluid .content{
                    position: absolute;
                   
                        background: rgb(0, 0, 0); 
                        background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
                        color: #f1f1f1;
                        
                        top: 2px;
                        width: 35%;
                        padding: 40px;
                }
                .content{
                    margin-left:10%;
                    margin-top: 5%;
                }
                .icon {
                   
                    background: transparent;
                    color: transparent;
                    min-width: 50px;
                    text-align: center;
                    }

                    .input-field {
                      
                      width: 100%;
                      padding: 10px;
                     
                    }

                    .input-field:focus {
                      border: 2px solid dodgerblue;
                    }
                    .td a:hover:not(.fp){
                       
                        color: #00cccc;
                        font-weight:30%;
                    }
                    .input{
                        
                    }

            </style>
    </head>
    <body>
        <div class="container-fluid">
    <img src="assests/image/book33.jpg" alt="" style="height:690PX; width: 130% ">
    <div class="content">
        <h1 style="text-align: center;font-size:40px;color:#ff0066; word-spacing:3%;font-style:oblique "><b>LOGIN</b></h1>
       
        <%
               
                String reg1 = (String)session.getAttribute("register");
                if(reg1==null)
                {
                    out.println("<h2>");
                    out.println("");
                    out.println("</h2>");
                }
                else
                {
                    out.println("<h2>");
                    out.println(reg1);
                    out.println("</h2>");
                }
                
                
        %>
                <%
                    String log=(String)session.getAttribute("login");
                    if(log==null)
                    {
                        out.println("<h3>");
                        out.println("");
                        out.println("<h3>");
                    }
                    else
                    {
                        out.println("<h3>");
                        out.println("log");
                        out.println("<h3>");
                    }
                %>
                
                
                <form  name="login" style="text-align: center"  action="Student_detail.jsp" method="post" onsubmit="return validateForm()">
                    
                <br>
                 <div class="input-container">
                     <i class="glyphicon glyphicon-user"></i>
                <input class=" input-field " style="width: 330px;height:40px" type="text" name="user1" placeholder="USERNAME" >
                 </div>
                </br>
            </br>
           <div class="input-container">
                     <i class="glyphicon glyphicon-lock"></i>
                 <input style="width: 330px;height: 40px" type="text" name="password1" placeholder="PASSWORD">
           </div>
             </br>
            </br>
            <tr>
            <button style="width: 160px;height: 34px; font-size: 25px; font-family:initial; background: #333333;color: #ffffff" type="submit" name="btn" >Login</button>
           
            
            <BUTTON style="width: 160px;height: 34px; font-size: 25px; font-family:initial; background: #333333;color: #ffffff" type="button" name="back" onclick="history.back()">Back</BUTTON>
            </tr>
            <br>
            <br>
            <tr>
                <td class="fp">
                    <a href="Forgetpassword.jsp">Forget password</a>
                </td>
            </tr>
             <%
               
                String for1 = (String)session.getAttribute("forget");
                if(for1==null)
                {
                    out.println("<h2>");
                    out.println("");
                    out.println("</h2>");
                }
                else
                {
                    out.println("<h2>");
                    out.println(for1);
                    out.println("</h2>");
                }
                
                
                %>
            </br>
            <%-- <tr>
                <td>
                    <a href="Newuser.jsp">New User</a>
                </td>
</tr>--%>
        </form>
         </div>
     </div>
             
         </div>
    </body>
</html>
