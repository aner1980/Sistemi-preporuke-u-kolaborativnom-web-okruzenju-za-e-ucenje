<%@ Page Title="" Language="C#" MasterPageFile="~/Public/WikiTriglav.Master" AutoEventWireup="true" CodeBehind="ClanakStareIzmjene.aspx.cs" Inherits="Web.Public.ClanakStareIzmjene" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">         
        function SetSingleRadioButton(nameregex, current) {
            //alert(nameregex);
            var br = 0, index = 0;
            re = new RegExp(nameregex);
           
                for (i = 0; i < document.forms[0].elements.length; i++) {
                    elm = document.forms[0].elements[i];
                    if (elm.type == 'radio' ) {
                        if (elm != current) {
                            elm.checked = false;
                        }
                    }
                }
                current.checked = true;
            } 
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" Visible="False">

    <div id="glavna">

        <div class="desno">

            <div class="kategorije2">
                <div class="naslov">
                    <h1>WIKI preporuke</h1>
                </div>

                <div class="oblastitemeclanakfull">

                    <ul>
                        <asp:DataList ID="dl_WikiPoveznice" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="lb_ClanakNaziv" runat="server" PostBackUrl='<%# "~/Public/Clanak.aspx?PostID=" + Eval("id") %>'><%#Eval("Naslov") %></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>

                    </ul>
                </div>

            </div>

            <div class="kategorije2">
                <div class="naslov">
                    <h1>Q&A preporuke</h1>
                </div>

                <div class="oblastitemeclanakfull">
                    <ul>

                        <asp:DataList ID="dl_QAPoveznice" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="lb_PitanjeNaziv" runat="server" PostBackUrl='<%# "~/Public/QA_Pitanje.aspx?PostID=" + Eval("id") %>'><%#Eval("Naslov") %></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>

                    </ul>
                </div>
            </div>
             <%--PREPORUKA KORISNICI ELVIS DODAO--%>

            <div class="kategorije2">
              <div class="naslov">
                    <h1>Korisnici</h1>
                </div>

                <div class="tagoviwiki">
                    <ul>
                        <asp:DataList ID="dl_Korisnici" runat="server" >
                            <ItemTemplate>
                                <li>
                                    <asp:ImageButton ID="img_User" runat="server" PostBackUrl='<%#"/Public/QA_Pitanja.aspx?KorisnikID="+ Eval("id") %>' ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />
                                   <%-- <asp:Image ID="img_User" runat="server" ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />--%>
                                     <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("Nadimak") %>' CssClass="pitanjadugmadi"></asp:Label>
                                     <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                     <asp:Label ID="lbl_Reputacija" runat="server"  Text='<%#Eval("Reputacija") %>' CssClass="pitanjadugmadi" />  
                                </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>

                </div>
                </div>
        </div>

        <div class="lijevo">
            <div class="searchinfo2">
                <div class="flag">
                </div>

                <ul>
                    <li class="prva">
                        <asp:Button ID="btn_GlavnaStranica" runat="server" Text="Članak" CssClass="nav2dugmadi" OnClick="btn_GlavnaStranica_Click" /></li>
                    <li>
                        <asp:Button ID="btn_Razgovor" runat="server" Text="Razgovor" CssClass="nav2dugmadi" OnClick="btn_Razgovor_Click" /></li>
                    <li>
                        <asp:Button ID="btn_Citaj" runat="server" Text="Čitaj" CssClass="nav2dugmadi" OnClick="btn_Citaj_Click" /></li>
                    <li>
                        <asp:Button ID="btn_VidiIzvornik" runat="server" Text="Uredi" CssClass="nav2dugmadi" OnClick="btn_VidiIzvornik_Click" /></li>
                    <li class="zadnja">
                        <asp:Button ID="btn_VidiIzmjene" runat="server" Text="Vidi izmjene" CssClass="nav2dugmadi" OnClick="btn_VidiIzmjene_Click" /></li>
                </ul>


            </div>

            <div class="kontenjer">
                    Prihvaćene izmjene
    <br />
 
<asp:DataList ID="dl_PrihvaceneIzmjene" runat="server" CellPadding="4" ForeColor="#333333">
           <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
           <ItemTemplate>
               <div style="border-bottom-style: solid; border-bottom-width: thin">  
                      <asp:HiddenField ID="hf" runat="server" Value = '<%#Eval("id")%>' /> 
              <asp:LinkButton ID="txt_Naslov" runat="server" Font-Underline="False" Value='<%#Eval("Naslov") %>' OnClick ="txt_Naslov_Click"> <%#Eval("Naslov") %></asp:LinkButton>&nbsp;<asp:Label ID="txt_Datum" runat="server" > <%#Eval("DatumKreiranja") %> </asp:Label>                 
           </ItemTemplate>
           <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <br />

    Prijedlozi izmjena
    <br />
  
     <asp:DataList ID="dl_PrijedloziIzmjena" runat="server" OnItemDataBound="dl_PrijedloziIzmjena_ItemDataBound" CellPadding="4" ForeColor="#333333">
           <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
           <ItemTemplate>
               <div style="border-bottom-style: solid; border-bottom-width: thin">                   
              <asp:RadioButton ID="rdbP" Checked="false" GroupName="g2" Text="Select" runat="server" onKeyPress="return suppress(event);" />
              <asp:HiddenField ID="hf" runat="server" Value = '<%#Eval("id")%>' /> 
               <asp:LinkButton ID="txt_Naslov" runat="server" Font-Underline="False"> <%#Eval("Naslov") %></asp:LinkButton>&nbsp;<asp:Label ID="txt_Datum" runat="server" > <%#Eval("DatumKreiranja") %> </asp:Label>                 
           </ItemTemplate>
           <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <br />
<br />
    <asp:Button ID="Btn_Uporedi" runat="server" CssClass="dodajkomentdugme" Width="154px" Height="27px" Text="Uporedi članke" OnClick="Btn_Uporedi_Click" />
    <asp:Button ID="Btn_Odobri" runat="server" CssClass="dodajkomentdugme" Width="154px" Height="27px"  Text="OdobriIzmjenu" OnClick="Btn_Odobri_Click" Visible="False" />
    <br />
    zadnji
                <br />
    <asp:TextBox ID="txt_odobreni" runat="server" TextMode="MultiLine" Height="110px" Width="100%" Visible="False"></asp:TextBox>
    izmjena
                <br />
    <asp:TextBox ID="txt_izmjena" runat="server" TextMode="MultiLine" Height="107px" Width="100%" Visible="False"></asp:TextBox>
 

            </div>

       </div>

 </div>




</asp:Content>
