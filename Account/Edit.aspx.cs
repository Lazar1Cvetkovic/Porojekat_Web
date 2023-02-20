using System;
using System.Data.SqlClient;

namespace WebApplication10.Account
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { Button1.Visible = false; } 

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
            
        {
          
            if (DropDownList2.SelectedValue != "")
            {
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                Button1.Visible = true;

                switch (DropDownList2.SelectedValue)
                {

                    case "Kupci":
                        Label2.Text = "ime";
                        Label3.Text = "email";
                        Label4.Text = "firma";


                        break;
                    case "Developer":
                        Label2.Text = "ime";
                        Label3.Text = "Pr_Jezik";
                        Label4.Text = "firma";


                        break;
                    case "Investitor":

                        Label2.Text = "ime";
                        Label3.Text = "Kolicina";
                        Label4.Text = "firma";


                        break;




                }
            }
            else
            {
                Label2.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
                Button1.Visible = false;


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {



            string Ime = DropDownList2.SelectedValue.ToString();
            string cs = "Data Source=DESKTOP-6V270U1\\ILIJA;Initial Catalog=cvetko1;Integrated Security=True";

            if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "")
            {

                string upit = "insert into " + Ime + " values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";

                SqlConnection con = new SqlConnection(cs);
                try
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand(upit, con);
                    cmd.ExecuteNonQuery();
                    ErrorLabel1.Text = "uspesno dodato!!"; ErrorLabel1.ForeColor = System.Drawing.Color.GreenYellow;
                    TextBox1.Text = null; TextBox2.Text = null; TextBox3.Text = null; Label2.Visible = false; Label3.Visible = false; Label4.Visible = false; TextBox1.Visible = false; TextBox2.Visible = false; TextBox3.Visible = false; Button1.Visible = false;
                    DropDownList2.SelectedIndex = 0;
                    con.Close();

                }
                catch (Exception ex) { ErrorLabel1.Text = ex.Message; ErrorLabel1.ForeColor = System.Drawing.Color.Red; }



            }
            else { ErrorLabel1.Text = "Unesite podatke u ponudjena polja!!!"; ErrorLabel1.ForeColor = System.Drawing.Color.Red; }


        }
    }
}