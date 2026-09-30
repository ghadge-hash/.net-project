using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-2LULN0Q7\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True;Pooling=False;Encrypt=True;TrustServerCertificate=True");
        SqlCommand co = new SqlCommand();
        SqlDataReader ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            co.Connection = cn;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String sql =
                "delete from Patients where PatientID=" +
                TextBox1.Text;

            co.CommandText = sql;

            co.ExecuteNonQuery();

            Label9.Text =
                "Patient Deleted Successfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            co.CommandText =
                "select * from Patients";

            ds = co.ExecuteReader();

            GridView1.DataBind();

     

            Label9.Text =
                "Patient Records Displayed";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String sql =
               "update Patients set " +
               "PatientName='" + TextBox2.Text +
               "',PatientAge=" + TextBox3.Text +
               ",PatientGender='" + TextBox4.Text +
               "',PatientDisease='" + TextBox5.Text +
               "',PatientPhone='" + TextBox6.Text +
               "' where PatientID=" + TextBox1.Text;

            co.CommandText = sql;

            co.ExecuteNonQuery();

            Label9.Text =
                "Patient Updated Successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql ="insert into Patients values(" +TextBox1.Text + ",'" +TextBox2.Text + "'," +TextBox3.Text + ",'" +TextBox4.Text + "','" +TextBox5.Text + "','" +TextBox6.Text + "')";
            co.CommandText = sql;
            co.ExecuteNonQuery();
        }

    }
}