<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_Tagovi.aspx.cs" Inherits="Web.Public.QA_Tagovi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="glavna">
        <div class="lijevo">
            <div style="height: 130px"></div> 
            <div class="seperator">
                <ul>
                    <li>
                        <asp:Button ID="btn_Popularni" runat="server" Text="Popularni" CssClass="nav2dugmadi" OnClick="btn_Popularni_Click" /></li>
                    <li>
                        <asp:Button ID="btn_PoAbecedi" runat="server" Text="Po Abecedi" CssClass="nav2dugmadi" OnClick="btn_PoAbecedi_Click" /></li>
                    <li>
                        <asp:Button ID="btn_Najnoviji" runat="server" Text="Najnoviji" CssClass="nav2dugmadi" OnClick="btn_Najnoviji_Click" /></li>


                    <li><asp:TextBox ID="txt_TagoviPretraga" runat="server" CssClass="TagoviPretraga"></asp:TextBox></li>
                     <li><asp:Button ID="btn_TagoviPretraga" runat="server" Text="Potražite tag" CssClass="nav2dugmadi" OnClick="btn_TagoviPretraga_Click" />
                    </li>
                </ul>
                 
              </div>

 

                <%--DATALIST PITANJA--%>

                <div class="kategorije2">
                    <ul>
                        <asp:DataList ID="rpt_Tagovi" runat="server" OnItemDataBound="rpt_Tagovi_ItemDataBound" RepeatDirection="Vertical" RepeatLayout="Table" RepeatColumns="3" SeparatorStyle-Height="60">
                            <ItemTemplate>
                                <li>
                                    <div class="tagprp">
                                         <asp:Label ID="lbl_BrojTagovanihPostova" runat="server"></asp:Label>                                   
                                         <asp:LinkButton ID="lb_TagNaziv" runat="server" PostBackUrl='<%# "~/Public/Home.aspx?TagID=" + Eval("id") %>'>  <%#Eval("Naziv") %> </asp:LinkButton>
                                        </div>
                               </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>

                </div>

            
        </div>
    </div>
</asp:Content>
