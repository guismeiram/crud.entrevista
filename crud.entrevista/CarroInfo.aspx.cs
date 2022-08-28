using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace crud.entrevista
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter adapter;
        DataTable dt;

        public void DataLoad()
        {
            if (Page.IsPostBack)
            {
                gridCarro.DataBind();
            }
        }

        public void ClearAllData()
        {
            txtId.Text = "";
            txtPlaca.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

     

        protected void btgAdd_Click(object sender, EventArgs e)
        {
            if(txtId.Text != "" && txtPlaca.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Insert Into Carro(Id, Placa) values (@id, @placa)", con);
                    cmd.Parameters.AddWithValue("@id", txtId.Text);
                    cmd.Parameters.AddWithValue("@placa", txtPlaca.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();

                }
            }
        }

        protected void btgUpdate_Click(object sender, EventArgs e)
        {
            if (txtId.Text != "" && txtPlaca.Text != "")
            {
                using (con = new SqlConnection(cs))
                {
                    con.Open();
                    cmd = new SqlCommand("Update Carro Set @id = Id, @placa = Placa Where Id = @id", con);
                    cmd.Parameters.AddWithValue("@id", txtId.Text);
                    cmd.Parameters.AddWithValue("@placa", txtPlaca.Text);

                    cmd.ExecuteNonQuery();
                    con.Close();
                    DataLoad();
                    ClearAllData();

                }
            }
        }

        protected void btgDelete_Click(object sender, EventArgs e)
        {
            using(con = new SqlConnection(cs))
            {
                con.Open();
                cmd = new SqlCommand("Delete From Carro Where id =@id", con);
                cmd.Parameters.AddWithValue("@id", txtId.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                DataLoad();
                ClearAllData();
            }
        }

        protected void btgCancel_Click(object sender, EventArgs e)
        {
            ClearAllData();

        }

        protected void gridCarro_SelectedIndexChanged1(object sender, EventArgs e)
        {
           
                txtId.Text = gridCarro.SelectedRow.Cells[1].Text;
                txtPlaca.Text = gridCarro.SelectedRow.Cells[2].Text;
            
        }
    }
}