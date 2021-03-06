﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Public/WikiTriglav.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web.Public.Home" ValidateRequest="false" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <script type="text/javascript">
        function searchWithClick(value) {
            var searchTerm = value;

            $.getJSON(
                'http://en.wikipedia.org/w/api.php?action=parse&page=' + searchTerm + '&prop=text&format=json&callback=?',
                function (json) {
                    $('#wikiInfo').html(json.parse.text['*']);
                    $("#wikiInfo").find("a:not(.references a)").attr("href", function () { return "http://www.wikipedia.org" + $(this).attr("href"); });
                    $("#wikiInfo").find("a").attr("target", "_blank");
                });
        }
         </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div id="glavna">

        <div class="desno">

            <div class="info">
                <p>Dobrodošli na FitWIKI.</p>
                <p> <asp:Label ID="txt_TrenutnoUredjujemo" runat="server" Text="Label" Font-Bold="True"></asp:Label> </p>
                <p>I Vi možete uređivati FitWIKI! </p>
            </div>

            <%--DATALIST KATEGORIJE--%>
            <div class="kategorije2">
                <div class="naslov">
                    <h2>Oblasti</h2>
                </div>

                <div class="oblastiteme">
                    <ul>
                        <asp:DataList ID="dl_Kategorije" runat="server" OnItemDataBound="dl_Kategorije_ItemDataBound">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="lb_NazivKategorije" runat="server"><%# Eval("Naslov") %></asp:LinkButton>
                                    <asp:LinkButton ID="lb_BrojClanaka" runat="server" ></asp:LinkButton>
                                    <asp:LinkButton ID="lb_BrojPitanja" runat="server" ></asp:LinkButton>
                                </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>
                </div>

                <div class="naslov">
                    <h2>Teme</h2>
                </div>
                <%--DATALIST PODKATEGORIJE--%>
                <div class="oblastiteme">

                    <ul>
                        <asp:DataList ID="dl_Podkategorije" runat="server" OnItemDataBound="dl_Podkategorije_ItemDataBound">
                            <ItemTemplate>
                                <li>
                                    <asp:LinkButton ID="lb_NazivPodKategorije" runat="server"><%# Eval("Naslov") %></asp:LinkButton>
                                    <asp:LinkButton ID="lb_BrojClanakaP" runat="server" ></asp:LinkButton>
                                    <asp:LinkButton ID="lb_BrojPitanjaP" runat="server" ></asp:LinkButton>
                                </li>
                            </ItemTemplate>

                        </asp:DataList>
                    </ul>
                </div>

                <div class="naslov">
                    <h2>Tagovi Wiki</h2>
                </div>

                <div class="tagoviwiki">
                    <ul>
                        <asp:DataList ID="rpt_Tagovi" runat="server" OnItemDataBound="rpt_Tagovi_ItemDataBound">
                            <ItemTemplate>
                                <li>
                                    <div class="tagr">
                                        <asp:Label ID="lbl_BrojTagovanihPostova" runat="server"></asp:Label>
                                         <asp:LinkButton ID="lb_TagNaziv" runat="server" PostBackUrl='<%# "~/Public/Home.aspx?TagID=" + Eval("id") %>'>  <%#Eval("Naziv") %> </asp:LinkButton>                                    
                                     </div>
                                   
                             </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>

                </div>

                <div class="naslovqahome">
                    <h1>Tagovi Q&A</h1>
                </div>


                <div class="tagoviqa">
                    <ul>
                        <asp:DataList ID="rpt_TagoviQA" runat="server" OnItemDataBound="rpt_TagoviQA_ItemDataBound">
                            
                            <ItemTemplate>
                                
                                <li>
                                    <div class="tagpr">
                                        <asp:Label ID="lbl_BrojTagovanihPostova" runat="server"></asp:Label>  
                                        <asp:LinkButton ID="lb_TagNaziv" runat="server" PostBackUrl='<%# "~/Public/QA_Pitanja.aspx?TagID=" + Eval("id") %>'>  <%#Eval("Naziv") %> </asp:LinkButton>
                                      </div> 
                                </li>
                                     
                            </ItemTemplate>
                                

                        </asp:DataList>
                    </ul>
                </div>


            </div>




        </div>

        <div class="searchinfo">
            <p>
                <asp:Label ID="lbl_NaslovStranice" runat="server" Font-Bold="True"></asp:Label>
                <asp:Label ID="lbl_TrazenaRijec" runat="server"></asp:Label>
                <asp:Label ID="lbl_BrojRezlutataPretrage" runat="server"></asp:Label>
            </p>
        </div>

        <div class="lijevo">



            <div class="seperator1">     <p>FitWIKI</p>      </div>
            <div class="seperator">                
                <ul>
                    <li> <asp:Button ID="btn_Posljednje" runat="server" Text="Posljednje" OnClick="btn_Posljednje_Click" CssClass="nav2dugmadi" /></li>
                    <li> <asp:Button ID="btn_Istaknuti" runat="server" Text="Istaknuto" OnClick="btn_Istaknuti_Click" CssClass="nav2dugmadi" /></li>
                    <li> <asp:Button ID="btn_Hot" runat="server" Text="Hot" OnClick="btn_Hot_Click" CssClass="nav2dugmadi" /></li>
                    <li> <asp:Button ID="btn_OveSedmice" runat="server" Text="Ove sedmice" OnClick="btn_OveSedmice_Click" CssClass="nav2dugmadi" /></li>
                    <li> <asp:Button ID="btn_OvogMjeseca" runat="server" Text="Ovog mjeseca" OnClick="btn_OvogMjeseca_Click" CssClass="nav2dugmadi" /></li>
                </ul>
            </div>            


            <%--DATALIST CLANCI--%>
            <div class="kontenjer"> 

                <%--PREPORUKA CLANCI--%>
                <asp:DataList ID="dl_Clanci" runat="server" OnItemDataBound="dl_Clanci_ItemDataBound" Width="100%" GridLines="Vertical">

                    <ItemTemplate>
                        <div class="clanak">

                            <div class="slikaclanak">
                                <asp:ImageButton ID="img_Clanak_Photo" runat="server" Width="160px" PostBackUrl='<%# "~/Public/Clanak.aspx?PostID=" + Eval("id") %>' />
                            </div>

                            <div class="clanakomotac">
                                
                                <div class="dnaslov">
                                    <asp:LinkButton ID="txt_Naslov" runat="server" PostBackUrl='<%# "~/Public/Clanak.aspx?PostID=" + Eval("id") %>'> <%#Eval("Naslov") %> </asp:LinkButton>
                                </div>

                                <%--LUCENE HIGHLIGHTER--%>
                                <div class="dsazetak">
                                    <span><%# DataBinder.Eval(Container.DataItem, "Sazetak") %></span>
                                </div>
                                
                                <%--DATALIST TAGOVI CLANKA--%>
                                <asp:DataList ID="dl_Tagovi" runat="server" CaptionAlign="NotSet" AlternatingItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <div class="tag">
                                            <asp:LinkButton ID="txt_tag" runat="server" PostBackUrl='<%# "~/Public/Home.aspx?TagID=" + Eval("id") %>' Font-Bold="True"><%#Eval("Naziv") %></asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>
                                 
                                <div class="clanakinfo">
                                    <div class="oblast">
                                        <asp:LinkButton ID="lb_oKategorija" runat="server" CssClass="clanakdugmadi">LinkButton</asp:LinkButton>
                                        <asp:Label ID="Label1" runat="server" ForeColor="gray" Text="Label">></asp:Label>
                                        <asp:LinkButton ID="lb_oPodKategorija" runat="server" CssClass="clanakdugmadi">LinkButton</asp:LinkButton>
                                    </div>
                                    <div class="rep">

                                        <abbr class="timeago" title="<%# DataBinder.Eval(Container.DataItem, "DatumZadnjeIzmjene", "{0:yyyy-M-dThh:mm:ss}") %>">nije uspjelo</abbr>
                                        <asp:Label ID="Label2" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:ImageButton ID="img_User" runat="server" Height="16px" Width="16px" CssClass="clanakdugmadi" />
                                        <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("VlasnikNadimak") %>' CssClass="clanakdugmadi"></asp:Label>
                                        <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:Label ID="lbl_Reputacija" runat="server" CssClass="clanakdugmadi" />

                                    </div>
                                </div>   
                            </div>                      
                        </div>


                    </ItemTemplate>

                </asp:DataList>

            </div>

            <div class="seperator2">      <p>Pitanja i odgovori</p>      </div>

            <div class="kontenjer">
              

                <%--DATALIST PITANJA--%>
                <%--PREPORUKA PITANJA--%>
                <asp:DataList ID="dl_Pitanja" runat="server" OnItemDataBound="dl_Pitanja_ItemDataBound" Width="100%" GridLines="Vertical">


                    <ItemTemplate>
                        <div class="clanak">
                            <div class="slikapitanje">
                                <div class="qstat">
                                    <h2>
                                        <asp:Label ID="lbl_BrojGlasova" runat="server" Text='<%#Eval("BrojPoena") %>'></asp:Label></h2>
                                    <p>Glasovi</p>
                                </div>

                                <div class="qstat">
                                    <h2>
                                        <asp:Label ID="lbl_BrojOdgovora" runat="server" Text='<%#Eval("BrojOdgovora") %>'></asp:Label></h2>
                                    <p>Odgovora</p>
                                </div>

                                <div class="qstat">
                                    <h2>
                                        <asp:Label ID="lbl_BrojPregleda" runat="server" Text='<%#Eval("BrojPregleda") %>'></asp:Label></h2>
                                    <p>Pregleda</p>
                                </div>


                            </div>

                            <div class="clanakomotac">
                                <div class="dnaslovp">
                                    <p><asp:LinkButton ID="txt_Naslov" runat="server" PostBackUrl='<%# "~/Public/QA_Pitanje.aspx?PostID=" + Eval("id") %>'> <%#Eval("Naslov") %></asp:LinkButton> </p>
                                </div>                               

                                <%--  HIGHLIGHTER PITANJA--%>
                                <div class="dsadrzaj">
                                    <span ><%# DataBinder.Eval(Container.DataItem, "Sadrzaj") %></span>
                                </div>

                                <%--DATALIST TAGOVI PITANJA--%>

                                <asp:DataList ID="dl_Tagovi" runat="server" CaptionAlign="NotSet" AlternatingItemStyle-HorizontalAlign="Center" RepeatDirection="Horizontal">
                                    <ItemTemplate>
                                        <div class="tagp">
                                            <asp:LinkButton ID="txt_tag" runat="server" Font-Underline="False" PostBackUrl='<%# "~/Public/QA_Home.aspx?TagID=" + Eval("id") %>' Font-Bold="True"><%#Eval("Naziv") %></asp:LinkButton>
                                        </div>
                                    </ItemTemplate>
                                </asp:DataList>

                                <%--DATALIST PITANJA INFO--%>
                                 <div class="clanakinfo">
                                    <div class="oblast">
                                        <asp:LinkButton ID="lb_oKategorija" runat="server" CssClass="clanakdugmadi">LinkButton</asp:LinkButton>
                                        <asp:Label ID="Label1" runat="server" ForeColor="gray" Text="Label">></asp:Label>
                                        <asp:LinkButton ID="lb_oPodKategorija" runat="server" CssClass="clanakdugmadi">LinkButton</asp:LinkButton>
                                    </div>
                                    <div class="rep">

                                        <abbr class="timeago" title="<%# DataBinder.Eval(Container.DataItem, "DatumZadnjeIzmjene", "{0:yyyy-M-dThh:mm:ss}") %>">nije uspjelo</abbr>
                                        <asp:Label ID="Label4" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:ImageButton ID="img_User" runat="server" Height="16px" Width="16px" CssClass="clanakdugmadi" />
                                        <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("VlasnikNadimak") %>' CssClass="clanakdugmadi"></asp:Label>
                                        <asp:Label ID="Label5" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:Label ID="lbl_Reputacija" runat="server" CssClass="clanakdugmadi" />

                                    </div>
                                </div>



                            </div>
                    </ItemTemplate>

                </asp:DataList>


            </div>

            <div class="seperator3">               

                <p>Wikipedia izdvojeno</p>

            </div>

            <div class="kontenjerext">

                <%-- PREPORUKA EKSTERNI IZVOR--%>
                <%-- WIKI--%>
                <div id="wikiInfo"></div>
            </div>
            <%--KONTENJER KRAJ--%>
        </div>
        <%--DESNO KRAJ--%>
    </div>
    <%--GLAVNA KRAJ--%>
</asp:Content>
