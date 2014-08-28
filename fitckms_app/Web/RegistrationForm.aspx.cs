using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Data.EntityFramework.BLL;
using Data.EntityFramework.DAL;
using System.Text.RegularExpressions;
using System.Security.Cryptography;
using System.Text;

namespace Web
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        Korisnik korisnik = new Korisnik();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_uploadFoto_Click(object sender, EventArgs e)
        {
            if (FuFoto.PostedFile != null)
            {
                string fileName = FuFoto.FileName;
                string defaultVirtualPhotoLocation = "/Content/Users_Photo/";
                string photoVirtualPath = defaultVirtualPhotoLocation + fileName;
                string photoPhysicalPath = Server.MapPath(photoVirtualPath);

                FuFoto.PostedFile.SaveAs(photoPhysicalPath);
                img_Foto.ImageUrl = photoVirtualPath;
            }
        }

        protected void btn_SaveKorisnik_Click(object sender, EventArgs e)
        {
            if (ValidacijaKorisnika())
            {
                using (TriglavBL temp = new TriglavBL())
                {
                    string SigurnoIme = SafeSqlLiteral(txt_KorisnickoIme.Text);

                    korisnik.Nadimak = SigurnoIme;

                    var provider = new SHA1CryptoServiceProvider();
                    byte[] bytes = Encoding.UTF8.GetBytes(txt_Lozinka.Text);
                    string result = Convert.ToBase64String(provider.ComputeHash(bytes));
                    korisnik.Lozinka = result;

                    korisnik.BrojGodina = Convert.ToInt32(txt_BrojGodina.Text);
                    korisnik.OMeni = txt_OMeni.Text;
                    korisnik.DatumKreiranja = DateTime.Now;
                    korisnik.SlikaURL = img_Foto.ImageUrl;
                    korisnik.Reputacija = 0;
                    korisnik.Pregleda = 0;
                    korisnik.Likes = 0;
                    korisnik.Unlikes = 0;
                    korisnik.BrojZlatnih = 0;
                    korisnik.BrojSrebrenih = 0;
                    korisnik.BrojBronzanih = 0;
                    korisnik.BedzID = 10;
                    korisnik.BedzNaziv = temp.getBedzByID(10).Naziv;
                    korisnik.BedzSlika = temp.getBedzByID(10).SlikaURL;
                    korisnik.BedzOpis = temp.getBedzByID(10).Opis;
                    temp.SaveKorisnik(korisnik);
                    ResetPoljaRegistracija();
                    PostaviKorisnikaUSesiju();
                }
            }
            else
                ResetPoljaRegistracija();
        }

        private void PostaviKorisnikaUSesiju()
        {
            using (TriglavBL temp = new TriglavBL())
            {
               
                if (korisnik != null)
                {
                    Session.Add("LogiraniKorisnik", korisnik);
                    if (Request.QueryString != null)
                    {
                        if (Request.QueryString["ReturnUrl"] != null) Response.Redirect(Request.QueryString["ReturnUrl"]);
                        else Response.Redirect("/Public/Home.aspx");
                    }
                    else Response.Redirect("/Public/Home.aspx");
                }
                
            }
        }

        private void ResetPoljaRegistracija()
        {            
            txt_KorisnickoIme.Text = String.Empty;
            txt_Lozinka.Text  = String.Empty;
            txt_BrojGodina.Text = String.Empty;
            txt_OMeni.Text = String.Empty;
            img_Foto.ImageUrl = "Content/Users_Photo/DefaultUser.jpg"; 
        }

        private bool ValidacijaKorisnika()
        {
            var regexItem = new Regex("^[a-zA-Z0-9 ]*$");
            if (!regexItem.IsMatch(txt_KorisnickoIme.Text))
            {
                Response.Write("Greška! :: Korisničko ime ne smije sadrzati specijalne karaktere");
                return false;
            }
            using (TriglavBL temp = new TriglavBL())
            {
                if (temp.ProvjeriIme(txt_KorisnickoIme.Text) != null)
                {
                    Response.Write("Greška! :: Korisničko ime je već registrirano.");
                    return false;
                }
            }

            if (txt_Lozinka.Text.Count() < 6)
            {
                Response.Write("Greška! :: Lozinka je prekratka");
                return false;
            }

            //Provjera da li lozinka posjeduje brojeve

            bool ImaLiBrojeva = false;
            foreach (char c in txt_Lozinka.Text)            
                if (Char.IsDigit(c))
                    ImaLiBrojeva = true;
            
            if(!ImaLiBrojeva)
            {
                Response.Write("Greška! :: Lozinka mora sadržavati minimalno jedan broj");
                return false;
            }
                
   
            
            using (TriglavBL temp = new TriglavBL())
            {
                if (temp.ProvjeriIme(txt_KorisnickoIme.Text) != null)
                {
                    Response.Write("Greška! :: Korisničko ime je već registrirano.");
                    return false;
                }
            }

            if (rfv_KorisnickoIme.IsValid == false ||
                rfv_Lozinka.IsValid == false ||
                cv_lozinka.IsValid == false ||
                rfv_OMeni.IsValid == false ||
                rv_BrojGodina.IsValid == false ||
                rfv_brojGodina.IsValid == false)            
                return false;            

            
            return true;
        }
        private string SafeSqlLiteral(string inputSQL)
        {
            return inputSQL.Replace("'", "''");
        }
    }
}