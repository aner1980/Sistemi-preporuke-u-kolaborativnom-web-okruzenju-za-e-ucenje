<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_Bedzevi.aspx.cs" EnableEventValidation="true" Inherits="Web.Public.QA_Bedzevi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div id="glavna">
    <div class="omotac">
        <div style="height: 130px"></div>
    <asp:DataList ID="dl_bedzevi" runat="server" OnItemDataBound="dl_bedzevi_ItemDataBound" CellPadding="4" ForeColor="#333333" CellSpacing="15" RepeatColumns="4" RepeatDirection="Horizontal">
        
        <ItemTemplate>
            <div class="Bedz">
            <asp:ImageButton CssClass="BedzSlika" ID="img_Bedz" runat="server" Height="150" Width="150" PostBackUrl='<%#"/Public/QA_Bedz.aspx?BedzID="+ Eval("id") %>'  ImageUrl='<%# Eval("SlikaURL") %>'/>
            <br />Naziv: <asp:Label ID="lbl_Naziv" runat="server" Text='<%# Eval("Naziv") %>'></asp:Label>
            <br />Opis:<asp:Label ID="lbl_Opis" runat="server" Text='<%# Eval("Opis") %>'></asp:Label>
            <br />Kreiran:<abbr class="timeago" title="<%#  DataBinder.Eval(Container.DataItem, "DatumKreiranja", "{0:yyyy-M-dThh:mm:ss}") %>">nije uspjelo</abbr>
            <br /><asp:HiddenField ID="hid" runat="server" Value='<%# Eval("id") %>' />
            <asp:Label ID="lbl_BrojKorisnika" runat="server"></asp:Label>
        </div>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedItemStyle>
    </asp:DataList>

    </div>
    </div>
</asp:Content>
