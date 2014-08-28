<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" ValidateRequest ="true" Inherits="Web.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="Triglav.css" rel="stylesheet" />
</head>
<body>
     
    <form id="form1" runat="server">
     <div id="registerForm"> 
        <div style="width:560px; margin-top:15px; text-align:right; font-family:Verdana"><p>Ako posjedujete nalog pritisnite link za logiranje!</p></div>
        <br /><div class="register" style="margin-left:300px"> <a href="Login.aspx" >Logiranje</a> </div>
               
        <br />
        <hr />


        <h3>Registracija korisnika</h3>

        <div style="margin: 20px 20px 20px 20px; text-align: left">


            <asp:Label runat="server" Text="Korisnicko ime" ID="lbl_KorisnickoIme" Width="120px"></asp:Label>
            <asp:TextBox ID="txt_KorisnickoIme" runat="server" Width="200px" ToolTip="Upišite vaše korisničko ime"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_KorisnickoIme" runat="server" ControlToValidate="txt_KorisnickoIme" ErrorMessage="Molimo Vas unesite korisničko ime" ForeColor="#0099CC" Display="None"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label runat="server" Text="Lozinka" ID="lbl_Lozinka" Width="120px"></asp:Label>
            <asp:TextBox ID="txt_Lozinka" runat="server" Width="200px" TextMode="Password" ToolTip="Upišite vasu lozinku"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv_Lozinka" runat="server" ControlToValidate="txt_Lozinka" ErrorMessage="Molimo Vas unesite lozinku" ForeColor="#0099CC" Display="None"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label runat="server" Text="Lozinka" ID="Label1" Width="120px"></asp:Label>
            <asp:TextBox ID="txt_LozinkaP" runat="server" Width="200px" TextMode="Password" ToolTip="Upišite vasu lozinku"></asp:TextBox>
            <asp:CompareValidator ID="cv_lozinka" runat="server" ErrorMessage="Lozinke nisu identične" ControlToCompare="txt_Lozinka" ControlToValidate="txt_LozinkaP" ForeColor="#0099CC"></asp:CompareValidator>
            <br />
            <br />

            <asp:Label runat="server" Text="Broj godina" ID="lbl_BrojGodina" Width="120px"></asp:Label>
            <asp:TextBox ID="txt_BrojGodina" runat="server" Width="200px" ToolTip="Upišite koliko imate godina"></asp:TextBox>
            <asp:RangeValidator ID="rv_BrojGodina" runat="server" ControlToValidate="txt_BrojGodina" ErrorMessage="Da li ste punoljetni" ForeColor="#0099CC" MaximumValue="99" MinimumValue="14" Display="None"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="rfv_brojGodina" runat="server" ControlToValidate="txt_BrojGodina" Display="None" ErrorMessage="Molimo Vas Upišite broj godina" ForeColor="#0099CC"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Image ID="img_Foto" runat="server" Height="126px" ImageUrl="~/Content/Users_Photo/DefaultUser.jpg" Width="125px" />
            
            <asp:Label runat="server" Text="Fotografija  " ID="lbl_Foto" Width="120px"></asp:Label>
            
            <asp:FileUpload ID="FuFoto" runat="server" />
            <asp:Button ID="btn_uploadFoto" runat="server" Text="Upload" Style="margin-left: 20px" OnClick="btn_uploadFoto_Click" CausesValidation ="false"/>
             <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label runat="server" Text="Kratka biografija" ID="lbl_OMeni" Width="120px"></asp:Label>
            <asp:RequiredFieldValidator ID="rfv_OMeni" runat="server" ControlToValidate="txt_OMeni" ErrorMessage="Molimo vas napišite kratku biografiju" ForeColor="#0099CC" Display="None"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txt_OMeni" runat="server" TextMode="MultiLine" Height="250px" Width="500px" ToolTip="Napišite nešto o sebi"></asp:TextBox>
            <br />
            <br />
            <br />            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" ValidateRequestMode="Inherit" />
             

            <asp:Button ID="btn_SaveKorisnik"  class="register" runat="server" Text="Registriraj korisnika" Style="margin-left: 250px" OnClick="btn_SaveKorisnik_Click" />
            
        </div>
          </div>
    </form>
</body>
</html>
