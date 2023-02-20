<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="WebApplication10.Account.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Izaberi kategoriju:"></asp:Label>  
    <br />
    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        <asp:ListItem Selected="True"></asp:ListItem>

        <asp:ListItem>Developer</asp:ListItem>
        <asp:ListItem>Investitor</asp:ListItem>
        <asp:ListItem>Kupci</asp:ListItem>
        </asp:DropDownList>
    <br />
    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label><asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label><asp:TextBox ID="TextBox2" runat="server" Visible="False"></asp:TextBox><br />
        <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label><asp:TextBox ID="TextBox3" runat="server" Visible="False"></asp:TextBox><br />
    <asp:Button ID="Button1" runat="server" Text="Dodaj" OnClick="Button1_Click" /><br />
    <asp:Label ID="ErrorLabel1" runat="server" Text=""></asp:Label>


</asp:Content>
