using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection("Data Source=LAPTOP-2LULN0Q7\\SQLEXPRESS;Initial Catalog=project;Integrated Security=True;Pooling=False;Encrypt=True;TrustServerCertificate=True");
        SqlCommand co = new SqlCommand();
        SqlDataReader ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            co.Connection = cn;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String sql =
       "INSERT INTO Doctors VALUES (" +
       TextBox1.Text + ", '" +
       TextBox2.Text + "', '" +
       TextBox3.Text + "', '" +
       TextBox4.Text + "')";

            co.CommandText = sql;

            co.ExecuteNonQuery();

            Label6.Text = "Doctor Added Successfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String sql =
               "delete from Doctors where DoctorID=" +
               TextBox1.Text;

            co.CommandText = sql;

            co.ExecuteNonQuery();

            Label6.Text =
                "Doctor Deleted Successfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            co.CommandText =
               "select * from Doctors";

            ds = co.ExecuteReader();

            GridView1.DataBind();

            Label6.Text =
                "Doctor Records Displayed";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String sql =
               "update Doctors set " +
               "DoctorName='" + TextBox2.Text +
               "',Specialization='" + TextBox3.Text +
               "',DoctorPhone='" + TextBox4.Text +
               "' where DoctorID=" +
               TextBox1.Text;

            co.CommandText = sql;

            co.ExecuteNonQuery();

            Label6.Text =
                "Doctor Updated Successfully";
        }
    }
}
