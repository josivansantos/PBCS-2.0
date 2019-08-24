<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="PBCS_WEB.frmLogin" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">    
    
    <link rel="stylesheet" type="text/css" href="style.css"> 
    <link rel="stylesheet" href="css/mobiscroll.javascript.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>      
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>PBCS 2.0 - Login</title>

</head>
<body>
    <form id="form1" runat="server">
    <center>
        <br />
     <div class= "fontTitle"> JS Solutions</div>

    <h2>Personal Budget Control System 2.0</h2>
    </center>   
<div class="picture">
   <center>
    <img src="img/user.png" class="img-rounded" ; style="width:150px; height:150px;">
</center>
</div>

<div class="container">
	<div class="row">
    	    <div class="container" "divLogin" id="formContainer">            
               <h3 class="form-signin-heading">Please sign in</h3>                                   
                    <asp:Label ID="txtUserType" runat="server" Text="txtUserType" Visible="False"></asp:Label>                        
                    <asp:TextBox type="email" class="form-control" name="loginEmail" id="txtEmail" placeholder="Email address" required="true" autofocus="true" runat="server"></asp:TextBox>    
                    <asp:TextBox type="password" class="form-control" name="loginPass" id="txtPassword" placeholder="Password" runat="server" required="true"></asp:TextBox>               
               <br />
                    <asp:Button ID="btnLogin" runat="server" OnClick="Button4_Click" CssClass="btn btn-lg btn-primary btn-block" Text="Sign in" />                    
        </div>
	</div>
</div>
 

    </form>

</body>
</html>