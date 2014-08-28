<%@ Page Title="" Language="C#" MasterPageFile="~/Public/WikiTriglav.Master" AutoEventWireup="true" CodeBehind="ClanakUredi.aspx.cs" Inherits="Web.Public.ClanakUredi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="/Scripts/tinymce/tiny_mce.js"></script>
    <script src="/Scripts/tinymce/tiny_mce_init.js"></script>
    <script src="/Scripts/tinymce/plugins/save/editor_plugin.js"></script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                        <asp:DataList ID="DataList1" runat="server">
                            <ItemTemplate>
                                <li>
                                    <asp:ImageButton ID="img_User" runat="server" PostBackUrl='<%#"/Public/QA_Pitanja.aspx?KorisnikID="+ Eval("id") %>' ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />
                                    <%-- <asp:Image ID="img_User" runat="server" ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />--%>
                                    <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("Nadimak") %>' CssClass="pitanjadugmadi"></asp:Label>
                                    <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                    <asp:Label ID="lbl_Reputacija" runat="server" Text='<%#Eval("Reputacija") %>' CssClass="pitanjadugmadi" />
                                </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>

                </div>
            </div>

            <div class="tagoviwiki">
                <ul>
                    <asp:DataList ID="dl_Korisnici" runat="server">
                        <ItemTemplate>
                            <li>
                                <asp:ImageButton ID="img_User" runat="server" PostBackUrl='<%#"/Public/QA_Pitanja.aspx?KorisnikID="+ Eval("id") %>' ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />
                                <%-- <asp:Image ID="img_User" runat="server" ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />--%>
                                <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("Nadimak") %>' CssClass="pitanjadugmadi"></asp:Label>
                                <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                <asp:Label ID="lbl_Reputacija" runat="server" Text='<%#Eval("Reputacija") %>' CssClass="pitanjadugmadi" />
                            </li>
                        </ItemTemplate>
                    </asp:DataList>
                </ul>

            </div>
        </div>

        <div style="height: 130px"></div>
        <div class="lijevo">
            <div class="seperator">

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

            <div class="lijevo2">
                <div style="margin: 25px">
                    <div style="color: white; font-family: Verdana; font-size: 12pt">
                        Uređujete članak:               
                 <asp:Label ID="lbl_ClanakIzvorni" Font-Bold="true" runat="server"></asp:Label>
                    </div>
                    <br />
                    <asp:TextBox ID="txt_Sadrzaj" runat="server" TextMode="MultiLine" CssClass="mceEditor" EnableViewState="True" Width="100%" AutoPostBack="True"></asp:TextBox>
                    <br />
                    <asp:Button ID="btn_SacuvajIzmjeneClanka" runat="server" CssClass="dodajkomentdugme" Width="154px" Height="27px" Text="Sačuvaj Izmjene" OnClick="btn_SacuvajIzmjeneClanka_Click" />
                    <asp:Button ID="btn_Odustani" runat="server" CssClass="dodajkomentdugme" Width="154px" Height="27px" Text="Odustani" OnClick="btn_Odustani_Click" />
                    <asp:Button ID="btn_Preview" runat="server" CssClass="dodajkomentdugme" Width="154px" Height="27px" Text="Prikaži izgled" OnClick="btn_Preview_Click" />
                    <asp:Label ID="lbl_Promjenjeni" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lbl_Obavjestenje" runat="server" ForeColor="Maroon"></asp:Label>
                </div>
            </div>

        </div>

    </div>



</asp:Content>
