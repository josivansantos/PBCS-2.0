<%@ Page Language="C#"  MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="frmIncomeCreate.aspx.cs" Inherits="PBCS_WEB.frmIncomeCreate" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    <h2 class="fontBlue"> Create Income</h2>

        <div class="form-row" class="border"> 

            <div class="form-group col-md-3">
                <label for="txtIncomeValue">Value</label>
                <asp:TextBox ID="txtIncomeValue" runat="server" required="true" type="text" class="form-control"  ></asp:TextBox>
            </div>

            <div class="form-group col-md-3">
                <label for="txtIncomeDueDate">Due Date</label>
                <asp:TextBox ID="txtIncomeDueDate" runat="server"  required="true" type="date" class="form-control" ></asp:TextBox>
            </div>
        </div>                
        
        <div class="form-row" class="border">
           <div class="form-group col-md-3">
                <label for="txtAccountName">Category</label>                
                <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" required ="true">                
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Salary</asp:ListItem>
                    <asp:ListItem>Bets</asp:ListItem>        
                    <asp:ListItem>Investments</asp:ListItem>        
                    <asp:ListItem>Interest</asp:ListItem>   
                    <asp:ListItem>Rents</asp:ListItem>                       
                </asp:DropDownList>    
            </div>

            <div class="form-group col-md-4">
               <label for="txtClientName">Client</label>                
               <asp:TextBox runat="server" ID="txtClientName" type="text" class="form-control" required="true"></asp:TextBox>                
            </div>  
            
            <div class="form-group col-md-3">
                <label for="txtIncomePayDate">Pay Date</label>
                <asp:TextBox ID="txtIncomePayDate" runat="server"  type="date" class="form-control"></asp:TextBox>                           
            </div>
        </div>

    <div class="form-row" class="border">
        <div class="form-group col-md-10">
            <label for="txtIncomeObs">Observation</label>            
            <asp:TextBox ID="txtIncomeObs" runat="server" type="text" class="form-control" ></asp:TextBox>
        </div>                    
      </div>         
        <br />
        <strong>
        <asp:Label ID="lblSuccess" runat="server" Text="Income created successfully !" Visible="False" CssClass="auto-style1" style="font-family: 'Segoe UI'; color: #008000"></asp:Label>
        </strong>
  <br>
        <asp:Button runat="server" Text="Insert" OnClick="Unnamed1_Click" CssClass="class=&quot;btn btn-primary"  Width="97px" />    

</asp:Content>
