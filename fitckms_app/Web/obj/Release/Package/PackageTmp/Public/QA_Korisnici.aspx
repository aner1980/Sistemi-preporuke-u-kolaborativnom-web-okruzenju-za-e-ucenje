<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_Korisnici.aspx.cs" Inherits="Web.Public.QA_Korisnici" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="glavna">
        <div class="lijevo">
            <div style="height: 130px"></div>
            <div class="seperator">
                <ul>
                    <li>
                        <asp:Button ID="btn_PoReputaciji" runat="server" Text="PoReputaciji" CssClass="nav2dugmadi" OnClick="btn_PoReputaciji_Click" /></li>
                    <li>
                        <asp:Button ID="btn_NoviKorisnici" runat="server" Text="Novi Korisnici" CssClass="nav2dugmadi" OnClick="btn_NoviKorisnici_Click" /></li>
                    <li>
                        <asp:Button ID="btn_Moderatori" runat="server" Text="Moderatori" CssClass="nav2dugmadi" OnClick="btn_Moderatori_Click" /></li>
                </ul>
            </div>
           </div>
        <asp:Label ID="lbl_NaslovStranice" runat="server" ForeColor="White"></asp:Label>
                <br />
                <br />
            <div class="omotac">
                
                <%--DATALIST KORISNICI--%>

                <asp:DataList ID="dl_Korisnici" runat="server" RepeatColumns="4" GridLines="Vertical" OnItemDataBound="dl_Korisnici_ItemDataBound" RepeatDirection="Horizontal">
                   
                    <ItemTemplate>
                       <div class="korisnici">
                            <asp:ImageButton ID="img_Korisnik" CssClass="korisnikSlika" runat="server" PostBackUrl='<%#"/Public/QA_Pitanja.aspx?KorisnikID="+ Eval("id") %>' ImageUrl='<%#Eval("SlikaURL") %>' />
                            <br /><asp:Label ID="lbl_BedzNaziv" runat="server"><%#Eval("BedzNaziv") %></asp:Label>
                            <br /> <asp:Image ID="img_Bedz" runat="server" Height="100px" Width="100px" ImageUrl='<%#Eval("BedzSlika") %>' />
                            <br /><asp:Label ID="lbl_Nadimak" runat="server"><%#Eval("Nadimak") %></asp:Label>
                            <br /><asp:Label ID="lbl_BrojGodina" runat="server"><%# "BrojGodina: "+Eval("BrojGodina") %></asp:Label>
                            <br /><asp:Label ID="OMeni" runat="server"><%#"Biografija: "+Eval("OMeni") %></asp:Label>
                            <br />Aktivan od:<br /><abbr class="timeago" title='<%# DataBinder.Eval(Container.DataItem, "DatumKreiranja", "{0:yyyy-M-dThh:mm:ss+01:00}") %>'>nije uspjelo</abbr>
                            <br />Aktivnost:<br /><abbr class="timeago" title='<%# DataBinder.Eval(Container.DataItem, "DatumZadnjegPristupa", "{0:yyyy-M-dThh:mm:ss+01:00}") %>'>nije uspjelo</abbr>
                           
                            <br /><asp:Label ID="lbl_Reputacija" runat="server" Text='<%# "Reputacija: " + Eval("Reputacija") %>'><%# "Rep" + Eval("Reputacija") %></asp:Label>
                            <br /><asp:Label ID="lbl_Likes" runat="server" Text='<%#"Sviđanja: " + Eval("Likes") %>'></asp:Label>
                            <br /><asp:Label ID="lbl_Unlikes" runat="server" Text='<%# "Nesviđanja: " +Eval("Unlikes") %>'></asp:Label>
                            <br /><asp:Label ID="lbl_BrojZlatnih" runat="server" Text='<%#"Zlatnika: " + Eval("BrojZlatnih") %>'></asp:Label>
                            <br /><asp:Label ID="lbl_BrojSrebrenih" runat="server" Text='<%#"Dukata: "+ Eval("BrojSrebrenih") %>'></asp:Label>
                            <br /><asp:Label ID="lbl_Bronze" runat="server" ToolTip='<%#Eval("BedzOpis") %>' Text='<%#"Groševa: " + Eval("BrojBronzanih") %>'></asp:Label>
                            <br /><asp:Label ID="lbl_BrojPostova" runat="server"></asp:Label>
                            <br /><asp:Label ID="lbl_BrojOdgovora" runat="server"></asp:Label>
                        </div>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedItemStyle>
                </asp:DataList>           
              </div>
  </div>

</asp:Content>
