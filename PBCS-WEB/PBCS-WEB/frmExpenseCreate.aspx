<%@ Page Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="frmExpenseCreate.aspx.cs" Inherits="PBCS_WEB.frmExpenseCreate" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 class="fontRed">Expense Create</h2>

    <div class="form-row" class="border">

        <div class="form-group col-md-3">
            <label for="txtBillValue">Value</label>
            <asp:TextBox ID="txtBillValue" runat="server" type="text" class="form-control" required="true"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label for="txtBillDueDate">Due Date</label>
            <asp:TextBox ID="txtBillDueDate" runat="server" type="date" class="form-control" required="true"></asp:TextBox>
        </div>
    </div>

    <div class="form-row" class="border">
        <div class="form-group col-md-4">
            <label for="txtAccountName">Category</label>
            <asp:DropDownList ID="txtAccountName" runat="server" class="form-control" required="true">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>Groceries</asp:ListItem>
                <asp:ListItem>Morgage</asp:ListItem>
                <asp:ListItem>Taxes</asp:ListItem>
                <asp:ListItem>Restaurant</asp:ListItem>
                <asp:ListItem>Entertainment</asp:ListItem>
                <asp:ListItem>Insurance</asp:ListItem>
                <asp:ListItem>Helth</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>                
            </asp:DropDownList>
        </div>

        <div class="form-group col-md-3">
            <label for="txtVendorName">Vendor</label>
            <asp:TextBox runat="server" ID="txtVendorName" type="text" required="true" class="form-control"></asp:TextBox>
        </div>

        <div class="form-group col-md-3">
            <label for="txtBillPayDate">Pay Date</label>
            <asp:TextBox ID="txtBillPayDate" runat="server" type="date" class="form-control"></asp:TextBox>
        </div>
    </div>

    <div class="form-row" class="border">
        <div class="form-group col-md-10">
            <label for="txtBillObs">Observation</label>
            <asp:TextBox ID="txtBillObs" runat="server" type="text" class="form-control"></asp:TextBox>
        </div>
    </div>
    <strong>
        <asp:Label ID="lblSuccess" runat="server" Text="Record inserted successfully" Visible="False" CssClass="auto-style1" Style="font-family: 'Segoe UI'; color: #0000FF"></asp:Label>
    </strong>
    <br />
    <br />
    <asp:Button runat="server" CssClass="class=&quot;btn btn-primary" Text="Insert" OnClick="Unnamed1_Click" />

</asp:Content>
