<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web.Public.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="Triglav.css" rel="stylesheet" />    
</head>
<body>
    <form id="form1" runat="server">
       
         
    <div id="login">
    
         <div class="login1">
        <asp:Label ID="Label1" runat="server" Text="Korisničko ime:"></asp:Label>
             <asp:TextBox ID="txt_KorisnickoIme" runat="server">blocky</asp:TextBox> <br />   
        
             </div> 
        <div class="login1">
        <asp:Label ID="Label2" runat="server" Text="Lozinka:"></asp:Label>
        <asp:TextBox ID="txt_Lozinka" runat="server" TextMode="Password">test</asp:TextBox>
         </div>
        <br />
        <asp:Button ID="btn_Logiranje" runat="server" Text="Login"  OnClick="btn_Logiranje_Click" />
        <br /><br />
        <div style="width:260px;text-align:center; font-family:Verdana"><p>Ako ne posjedujete nalog pritisnite link za registraciju!</p></div>
        <br /><div class="register"> <a href="RegistrationForm.aspx">Registracija</a> </div>
        
    
    </div>
    </form>
</body>
</html>
