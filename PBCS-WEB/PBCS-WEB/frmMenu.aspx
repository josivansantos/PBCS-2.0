<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmMenu.aspx.cs" Inherits="PBCS_WEB.frmMaintanance" %>

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


    <title>PBCS 2.0 - Menu</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <br>
                <div class= "fontTitle"> JS Solutions</div>
                    <h2>Personal Budget Control System 2.0</h2>
                <br />
                    <h2>Main Menu</h2>           
                <br />
        </div>

        <table id="myTable">

  <tr class="header">
    <th style="width:16.66%;">Incomes</th>
    <th style="width:16.66%;">Income Report</th>
    <th style="width:16.66%;">Expenses</th>
    <th style="width:16.66%;">Expense Report</th>
    <th style="width:16.66%;">Due Date Reminder</th>
    <th style="width:16.66%;">Maintanance</th>
  </tr>
  <tr>
    <td><a href ="frmIncomeCreate.aspx"><img src="img/income.jpg" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><a href ="frmIncomeEdit.aspx"><img src="img/report.jpg" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><a href ="frmExpenseCreate.aspx"><img src="img/expense.jpg" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><a href ="frmExpenseEdit.aspx"><img src="img/report.jpg" class="img-rounded" ; style="width:150px; height:150px;"></a></td>
    <td><img src="img/calendar.jpg" class="img-rounded" ; style="width:150px; height:150px;"></td>  
    <td><a href ="frmMaintenance.aspx"><img src="img/maintanance.jpg" class="img-rounded" ; style="width:150px; height:150px;"></a></td>    
  </tr>
</table>        
  
        <div divForm>
   <center>
        <asp:Button ID="btnLogout" runat="server" CssClass="class=&quot;btn btn-primary"  Width="97px" Text="Logout" OnClick="btnLogout_Click" />
   </center>
            </div>

    </form>
</body>
</html>
