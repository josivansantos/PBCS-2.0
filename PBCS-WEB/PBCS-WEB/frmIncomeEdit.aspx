<%@ Page MasterPageFile="~/Site3.Master" Language="C#" AutoEventWireup="true" CodeBehind="frmIncomeEdit.aspx.cs" Inherits="PBCS_WEB.frmIncomeEdit" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <h2 class="auto-style1">  Income Report</h2>
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="IncomeId" DataSourceID="SqlDataSource_Users">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="IncomeValue" HeaderText="IncomeValue" SortExpression="IncomeValue" />
                <asp:BoundField DataField="IncomeDueDate" HeaderText="IncomeDueDate" SortExpression="IncomeDueDate" />
                <asp:BoundField DataField="IncomePayDate" HeaderText="IncomePayDate" SortExpression="IncomePayDate" />
                <asp:BoundField DataField="ClientName" HeaderText="ClientName" SortExpression="ClientName" />
                <asp:BoundField DataField="IncomeObs" HeaderText="IncomeObs" SortExpression="IncomeObs" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource_Users" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PBCSConnectionString %>" 
            DeleteCommand="DELETE FROM PBCS.Income WHERE (IncomeId = @IncomeId)"            
            InsertCommand="INSERT INTO PBCS.Income(IncomeDueDate, IncomePayDate, IncomeValue, IncomeObs, ClientName, AccountName, StatusName, IncomeType) VALUES (@IncomeDueDate, @IncomePayDate, @IncomeValue, @IncomeObs, @ClientName, @AccountName, @StatusName, @IncomeType)" 
            SelectCommand="SELECT * FROM PBCS.Income" 
            UpdateCommand="UPDATE PBCS.Income SET IncomeDueDate = @IncomeDueDate, IncomePayDate = @IncomePayDate, IncomeValue = @IncomeValue, StatusName = @StatusName, ClientName = @ClientName, AccountName = @AccountName, IncomeObs = @IncomeObs, IncomeType = @IncomeType WHERE (IncomeId = @IncomeId)">
            
            <DeleteParameters>
                <asp:Parameter Name="IncomeId" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="IncomeDueDate" />
                <asp:Parameter Name="IncomePayDate" />
                <asp:Parameter Name="IncomeValue" />
                <asp:Parameter Name="IncomeObs" />
                <asp:Parameter Name="ClientName" />
                <asp:Parameter Name="AccountName" />
                <asp:Parameter Name="StatusName" />
                <asp:Parameter Name="IncomeType" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="IncomeDueDate" />
                <asp:Parameter Name="IncomePayDate" />
                <asp:Parameter Name="IncomeValue" />
                <asp:Parameter Name="StatusName" />
                <asp:Parameter Name="ClientName" />
                <asp:Parameter Name="AccountName" />
                <asp:Parameter Name="IncomeObs" />
                <asp:Parameter Name="IncomeType" />
                <asp:Parameter Name="IncomeId" />
            </UpdateParameters>
        </asp:SqlDataSource>
                    
    </center>
</asp:Content>
