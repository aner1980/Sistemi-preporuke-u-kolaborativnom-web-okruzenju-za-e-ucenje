<%@ Page Title="" Language="C#" MasterPageFile="~/Public/QA.Master" AutoEventWireup="true" CodeBehind="QA_Tagovi.aspx.cs" Inherits="Web.Public.QA_Tagovi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="glavna">
        <div class="omotac">
            <div class="navtagovi">
                <ul>

                    <li>
                        <asp:Button ID="btn_Popularni" runat="server" Text="Popularni" OnClick="btn_Popularni_Click" /></li>
                    <li>
                        <asp:Button ID="btn_PoAbecedi" runat="server" Text="Po Abecedi" OnClick="btn_PoAbecedi_Click" /></li>
                    <li>
                        <asp:Button ID="btn_Najnoviji" runat="server" Text="Najnoviji" OnClick="btn_Najnoviji_Click" /></li>
                    <li>
                        <asp:TextBox ID="txt_TagoviPretraga" runat="server"></asp:TextBox>
                        <asp:Button ID="btn_TagoviPretraga" runat="server" Text="Potražite tag" OnClick="btn_TagoviPretraga_Click" />
                    </li>
                </ul>


                 
              </div>

 

                <%--DATALIST PITANJA--%>

                <div class="tagovistranica">



                    <ul>
                        <asp:DataList ID="rpt_Tagovi" runat="server" OnItemDataBound="rpt_Tagovi_ItemDataBound" RepeatDirection="Horizontal">
                            <ItemTemplate>
                                <li>
                                    <div class="tagobruc">
                                        <asp:LinkButton ID="lb_TagNaziv" runat="server" PostBackUrl='<%# "~/Public/Home.aspx?TagID=" + Eval("id") %>'>  <%#Eval("Naziv") %> </asp:LinkButton></div>
                                    <div class="brojtagovanistranica">
                                        <asp:Label ID="lbl_BrojTagovanihPostova" runat="server"></asp:Label></div>
                                    <%-- <asp:Literal ID="lit_TagOpis" runat="server" Text='<%#Eval("Opis") %>'>    </asp:Literal> --%>
                             </li>
                            </ItemTemplate>
                        </asp:DataList>
                    </ul>

                </div>

            
        </div>
    </div>
</asp:Content>
