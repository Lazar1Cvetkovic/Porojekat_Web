<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prikaz.aspx.cs" Inherits="WebApplication10.Account.Prikaz" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="Label2" runat="server" Text="Developeri"></asp:Label>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="ime" HeaderText="ime" SortExpression="ime"></asp:BoundField>
            <asp:BoundField DataField="Pr_Jezik" HeaderText="Pr_Jezik" SortExpression="Pr_Jezik"></asp:BoundField>
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:cvetko1ConnectionString %>" SelectCommand="SELECT [ime], [Pr_Jezik] FROM [Developer]"></asp:SqlDataSource><asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource><br />
    <br />
    <asp:Label ID="Label3" runat="server" Text="Investirori"></asp:Label><br />

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="ime" HeaderText="ime" SortExpression="ime"></asp:BoundField>
            <asp:BoundField DataField="Kolicina" HeaderText="Kolicina" SortExpression="Kolicina"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="<%$ ConnectionStrings:cvetko1ConnectionString %>" SelectCommand="SELECT [ime], [Kolicina] FROM [Investitor]"></asp:SqlDataSource><br />
    <asp:Label ID="Label1" runat="server" Text="Kupci"></asp:Label><br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
        <Columns>
            <asp:BoundField DataField="ime" HeaderText="ime" SortExpression="ime"></asp:BoundField>
            <asp:BoundField DataField="Firma" HeaderText="Firma" SortExpression="Firma"></asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString="<%$ ConnectionStrings:cvetko1ConnectionString %>" SelectCommand="SELECT [ime], [Firma], [email] FROM [Kupci]"></asp:SqlDataSource>
</asp:Content>
