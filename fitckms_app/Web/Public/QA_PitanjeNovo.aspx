<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_PitanjeNovo.aspx.cs" Inherits="Web.Public.QA_PitanjeNovo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <%--UKLJUČIVANJE tinyMCE--%>
    <script src="/Scripts/tinymce/tiny_mce.js"></script>
    <script src="/Scripts/tinymce/tiny_mce_init.js"></script>
    <script src="/Scripts/tinymce/plugins/save/editor_plugin.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height: 130px"></div>
<div id="glavna">
    <div class="omotac">
    <%--KATEGORIJA--%>
      <div class="novoPitanje">
      <asp:Label ID="lbl_Kategorija" runat="server" Text="Kategorija"></asp:Label>
        <asp:DropDownList ID="ddl_Kategorija" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    <%--PODKATEGORIJA--%>
        <asp:Label ID="lbl_podkategorija" runat="server" Text="Podkategorija"></asp:Label>
        <asp:DropDownList ID="ddl_Podkategorija" runat="server">
        </asp:DropDownList>
          <br />
          <br />

     <asp:Label ID="lbl_Naslov" runat="server" Text="Naslov"></asp:Label>
        <asp:TextBox ID="txt_Naslov" Width="460px" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="lbl_Sadrzaj" runat="server" Text="Sadržaj"></asp:Label><br /><br />
        <asp:TextBox ID="txt_Sadrzaj" runat="server" TextMode="MultiLine" CssClass="mceEditor" Width="100%" EnableViewState="True" AutoPostBack="True"></asp:TextBox><br />
        
          <asp:Label ID="Label1" runat="server" Text="Tagovi   "></asp:Label>
        <asp:TextBox ID="txt_Tagovi" Width="460px" runat="server"></asp:TextBox><br /><br />
          <asp:Label ID="lbl_Tagovi" runat="server" Text="Između tagova obavezno staviti zarez !"></asp:Label><br /><br />
         <asp:Button ID="btn_SavePitanje" class="buttons" runat="server" OnClick="btn_SaveClanak_Click" Text="Postavi pitanje" />
       </div>
    </div>
    </div>
</asp:Content>

