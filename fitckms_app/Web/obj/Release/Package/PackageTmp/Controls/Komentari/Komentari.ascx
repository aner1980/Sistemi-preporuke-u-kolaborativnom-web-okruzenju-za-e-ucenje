<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Komentari.ascx.cs" Inherits="Web.Controls.Komentari.Komentari" %>
<div class="komentaribox">
     <div class="dodajkoment">

        <asp:TextBox ID="txt_Sadrzaj" runat="server" TextMode="MultiLine" Width="95%" Height="100px" Wrap="true"></asp:TextBox>
        <asp:Button ID="btn_SaveKomentar" CssClass="dodajkomentdugme" runat="server" Text="Komentiraj" OnClick="btn_SaveKomentar_Click" BorderColor="#5C859A" BorderStyle="None" />
     </div>
    
    <div class="dodajkoment1">
        <asp:Repeater ID="rpt_KomentariNaPost" runat="server" DataSourceID="SqlKomKor">
            <ItemTemplate>
                <div class="komentari">
                    <div class="komentarislika">
                        <asp:Image ID="img_LogiraniKorisnik" ImageUrl='<%# Eval("SlikaURL") %>' runat="server" Height="50px" Width="50px" />
                    </div>

                    <div class="komentariinfo">
                        <p class="komentarimargin">

                            <asp:Label ID="lbl_OKorisniku" runat="server">
                         <%# Eval("Nadimak") %>  | Reputacija<%# Eval("Reputacija") %>| Sviđanja<%# Eval("Likes") %>| Nesviđanja<%# Eval("Unlikes") %></asp:Label>
                        </p>


                    </div>
                    <div class="komentarisadrzaj"><%# Eval("Sadrzaj") %> </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
   
    </div>

<asp:SqlDataSource runat="server" ID="SqlKomKor" ConnectionString='<%$ ConnectionStrings:TriglavConnectionString %>' SelectCommand="SELECT Komentari.id, Komentari.Sadrzaj, Komentari.DatumKreiranja, Komentari.Likes, Komentari.Unlikes, Komentari.PostID, Komentari.KorisnikID, Post.id AS postId, Korisnik.Nadimak, Korisnik.Reputacija, Korisnik.Pregleda, Korisnik.Likes AS Expr1, Korisnik.Unlikes AS Expr2, Korisnik.SlikaURL, Komentari.isRazgovor FROM Komentari INNER JOIN Post ON Komentari.PostID = Post.id INNER JOIN Korisnik ON Komentari.KorisnikID = Korisnik.id WHERE (Komentari.PostID = @PostId) AND (Komentari.isRazgovor = 0) ORDER BY Komentari.DatumKreiranja DESC">
    <SelectParameters>
        <asp:QueryStringParameter DefaultValue="" Name="PostId" QueryStringField="PostId" />
    </SelectParameters>
</asp:SqlDataSource>

