using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


namespace Onur_Altuntas_HW3
{
    public partial class Registration : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic whichSeat = Session["whichSeat"];
            lbRegSeatNumbertxt.Text = whichSeat;
            lbRegSeatNumbertxt.Text = lbRegSeatNumbertxt.Text.Substring(0, lbRegSeatNumbertxt.Text.Length - 1);

        }

        protected void btnCall_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "CallConfirmBox", "CallConfirmBox();", true);
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            dynamic whichSeat = Session["whichSeat"];
            dynamic gender = Session["gender"];
            string strGender = gender;
            dynamic whichDate = Session["date"];
            strGender=strGender.Substring(0, strGender.Length - 1);
            dynamic whichTime = Session["hour"];
            dynamic busCapacity = Session["busCapacity"];

            if (txtRegName.Text=="" || txtRegSurname.Text=="" || txtRegPhone.Text=="" || txtRegEmail.Text=="" || txtRegTC.Text == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen boş alan bırakmayınız!')", true);
            }
            else
            {
                string databaseStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("App_Data/Booking.mdb");
                OleDbConnection data = new OleDbConnection(databaseStr);
                data.Open();
                OleDbCommand cmd = new OleDbCommand("INSERT INTO Booking(BookingID,BusCapacity,PassengerID,PassengerSeatID,PassengerName,PassengerSurname,PassengerGender,PassengerEmail,PassengerPhone,PassengerBusHour) VALUES(@BookingID,@BusCapacity,@PassengerID,@PassengerSeatID,@PassengerName,@PassengerSurname,@PassengerGender,@PassengerEmail,@PassengerPhone,@PassengerBusHour)", data);
                cmd.Parameters.AddWithValue("BookingID", "26PMK26-"+whichDate+"-"+whichTime);
                cmd.Parameters.AddWithValue("BusCapacity", "31");
                cmd.Parameters.AddWithValue("PassengerID", txtRegTC.Text);
                cmd.Parameters.AddWithValue("PassengerSeatID", lbRegSeatNumbertxt.Text);
                cmd.Parameters.AddWithValue("PassengerName", txtRegName.Text);
                cmd.Parameters.AddWithValue("PassengerSurname", txtRegSurname.Text);
                cmd.Parameters.AddWithValue("PassengerGender", strGender);
                cmd.Parameters.AddWithValue("PassengerEmail", txtRegEmail.Text);
                cmd.Parameters.AddWithValue("PassengerPhone", txtRegPhone.Text);
                cmd.Parameters.AddWithValue("PassengerBusHour", whichTime);

               



                Response.Write("veri tabanı bağlandı yazıldı");

                data.Close();

                try
                {
                    data.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("veri tabanı bağlandı yazıldı");
                    data.Close();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message +" hata");
                }
                finally
                {
                    data.Close();
                }
                data.Close();

             
                //Response.Redirect("Default.aspx");
            }

            
        }
    }
}