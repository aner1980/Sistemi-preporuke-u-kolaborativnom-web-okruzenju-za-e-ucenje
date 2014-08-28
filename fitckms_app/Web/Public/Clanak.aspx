<%@ Page Title="" Language="C#" MasterPageFile="~/Public/WikiTriglav.Master" AutoEventWireup="true" CodeBehind="Clanak.aspx.cs" Inherits="Web.Public.Clanak" %>

<%@ Register Src="~/Controls/Komentari/Komentari.ascx" TagName="KomentariBox" TagPrefix="kc" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

            <div class="kontenjerClanak">
                <div class="clanakfullinfo">
                    <asp:Label ID="lbl_KorisnikNadimak" runat="server" CssClass="clanakfulldugmadi"></asp:Label>
                    <asp:Image ID="img_Korisnik" runat="server" CssClass="clanakfulldugmadi" />
                    <asp:Label ID="Label2" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Literal ID="lbl_Reputacija" runat="server"></asp:Literal>
                    <asp:Label ID="Label1" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Label ID="lbl_Kreirano" runat="server" CssClass="clanakfulldugmadi"></asp:Label>
                    <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Label ID="lbl_BrojPregleda" runat="server" CssClass="clanakfulldugmadi"></asp:Label>
                    <asp:Label ID="Label4" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Label ID="lbl_BrojPrihvacenihodgovora" runat="server" CssClass="clanakfulldugmadi"></asp:Label>
                    <asp:Label ID="Label5" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Label ID="lbl_BrojPoena" runat="server" CssClass="clanakfulldugmadi"></asp:Label>
                    <asp:Label ID="Label6" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                    <asp:Label ID="lbl_BrojKomentara" runat="server" CssClass="clanakfulldugmadi"></asp:Label>

                </div>

                <div class="clanakfullslika">
                    <asp:ImageButton ID="img_Clanak_Photo" runat="server" Width="220px" PostBackUrl="~/Public/Clanak.aspx?PostID=" />
                </div>
                <div class="clanakfullnaslov">
                    <asp:Label ID="lbl_Naslov" runat="server"></asp:Label>
                </div>

                <asp:Literal ID="lit_Sazetak" runat="server"></asp:Literal>
                <asp:Literal ID="lit_Sadrzaj" runat="server"></asp:Literal>
                <br />
                <hr />
                <br />

                <div style="height: 60px;">
                    <div class="likes">

                        <div class="likesbodovi">
                            <p>
                                <asp:Label ID="lbl_VotesScore" runat="server"></asp:Label></p>
                            <h3>
                                <asp:Label ID="lbl_bodovi" runat="server" Text="Label">Bodova</asp:Label></h3>
                        </div>

                        <asp:ImageButton ID="btn_Like" CssClass="likes1btn" runat="server" Text="Up" Width="62px" OnClick="btn_Like_Click" Height="23px" ImageUrl="~/Content/Buttons/WLIKE.png" />
                        <asp:Label ID="lbl_Likes" CssClass="likes1txt" runat="server"></asp:Label>
                        <br />
                        <asp:ImageButton ID="btn_Unlike" CssClass="likes1btn" runat="server" Text="Down" OnClick="btn_Unlike_Click" Width="62px" Height="23px" ImageUrl="~/Content/Buttons/WUNLIKE.png" />
                        <asp:Label ID="lbl_Unlikes" CssClass="likes1txt" runat="server"></asp:Label>

                    </div>

                    <div class="likes">
                        <asp:ImageButton ID="btn_RateThis_01" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_01_Click" ImageUrl="~/Content/Buttons/s1.png" />
                        <asp:ImageButton ID="btn_RateThis_02" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_02_Click" ImageUrl="~/Content/Buttons/s2.png" />
                        <asp:ImageButton ID="btn_RateThis_03" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_03_Click" ImageUrl="~/Content/Buttons/s3.png" />
                        <asp:ImageButton ID="btn_RateThis_04" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_04_Click" ImageUrl="~/Content/Buttons/s4.png" />
                        <asp:ImageButton ID="btn_RateThis_05" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_05_Click" ImageUrl="~/Content/Buttons/s5.png" />
                        <br />
                        <p>
                            <asp:Label ID="lbl_RateThis" runat="server">Rate </asp:Label></p>
                    </div>
                </div>

            </div>

            <div class="lijevo2">
            <div>
            <kc:KomentariBox runat="server" ID="KomentariBox" />            
            </div>
                </div>
            </div>
         </div>
       
    <asp:SqlDataSource runat="server" ID="SqlKomKor" ConnectionString='<%$ ConnectionStrings:TriglavConnectionString %>' SelectCommand="SELECT Komentari.id, Komentari.Sadrzaj, Komentari.DatumKreiranja, Komentari.Likes, Komentari.Unlikes, Komentari.PostID, Komentari.KorisnikID, Post.id AS postId, Korisnik.Nadimak, Korisnik.Reputacija, Korisnik.Pregleda, Korisnik.Likes AS Expr1, Korisnik.Unlikes AS Expr2, Korisnik.SlikaURL, Komentari.isRazgovor FROM Komentari INNER JOIN Post ON Komentari.PostID = Post.id INNER JOIN Korisnik ON Komentari.KorisnikID = Korisnik.id WHERE (Komentari.PostID = @PostId) AND (Komentari.isRazgovor = 0) ORDER BY Komentari.DatumKreiranja DESC">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="PostId" QueryStringField="PostId" />
        </SelectParameters>
    </asp:SqlDataSource>
        
    

</asp:Content>

