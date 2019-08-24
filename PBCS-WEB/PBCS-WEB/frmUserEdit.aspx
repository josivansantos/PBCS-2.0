<%@ Page MasterPageFile="~/Site3.Master" Language="C#" AutoEventWireup="true" CodeBehind="frmUserEdit.aspx.cs" Inherits="PBCS_WEB.UserManagement" %><%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <h2 class="fontRed">  Users Management</h2>
            <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="UserEmail" DataSourceID="SqlDataSource_Users">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                <asp:BoundField DataField="UserEmail" HeaderText="UserEmail" ReadOnly="True" SortExpression="UserEmail" />
                <asp:BoundField DataField="UserAddress" HeaderText="UserAddress" SortExpression="UserAddress" />
                <asp:BoundField DataField="UserZip" HeaderText="UserZip" SortExpression="UserZip" />
                <asp:BoundField DataField="UserCity" HeaderText="UserCity" SortExpression="UserCity" />
                <asp:BoundField DataField="UserState" HeaderText="UserState" SortExpression="UserState" />
                <asp:BoundField DataField="UserCountry" HeaderText="UserCountry" SortExpression="UserCountry" />
                <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
            </Columns>
        </asp:GridView>
        
        <br />
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource_Users" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PBCSConnectionString %>" 
            DeleteCommand="DELETE FROM PBCS.Users WHERE UserEmail = @UserEmail"            
            InsertCommand="INSERT INTO PBCS.Users(UserName, UserPassword, UserAddress, UserZip, UserState, UserCity, UserCountry, UserType) VALUES (@USerName, @USerPassword, @UserAddress, @UserZip, @UserState, @UserCity, @UserCountry, @UserType)" 
            SelectCommand="SELECT * FROM PBCS.Users" 
            UpdateCommand="UPDATE PBCS.Users SET UserName = @UserName, UserPassword = @UserPassword, UserAddress = @UserAddress, UserZip = @UserZip, UserCity = @UserCity, UserState = @UserState, UserCountry = @UserCountry, UserType = @UserType WHERE UserEmail = @UserEmail">
            
            <DeleteParameters>
                <asp:Parameter Name="UserEmail" />
            </DeleteParameters>

            <InsertParameters>
                <asp:Parameter Name="txtName" />
                <asp:Parameter Name="txtPassword" />
                <asp:Parameter Name="txtEmail" />
                <asp:Parameter Name="txtAddress" />
                <asp:Parameter Name="txtZip" />
                <asp:Parameter Name="txtState" />
                <asp:Parameter Name="txtCity" />
                <asp:Parameter Name="txtCountry" />
                <asp:Parameter Name="txtUserType" />
            </InsertParameters>

            <UpdateParameters>
                <asp:Parameter Name="txtName" />
                <asp:Parameter Name="txtPassword" />
                <asp:Parameter Name="txtEmail" />
                <asp:Parameter Name="txtAddress" />
                <asp:Parameter Name="txtZip" />
                <asp:Parameter Name="txtCity" />
                <asp:Parameter Name="txtState" />
                <asp:Parameter Name="txtCountry" />
                <asp:Parameter Name="txtUserType" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>
</asp:Content>
