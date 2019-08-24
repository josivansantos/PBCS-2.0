<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMaintenance.aspx.cs" Inherits="PBCS_WEB.frmMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <meta charset="utf-8">    
    
    <link rel="stylesheet" type="text/css" href="style.css"> 
    <link rel="stylesheet" href="css/mobiscroll.javascript.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="js/mobiscroll.javascript.min.js"></script>      
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


    <title>PBCS 2.0 - Maintenance</title>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <br>
                <div class= "fontTitle"> JS Solutions</div>
                    <h2>Personal Budget Control System 2.0</h2>
                <br />
                    <h2>System Setup and Maintenance</h2>           
                <br />
        

  <table id="myTable">

  <tr class="header">
    <th style="width:20%;">Create Users</th>
    <th style="width:20%;">Edit Users</th>
    <th style="width:20%;"></th>
    <th style="width:20%;"></th>
    <th style="width:20%;"></th>
  </tr>
  <tr>
    <td><a href ="frmUserCreate.aspx"><img src="img/users.png" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><a href ="frmUserEdit.aspx"><img src="img/edit_users.png" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><img src="img/no.png" class="img-rounded" ; style="width:150px; height:150px;"></td>
    <td><img src="img/no.png" class="img-rounded" ; style="width:150px; height:150px;"></td>  
    <td><img src="img/no.png" class="img-rounded" ; style="width:150px; height:150px;"></td>

  </tr>
</table>
                <br /><br />
        <br />
     <center>
        <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-lg btn-primary btn-block" OnClick="Button1_Click" Text="Back" Width="85px" />
     </center>   
         </p>
        </div>
    </form>
</body>
</html>
