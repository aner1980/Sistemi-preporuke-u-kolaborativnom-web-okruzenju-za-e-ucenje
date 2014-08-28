
//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace Data.EntityFramework.DAL
{

using System;
    using System.Collections.Generic;
    
public partial class Korisnik
{

    public Korisnik()
    {

        this.Komentari = new HashSet<Komentari>();

        this.Post = new HashSet<Post>();

        this.User_Likes = new HashSet<User_Likes>();

    }


    public int id { get; set; }

    public string Nadimak { get; set; }

    public string Lozinka { get; set; }

    public Nullable<int> BrojGodina { get; set; }

    public string OMeni { get; set; }

    public string Lokacija { get; set; }

    public Nullable<System.DateTime> DatumKreiranja { get; set; }

    public Nullable<System.DateTime> DatumZadnjegPristupa { get; set; }

    public string SlikaURL { get; set; }

    public Nullable<int> Reputacija { get; set; }

    public Nullable<int> Pregleda { get; set; }

    public Nullable<int> Likes { get; set; }

    public Nullable<int> Unlikes { get; set; }

    public string temp { get; set; }

    public Nullable<int> BedzID { get; set; }

    public Nullable<int> BrojZlatnih { get; set; }

    public Nullable<int> BrojSrebrenih { get; set; }

    public Nullable<int> BrojBronzanih { get; set; }

    public string BedzNaziv { get; set; }

    public string BedzSlika { get; set; }

    public string BedzOpis { get; set; }



    public virtual Bedz Bedz { get; set; }

    public virtual ICollection<Komentari> Komentari { get; set; }

    public virtual ICollection<Post> Post { get; set; }

    public virtual ICollection<User_Likes> User_Likes { get; set; }

}

}
