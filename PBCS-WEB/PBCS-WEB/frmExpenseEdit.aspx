<%@ Page MasterPageFile="~/Site3.Master" Language="C#" AutoEventWireup="true" CodeBehind="frmExpenseEdit.aspx.cs" Inherits="PBCS_WEB.frmExpenseEdit" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2 class="fontRed">Expense Report</h2>
<br />
<asp:gridview id="GridView1" runat="server" allowpaging="True" allowsorting="True" autogeneratecolumns="False" datakeynames="BillId" datasourceid="SqlDataSource_Users">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="BillValue" HeaderText="BillValue" SortExpression="BillValue" />
                <asp:BoundField DataField="VendorName" HeaderText="VendorName" SortExpression="VendorName" />
                <asp:BoundField DataField="BillDueDate" HeaderText="BillDueDate" SortExpression="BillDueDate" />
                <asp:BoundField DataField="BillPayDate" HeaderText="BillPayDate" SortExpression="BillPayDate" />
                <asp:BoundField DataField="AccountStatusName" HeaderText="AccountStatusName" SortExpression="AccountStatusName" />
                <asp:BoundField DataField="AccountName" HeaderText="AccountName" SortExpression="AccountName" />
                <asp:BoundField DataField="BillObs" HeaderText="BillObs" SortExpression="BillObs" />
            </Columns>
        </asp:gridview>
<asp:sqldatasource id="SqlDataSource_Users" runat="server"
    connectionstring="<%$ ConnectionStrings:Expenses %>"
    deletecommand="DELETE FROM PBCS.Bill WHERE (BillId = @BillId)"
    insertcommand="INSERT INTO PBCS.Bill(BillDueDate, BillPayDate, BillValue, AccountStatusName, VendorName, AccountName, BillObs, BillType) VALUES (@BillDueDate, @BillPayDate, @BillValue, @AccountStatusName, @VendorName, @AccountName, @BillObs, @BillType)"
    selectcommand="SELECT BillId, BillDueDate, BillPayDate, BillValue, AccountStatusName, VendorName, AccountName, BillObs, BillType FROM PBCS.Bill"
    updatecommand="UPDATE PBCS.Bill SET BillDueDate = @BillDueDate, BillPayDate = @BillPayDate, BillValue = @BillValue, AccountStatusName = @AccountStatusName, VendorName = @VendorName, AccountName = @AccountName, BillObs = @BillObs, BillType = @BillType WHERE (BillId = @BillId)">
            
            <DeleteParameters>
                <asp:Parameter Name="BillId" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="BillDueDate" />
                <asp:Parameter Name="BillPayDate" />
                <asp:Parameter Name="BillValue" />
                <asp:Parameter Name="AccountStatusName" />
                <asp:Parameter Name="VendorName" />
                <asp:Parameter Name="AccountName" />
                <asp:Parameter Name="BillObs" />
                <asp:Parameter Name="BillType" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="BillDueDate" />
                <asp:Parameter Name="BillPayDate" />
                <asp:Parameter Name="BillValue" />
                <asp:Parameter Name="AccountStatusName" />
                <asp:Parameter Name="VendorName" />
                <asp:Parameter Name="AccountName" />
                <asp:Parameter Name="BillObs" />
                <asp:Parameter Name="BillType" />
                <asp:Parameter Name="BillId" />
            </UpdateParameters>
        </asp:sqldatasource>
</asp:Content>
