<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_Neodgovoreni.aspx.cs" Inherits="Web.Public.QA_Neodgovoreni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div id="glavna">
    <div style="height: 130px"></div>
    <div class="lijevo">
    <div class="seperator">
         <ul>
         <li > <asp:Button ID="btn_MojiTagovi" runat="server" Text="Moji Tagovi" CssClass="nav2dugmadi" OnClick="btn_MojiTagovi_Click" /></li>
         <li >  <asp:Button ID="btn_Najnovija" runat="server" Text="Najnovija" CssClass="nav2dugmadi" OnClick="btn_Najnovija_Click" /></li>
         <li >  <asp:Button ID="btn_PoGlasovima" runat="server" Text="Po Glasovima" CssClass="nav2dugmadi" OnClick="btn_PoGlasovima_Click" /></li>
         </ul>
        
        
        <%--DATALIST PITANJA--%>
     </div>
                    <div class="kontenjer">

                <%--DATALIST PITANJA--%>
                <%--PREPORUKA PITANJA--%>
                <%--<asp:DataList ID="dl_Pitanja" runat="server" OnItemDataBound="dl_Pitanja_ItemDataBound" width="100%" GridLines="Vertical">--%>
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
                                    <p> <asp:LinkButton ID="txt_Naslov" runat="server" PostBackUrl='<%# "~/Public/QA_Pitanje.aspx?PostID=" + Eval("id") %>'> <%#Eval("Naslov") %></asp:LinkButton>
                                    </p>
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
                                        <asp:Label ID="Label2" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:ImageButton ID="img_User" runat="server" Height="16px" Width="16px" CssClass="clanakdugmadi" />
                                        <asp:Label ID="lbl_User" runat="server" Text='<%#Eval("VlasnikNadimak") %>' CssClass="clanakdugmadi"></asp:Label>
                                        <asp:Label ID="Label3" runat="server" ForeColor="gray" Text="Label">|</asp:Label>
                                        <asp:Label ID="lbl_Reputacija" runat="server" CssClass="pitanjadugmadi" />

                                    </div>
                                </div>
                              



                            </div>
                            </div>
                    </ItemTemplate>

                </asp:DataList>


            </div>

        

                </div>
       </div>  
</asp:Content>
