using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Onur_Altuntas_HW3
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

                string databaseStr = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("App_Data/Booking.mdb");
                OleDbConnection con = new OleDbConnection(databaseStr);
                OleDbCommand cmd4 = new OleDbCommand("SELECT Booking.[BusCapacity] FROM Booking WHERE Booking.[PassengerBusHour] = '9:00'", con);
                con.Open();
                OleDbDataReader dr4 = cmd4.ExecuteReader();
                OleDbCommand cmd = new OleDbCommand("SELECT Booking.[PassengerSeatID] FROM Booking WHERE Booking.[PassengerBusHour] = '9:00'", con);
                OleDbDataReader dr = cmd.ExecuteReader();

                ArrayList filledSeats = new ArrayList();
                while (dr.Read())
                {
                string[] parcalar =dr["PassengerSeatID"].ToString().Split(',');
                for (int i = 0; i < parcalar.Length; i++)
                {
                    filledSeats.Add(parcalar[i]);
                }
                }

                string strRead = "";
                int difference = 0;
                while (dr4.Read())
                {
                    strRead = dr4["BusCapacity"].ToString();
                }
                if (strRead != "")
                {
                if (int.Parse(strRead) != 31)
                {
                    difference = 31 - int.Parse(strRead);
                }
                for (int i = 1; i < difference + 1; i++)
                {
                    int temp = 32;

                    string str = "s" + (temp - i);
                    ImageButton img = (ImageButton)pnl1.FindControl(str);
                    img.Visible = false;
                }
            }

            foreach (var item in filledSeats)
                {
                    string str = "s" + item;
                    ImageButton img = (ImageButton)pnl1.FindControl(str);
                    img.ImageUrl = "~/Images/booked_seat_img.gif";
                    img.Enabled = false;

                }
                con.Close();
            
        
                string databaseStr2 = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("App_Data/Booking.mdb");
                OleDbConnection con2 = new OleDbConnection(databaseStr2);
                OleDbCommand cmd6 = new OleDbCommand("SELECT Booking.[BusCapacity] FROM Booking WHERE Booking.[PassengerBusHour] = '03:15'", con2);
                con2.Open();
                OleDbCommand cmd2 = new OleDbCommand("SELECT Booking.[PassengerSeatID] FROM Booking WHERE Booking.[PassengerBusHour]='03:15'", con2);
                OleDbDataReader dr6 = cmd6.ExecuteReader();

                OleDbDataReader dr2 = cmd2.ExecuteReader();
                ArrayList filledSeats1 = new ArrayList();
                while (dr2.Read())
                {
                    string[] parcalar = dr2["PassengerSeatID"].ToString().Split(',');
                    for (int i = 0; i < parcalar.Length; i++)
                    {
                        filledSeats1.Add(parcalar[i]);
                    }
                }

                string strRead1 = "";
                int difference1 = 0;
                while (dr6.Read())
                {
                strRead1 = dr6["BusCapacity"].ToString();
                }
                if (strRead1 != "")
                {
                if (int.Parse(strRead1) != 31)
                {
                    difference1 = 31 - int.Parse(strRead1);
                }
                for (int i = 1; i < difference1 + 1; i++)
                {
                    int temp = 32;

                    string str = "ImageButton" + (temp - i);
                    ImageButton img = (ImageButton)Panel1.FindControl(str);
                    img.Visible = false;
                }
            }
               

                foreach (var item in filledSeats1)
                    {
                        string str = "ImageButton" + item;
                        ImageButton img = (ImageButton)Panel1.FindControl(str);
                        img.ImageUrl = "~/Images/booked_seat_img.gif";
                        img.Enabled = false;

                    }
                    con.Close();

                string databaseStr3 = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + Server.MapPath("App_Data/Booking.mdb");
                OleDbConnection con3 = new OleDbConnection(databaseStr3);
                OleDbCommand cmd7 = new OleDbCommand("SELECT Booking.[BusCapacity] FROM Booking WHERE Booking.[PassengerBusHour] = '08:15'", con3);
                con3.Open();
                OleDbCommand cmd3 = new OleDbCommand("SELECT Booking.[PassengerSeatID] FROM Booking WHERE Booking.[PassengerBusHour]='08:15'", con3);
                OleDbDataReader dr3 = cmd3.ExecuteReader();
                OleDbDataReader dr7 = cmd7.ExecuteReader();
                ArrayList filledSeats3 = new ArrayList();
                while (dr3.Read())
                {
                    string[] parcalar = dr3["PassengerSeatID"].ToString().Split(',');
                    for (int i = 0; i < parcalar.Length; i++)
                    {
                        filledSeats3.Add(parcalar[i]);
                    }
                }

            string strRead2 = "";
            int difference2 = 0;
            while (dr7.Read())
            {
                strRead2 = dr7["BusCapacity"].ToString();
            }
            if (strRead2 != "")
            {
                if (int.Parse(strRead2) != 31)
                {
                    difference2 = 31 - int.Parse(strRead2);
                }
                for (int i = 1; i < difference2 + 1; i++)
                {
                    int temp = 32;

                    string str = "ImageButton_" + (temp - i);
                    ImageButton img = (ImageButton)Panel1.FindControl(str);
                    img.Visible = false;
                }
            }
            foreach (var item in filledSeats3)
                {
                    string str = "ImageButton_" + item;
                    ImageButton img = (ImageButton)Panel2.FindControl(str);
                    img.ImageUrl = "~/Images/booked_seat_img.gif";
                    img.Enabled = false;

                }
                con.Close();



           
           
        }


        protected void seatClick(ImageButton btn)
        {
            dynamic genderFlag = Session["genderFlag"];
            if (genderFlag =="false" || genderFlag==null)
            {
                dynamic gender = Session["gender"];
                string tempText = lbWhichSeat.Text;

                signup.Visible = true;
                string result = Regex.Replace(btn.ID.ToString(), @"[^\d]", "");
                lbWhichSeat.Text = result;
               
                labelInvisible.Text +=result+"," ;
                signup.Visible = true;

                Session.Add("genderFlag", "true");

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Önce cinsiyet seçiniz.')", true);
                //Session.Add("genderFlag", "true");

            }


        }     
        
        protected void seatClick1(ImageButton btn)
        {
            dynamic genderFlag = Session["genderFlag"];

            if (genderFlag == "false" || genderFlag == null)
            {
                string tempText = Label6.Text;
                Div2.Visible = true;
                string result = Regex.Replace(btn.ID.ToString(), @"[^\d]", "");
                Label6.Text = result;
                label7.Text += result + ",";
                Session.Add("genderFlag", "true");

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Önce cinsiyet seçiniz.')", true);
                //Session.Add("genderFlag", "true");

            }


        }
        protected void seatClick2(ImageButton btn)
        {
            dynamic genderFlag = Session["genderFlag"];

            if (genderFlag == "false" || genderFlag == null)
            {
                string tempText = Label13.Text;

                Div4.Visible = true;
                string result = Regex.Replace(btn.ID.ToString(), @"[^\d]", "");
                Label13.Text = result;
                label14.Text += result + ",";

                Session.Add("genderFlag", "true");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Önce cinsiyet seçiniz.')", true);
                //Session.Add("genderFlag", "true");

            }
        }


        protected void s1click(object sender, ImageClickEventArgs e)
        {

            seatClick(s1);
        }
        protected void s2click(object sender, ImageClickEventArgs e)
        {
            seatClick(s2);
        }
        protected void s6click(object sender, ImageClickEventArgs e)
        {
            seatClick(s6);
        }
        protected void s7click(object sender, ImageClickEventArgs e)
        {
            seatClick(s7);
        }
        protected void s12click(object sender, ImageClickEventArgs e)
        {
            seatClick(s12);
        }
        protected void s13click(object sender, ImageClickEventArgs e)
        {
            seatClick(s13);
        }
        protected void s18click(object sender, ImageClickEventArgs e)
        {
            seatClick(s18);
        }
        protected void s19click(object sender, ImageClickEventArgs e)
        {
            seatClick(s19);
        }
        protected void s24click(object sender, ImageClickEventArgs e)
        {
            seatClick(s24);
        }
        protected void s25click(object sender, ImageClickEventArgs e)
        {
            seatClick(s25);
        }
        protected void s31click(object sender, ImageClickEventArgs e)
        {
            seatClick(s31);
        }
        protected void s3click(object sender, ImageClickEventArgs e)
        {
            seatClick(s3);
        }
        protected void s4click(object sender, ImageClickEventArgs e)
        {
            seatClick(s4);
        }
        protected void s5click(object sender, ImageClickEventArgs e)
        {
            seatClick(s5);
        }
        protected void s8click(object sender, ImageClickEventArgs e)
        {
            seatClick(s8);
        }
        protected void s9click(object sender, ImageClickEventArgs e)
        {
            seatClick(s9);
        }

        protected void s10click(object sender, ImageClickEventArgs e)
        {
            seatClick(s10);
        }
        protected void s11click(object sender, ImageClickEventArgs e)
        {
            seatClick(s11);
        }
        protected void s14click(object sender, ImageClickEventArgs e)
        {
            seatClick(s14);
        }
        protected void s15click(object sender, ImageClickEventArgs e)
        {
            seatClick(s15);
        }
        protected void s16click(object sender, ImageClickEventArgs e)
        {
            seatClick(s16);
        }
        protected void s17click(object sender, ImageClickEventArgs e)
        {
            seatClick(s17);
        }
        protected void s20click(object sender, ImageClickEventArgs e)
        {
            seatClick(s20);
        }
        protected void s21click(object sender, ImageClickEventArgs e)
        {
            seatClick(s21);
        }
        protected void s22click(object sender, ImageClickEventArgs e)
        {
            seatClick(s22);

        }

        protected void s23click(object sender, ImageClickEventArgs e)
        {
            seatClick(s23);
        }
        protected void s26click(object sender, ImageClickEventArgs e)
        {
            seatClick(s26);
        }
        protected void s27click(object sender, ImageClickEventArgs e)
        {
            seatClick(s27);

        }
        protected void s28click(object sender, ImageClickEventArgs e)
        {
            seatClick(s28);
        }
        protected void s29click(object sender, ImageClickEventArgs e)
        {
            seatClick(s29);
        }
        protected void s30click(object sender, ImageClickEventArgs e)
        {
            seatClick(s30);
        }

        //2.Otobüs

        protected void s1click1(object sender, ImageClickEventArgs e)
        {

            seatClick1(ImageButton1);
        }
        protected void s2click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton2);
        }
        protected void s6click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton6);
        }
        protected void s7click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton7);
        }
        protected void s12click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton12);
        }
        protected void s13click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton13);
        }
        protected void s18click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton18);
        }
        protected void s19click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton19);
        }
        protected void s24click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton24);
        }
        protected void s25click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton25);
        }
        protected void s31click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton31);
        }
        protected void s3click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton3);
        }
        protected void s4click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton4);
        }
        protected void s5click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton5);
        }
        protected void s8click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton8);
        }
        protected void s9click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton9);
        }

        protected void s10click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton10);
        }
        protected void s11click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton11);
        }
        protected void s14click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton14);
        }
        protected void s15click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton15);
        }
        protected void s16click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton16);
        }
        protected void s17click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton17);
        }
        protected void s20click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton20);
        }
        protected void s21click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton21);
        }
        protected void s22click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton22);

        }

        protected void s23click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton23);
        }
        protected void s26click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton24);
        }
        protected void s27click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton27);

        }
        protected void s28click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton28);
        }
        protected void s29click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton29);
        }
        protected void s30click1(object sender, ImageClickEventArgs e)
        {
            seatClick1(ImageButton30);
        }

        //3.Bus

        protected void s1click2(object sender, ImageClickEventArgs e)
        {

            seatClick2(ImageButton_1);
        }
        protected void s2click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_2);
        }
        protected void s6click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_6);
        }
        protected void s7click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_7);
        }
        protected void s12click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_12);
        }
        protected void s13click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_13);
        }
        protected void s18click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_18);
        }
        protected void s19click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_19);
        }
        protected void s24click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_24);
        }
        protected void s25click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_25);
        }
        protected void s31click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_31);
        }
        protected void s3click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_3);
        }
        protected void s4click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_4);
        }
        protected void s5click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_5);
        }
        protected void s8click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_8);
        }
        protected void s9click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_9);
        }

        protected void s10click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_10);
        }
        protected void s11click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_11);
        }
        protected void s14click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_14);
        }
        protected void s15click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_15);
        }
        protected void s16click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_16);
        }
        protected void s17click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_17);
        }
        protected void s20click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_20);
        }
        protected void s21click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_21);
        }
        protected void s22click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_22);

        }

        protected void s23click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_23);
        }
        protected void s26click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_26);
        }
        protected void s27click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_27);

        }
        protected void s28click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_28);
        }
        protected void s29click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_29);
        }
        protected void s30click2(object sender, ImageClickEventArgs e)
        {
            seatClick2(ImageButton_30);
        }

        protected void btnPaymentMethod_Click(object sender, EventArgs e)
        {
            dynamic genderFlag = Session["genderFlag"];
            if (genderFlag == "false" || genderFlag == null)
            {

               dynamic gender = Session["gender"];
            if (gender==null || lbWhichSeat.Text == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk ve cinsiyetiniz seçiniz!')", true);
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
            btnPaymentMethod.Visible = false;

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Önce cinsiyet seçiniz.')", true);
                //Session.Add("genderFlag", "true");

            }
        }

        protected void imgbtnMale_Click(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");

            btnPaymentMethod.Visible = true;
             labelgenderInv.Text+= "male" + ",";
            string str = lbWhichSeat.Text;
            Session.Add("gender", "male");
            Session.Add("whichSeat", labelInvisible.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", lbTime.Text);
            Session.Add("gender", "male");
            if(lbWhichSeat.Text=="Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)pnl1.FindControl("s" + lbWhichSeat.Text);
                img.ImageUrl = "~/Images/selected_seat_img.gif";
            }
        }
        protected void imgbtnFemale_Click(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");
            labelgenderInv.Text += "female" + ",";
            btnPaymentMethod.Visible = true;

            Session.Add("gender", labelgenderInv.Text);
            Session.Add("whichSeat", labelInvisible.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", lbTime.Text);
            if (lbWhichSeat.Text == "Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)pnl1.FindControl("s"+lbWhichSeat.Text);
                img.ImageUrl = "~/Images/ladies_seat_img.gif";
            }

        }

        protected void imgbtnMale_Click1(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");
            labelGender2.Text += "male" + ",";
            Button2.Visible = true;

            string str = Label6.Text;
            Session.Add("gender", labelGender2.Text);
            Session.Add("whichSeat", label7.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", Label1.Text);
            Session.Add("gender", "male");
            if (Label6.Text == "Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)Panel1.FindControl("ImageButton" + Label6.Text);
                img.ImageUrl = "~/Images/selected_seat_img.gif";
            }
        }
        protected void imgbtnFemale_Click1(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");
            labelGender2.Text += "female" + ",";
            Button2.Visible = true;

            Session.Add("gender", labelGender2.Text);
            Session.Add("whichSeat", label7.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", Label1.Text);
            if (Label6.Text == "Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)Panel1.FindControl("ImageButton" + Label6.Text);
                img.ImageUrl = "~/Images/ladies_seat_img.gif";
            }

        }
        protected void imgbtnMale_Click2(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");
            labelGender3.Text += "male" + ",";
            Button4.Visible = true;

            string str = Label13.Text;
            Session.Add("gender", labelGender3.Text);
            Session.Add("whichSeat", label14.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", Label8.Text);
            Session.Add("gender", "male");
            if (Label13.Text == "Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)Panel2.FindControl("ImageButton_" + Label13.Text);
                img.ImageUrl = "~/Images/selected_seat_img.gif";
            }
        }
        protected void imgbtnFemale_Click2(object sender, EventArgs e)
        {
            Session.Add("genderFlag", "false");
            labelGender3.Text += "female" + ",";
            Button4.Visible = true;

            Session.Add("gender", labelGender3.Text);
            Session.Add("whichSeat", label14.Text);
            Session.Add("busCapasity", "31");
            Session.Add("hour", Label8.Text);
            if (Label13.Text == "Hiç koltuk seçmediniz")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce koltuk  seçiniz!')", true);
            }
            else
            {
                ImageButton img = (ImageButton)Panel2.FindControl("ImageButton_" + Label13.Text);
                img.ImageUrl = "~/Images/ladies_seat_img.gif";
            }

        }
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string dateStr = Calendar1.SelectedDate.ToShortDateString();
            Session.Add("date", dateStr);
            //Calendar1.Visible = false;

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            dynamic date = Session["date"];
            if (date == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Lütfen önce tarih seçiniz!')", true);
            }
            else
            {
                results.Visible = true;
                Div1.Visible = true;
                Div3.Visible = true;
            }
            
        }
    }
}