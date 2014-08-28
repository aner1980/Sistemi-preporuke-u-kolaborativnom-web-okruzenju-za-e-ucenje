<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="QA_Pitanje.aspx.cs" Inherits="Web.Public.QA_Pitanje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%--UKLJUČIVANJE tinyMCE--%>
    <script src="/Scripts/tinymce/tiny_mce.js"></script>
    <script src="/Scripts/tinymce/tiny_mce_init.js"></script>
    <script src="/Scripts/tinymce/plugins/save/editor_plugin.js"></script>

    <style type="text/css">
        .mceEditor {      }
    </style>

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
             <div class="kategorije2">
                <%--PREPORUKA KORISNICI ELVIS DODAO--%>
              <div class="kategorije2">
              <div class="naslov">
                    <h1>Korisnici</h1>
                </div>

                <div class="tagoviwiki">
                    <ul>
                        <asp:DataList ID="DataList1" runat="server" >
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

                <div class="tagoviwiki">
                    <ul>
                        <asp:DataList ID="dl_Korisnici" runat="server" >
                            <ItemTemplate>
                                <li>
                                    <asp:ImageButton ID="img_User" runat="server" PostBackUrl='<%#"/Public/QA_Pitanja.aspx?KorisnikID="+ Eval("id") %>' ImageUrl='<%#Eval("SlikaURL") %>' Height="16px" Width="16px" CssClass="pitanjadugmadi" />
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


         <div style="height: 130px"></div>
        <div class="lijevo">
           

             <div class="kontenjerClanak">
                <div class="clanakfullinfo">
                     <asp:LinkButton ID="lb_oKategorija" runat="server" CssClass="clanakfulldugmadi">LinkButton</asp:LinkButton>
                         <asp:Label ID="Label6" runat="server" ForeColor="gray" Text="Label">></asp:Label>
                    <asp:LinkButton ID="lb_oPodKategorija" runat="server" CssClass="clanakfulldugmadi">LinkButton</asp:LinkButton>  
                         <asp:Label ID="Label1" runat="server" ForeColor="gray" Text="Label">|</asp:Label>                     
                        <asp:Label ID="lbl_BrojPrihvacenihodgovoratext" runat="server" Text="odgovori" CssClass="clanakfulldugmadi"  ></asp:Label>
                        <asp:Label ID="lbl_BrojPrihvacenihodgovora" runat="server" CssClass="clanakfulldugmadi"  ></asp:Label> 
                         <asp:Label ID="Label2" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                        <asp:Label ID="lbl_BrojPregledaText" runat="server" Text="Pregledi" CssClass="clanakfulldugmadi" ></asp:Label>
                        <asp:Label ID="lbl_BrojPregleda" runat="server" CssClass="clanakfulldugmadi" ></asp:Label> 
                         <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                         <asp:Label ID="lbl_RejtingText" runat="server" Text="rejting" CssClass="clanakfulldugmadi"  ></asp:Label>
                        <asp:Label ID="lbl_Rejting" runat="server" CssClass="clanakfulldugmadi" ></asp:Label> 
                         <asp:Label ID="Label4" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                       
                        <asp:Label ID="lbl_Kreirano" runat="server" CssClass="clanakfulldugmadi" ></asp:Label>

                    </div>
                

                <div class="clanakfullnaslov">
                    <asp:Label ID="lbl_Naslov" runat="server" ></asp:Label>

                </div>

                <div class="clanakfullsadrzaj">
                    <asp:Literal ID="lit_Sadrzaj" runat="server" ></asp:Literal>
                </div>

                <div style="height: 60px;">
                    <div class="likes">

                        <div class="likesbodovi">
                            <p>
                                <asp:Label ID="lbl_VotesScore" runat="server"></asp:Label></p>
                            <h3>
                                <asp:Label ID="lbl_bodovi" runat="server" Text="Label">Bodova</asp:Label></h3>
                        </div>

                        <asp:ImageButton ID="btn_Like" CssClass="likes1btn" runat="server" Text="Up" Width="62px" OnClick="btn_Like_Click" Height="23px" ImageUrl="~/Content/Buttons/PLIKE.png" />
                        <asp:Label ID="lbl_Likes" CssClass="likes1txt" runat="server"></asp:Label>
                        <br />
                        <asp:ImageButton ID="btn_Unlike" CssClass="likes1btn" runat="server" Text="Down" OnClick="btn_Unlike_Click" Width="62px" Height="23px" ImageUrl="~/Content/Buttons/PUNLIKE.png" />
                        <asp:Label ID="lbl_Unlikes" CssClass="likes1txt" runat="server"></asp:Label>

                    </div>

                    <div class="likes">

                        <asp:ImageButton ID="btn_RateThis_01" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_01_Click" ImageUrl="~/Content/Buttons/sp1.png" />
                        <asp:ImageButton ID="btn_RateThis_02" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_02_Click" ImageUrl="~/Content/Buttons/sp2.png" />
                        <asp:ImageButton ID="btn_RateThis_03" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_03_Click" ImageUrl="~/Content/Buttons/sp3.png" />
                        <asp:ImageButton ID="btn_RateThis_04" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_04_Click" ImageUrl="~/Content/Buttons/sp4.png" />
                        <asp:ImageButton ID="btn_RateThis_05" CssClass="zvijezda" runat="server" OnClick="btn_RateThis_05_Click" ImageUrl="~/Content/Buttons/sp5.png" />
                        <br />
                        <p>
                            <asp:Label ID="lbl_RateThis" runat="server">Rate </asp:Label></p>
                    </div>
                </div>

             

       
                

                    <div class="stars">                   
                        
                    <div class="pitanjeautor" >
                        <asp:ImageButton ID="img_Korisnik" runat="server" Height="35px" Width="35px" />
                        <asp:Label ID="lbl_KorisnikNadimak" runat="server" Font-Size="12px"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="Label">|</asp:Label>
                        <asp:Literal ID="lbl_Reputacija" runat="server"></asp:Literal>
                        <asp:Label ID="Label9" runat="server" Text="Label">|</asp:Label>
                        <asp:Image ID="img_BedzVlsanika" runat="server" Height="25px" Width="25px" />
                        <asp:Label ID="lbl_NazivBedzaVlasnika" runat="server"></asp:Label>
                    </div>
                    </div>              

                </div>
            </div>



    <div class="lijevo" style="background-color: white">
        <br />
        <hr />
        Unesite odgovor
           
        <br />
        <br />
        <%--NOVI ODGOVOR--%>
        <asp:TextBox ID="txt_oSadrzaj" runat="server" TextMode="MultiLine" CssClass="mceEditor" EnableViewState="True" AutoPostBack="True" Width="100%"></asp:TextBox>
        <div class="dodajkomentdugmeokvir">
            <asp:Button ID="btn_SaveOdgovor" CssClass="dodajkomentdugme" runat="server" Width="145px" Height="27px"  OnClick="btn_SaveOdgovor_Click" Text="Objavite odgovor" />
        </div>
           <br />
        <hr />
         <br />
    </div>
        

        <div class="lijevo">
         
        <%-- LISTA ODGOVORA--%>
        <asp:DataList ID="dl_odgovori" runat="server" CellPadding="3" GridLines="Vertical" Width="100%" OnItemDataBound="dl_odgovori_ItemDataBound" CellSpacing="5" BorderStyle="Solid">

            <ItemStyle BorderColor="#F4F4F4" BorderStyle="Solid" BorderWidth="10px" />

            <ItemTemplate>
        <div class="odgovoripitanja">
            <div class="likes">

                <div class="likesbodovi">
                    <p>
                        <asp:Label ID="lbl_BrojPoena" runat="server"></asp:Label>
                    </p>
                    <h3>
                        <asp:Label ID="lbl_bodovi" runat="server" Text="Label">Bodova</asp:Label></h3>
                </div>

                <asp:ImageButton ID="btn_oLike" CssClass="likes1btn" runat="server" Text="Up" Width="62px" OnClick="btn_Like_Click" Height="23px" ImageUrl="~/Content/Buttons/PLIKE.png" />
                <br />
                <br />
                <asp:ImageButton ID="btn_oUnlike" CssClass="likes1btn" runat="server" Text="Down"  OnClick="btn_Unlike_Click" Width="62px" Height="23px" ImageUrl="~/Content/Buttons/PUNLIKE.png" />


            </div>

            <div class="odgovorsadrzaj">
                <asp:HiddenField ID="hf" runat="server" Value='<%#Eval("id")%>' />
                <asp:Literal ID="lit_oSadrzaj" runat="server" Text='<%# Eval("Sadrzaj") %>'></asp:Literal>

            </div>


            <div class="odgovorinfo">

                <asp:ImageButton ID="img_User" runat="server" Height="20px" Width="20px" />
                <asp:Label ID="lbl_oKorisnikNadimak" runat="server" Font-Size="12px"><%# Eval("VlasnikNadimak") %></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="Label">|</asp:Label>
                <asp:ImageButton ID="img_Bedz" runat="server" Height="20px" Width="20px" />
                <asp:Label ID="lbl_NazivBedza" runat="server"></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Label">|</asp:Label>
                <asp:Label ID="lbl_Reputacija" runat="server"></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Label">|</asp:Label>
                <abbr class="timeago" title='<%# DataBinder.Eval(Container.DataItem, "DatumZadnjeIzmjene", "{0:yyyy-M-dThh:mm:ss+01:00}")  %>'>nije uspjelo</abbr>

            </div>
            <br />



        </div>
            </ItemTemplate>
 
        </asp:DataList>

      </div>


         </div>


</asp:Content>
