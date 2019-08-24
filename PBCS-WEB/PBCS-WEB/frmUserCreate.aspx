<%@ Page MasterPageFile="~/Site3.Master" Language="C#" AutoEventWireup="true" CodeBehind="frmUserCreate.aspx.cs" Inherits="PBCS_WEB.frmUser" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <h2 class="fontRed"> Create user</h2>
            <br>
    </center>

        <div class="form-row" class="border">
            <div class="form-group col-md-4">
                <label for="txtName">Name</label>
                <asp:TextBox ID="txtName" runat="server" type="text" class="form-control" placeholder="Donald Trump Sauro" required ="true"></asp:TextBox>
            </div>

            <div class="form-group col-md-4">
                <label for="txtEmail">e-mail</label>
                <asp:TextBox ID="txtEmail" runat="server"  type="email" class="form-control" placeholder="name@domain.com" required ="true"></asp:TextBox>
            </div>

            <div class="form-group col-md-2">
                <label for="txtPassword">Password</label>
                <asp:TextBox ID="txtPassword" runat="server"  type="password" class="form-control" placeholder="123456" required ="true"></asp:TextBox>
            </div>
        
            <div class="form-group col-md-2">
                <label for="txtUserType">Access Type</label>                
                <asp:DropDownList ID="txtUserType" runat="server" class="form-control" required ="true">                
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>User</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>    
            </div>
        

            <div class="form-group col-md-4">
                <label for="txtAddress">Address</label>                
                <asp:TextBox runat="server" ID="txtAddress" type="text" class="form-control" placeholder="45, Shepard W"></asp:TextBox>                
            </div>

            <div class="form-group col-md-2">
               <label for="txtZip">Zip Code</label>                
               <asp:TextBox runat="server" ID="txtZip" type="text" class="form-control" placeholder="M2X-2S3"></asp:TextBox>                
            </div>        
        
        <div class="form-group col-md-2">
            <label for="txtCity">City</label>            
            <asp:TextBox ID="txtCity" runat="server" type="text" class="form-control" placeholder="Toronto"></asp:TextBox>
        </div>       

        <div class="form-group col-md-2">
            <label for="txtState">Province / State</label>            
            <asp:TextBox ID="txtState" runat="server" type="text" class="form-control" placeholder="Ontario"></asp:TextBox>
        </div> 

            <div class="form-group col-md-2">
                <label for="txtCountry">Country</label>                   
                <asp:DropDownList ID="txtCountry" runat="server" class="form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>Canada</asp:ListItem>
                    <asp:ListItem>United States</asp:ListItem>
                </asp:DropDownList>

            </div>            
      </div>            
     
        <br />
        <strong>
        <asp:Label ID="lblSuccess" runat="server" Text="User created successfully!" Visible="False" CssClass="auto-style1" style="font-family: 'Segoe UI'; color: #0000FF"></asp:Label>
        </strong>
    <br>

        <asp:Button type="submit" ID="btnInsert" runat="server" CssClass="class=&quot;btn btn-primary" OnClick="Button1_Click" Text="Insert" Width="97px" />
        
</asp:Content>
