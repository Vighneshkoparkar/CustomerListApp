using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Net.Configuration;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CustomerListApp
{
    public partial class CustomerList : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
            BindListView();
            
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int intRec = 0;
            SqlCommand cmd = new SqlCommand("SP_CUSTOMERDETAILS");
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@CUSTOMERNAME", txtCustomerName.Text);
            cmd.Parameters.AddWithValue("@PHONENUMBER", txtPhoneNumber.Text);
            cmd.Parameters.AddWithValue("@ADDRESS",txtAddress.Text);
            cmd.Parameters.AddWithValue("@DATEOFBIRTH", txtdobdt.Text);
            cmd.Parameters.AddWithValue("@EMAILADDRESS", txtEmailaddress.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i > 0)
            {
                BindListView();
                intRec = SendEMailNotification("Vighneshkopakar@gmail.com", txtEmailaddress.Text, "Welcome", "Welcome");
                Label1.Text = "Your Customer Created Successfully.";
                txtCustomerName.Text="";
                txtPhoneNumber.Text = "";
                txtAddress.Text = "";
                txtdobdt.Text = "dd-mm-yy";
                txtEmailaddress.Text="";
                //Response.Redirect("CustomerLogin.aspx");
            }
            else
            {
                Label1.Text = "Your Customer is incorrect";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
        }

        private void BindListView()
        {
                    SqlCommand cmd = new SqlCommand("SP_CUSTOMERDETAILS_SELECT");
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                Gv1.DataSource = null;
                Gv1.DataSource = dt;
                Gv1.DataBind();
                    }
        }
        public static int SendEMailNotification(string from,
                                              string to,
                                              string subject,
                                              string body
                                              )
        {

            int intReterr = 0;
            Attachment attach;
            System.Net.Mail.MailMessage msg = new MailMessage();
            msg.From = new MailAddress(from);
            if (to != null || to != "")
            {
                string[] to1 = to.Split(';');
                //msg.To.Add(new MailAddress(to));
                for (int i = 0; i < to1.Length; i++)
                {
                    if (to1[i].Length != 0)
                    {
                        msg.To.Add(new MailAddress(to1[i]));
                    }
                }
            }

            msg.Subject = subject;
            msg.IsBodyHtml = true;
            msg.Body = body;

            msg.Priority = MailPriority.Normal;
            string projectDir=Path.GetFullPath(Path.Combine(AppDomain.CurrentDomain.BaseDirectory, @"../../CustomerListApp/CustomerListApp/Images/Img.png"));
            attach = new System.Net.Mail.Attachment(projectDir);
            SmtpClient SmtpServer = new SmtpClient(ConfigurationManager.AppSettings.Get("SmtpHostName"));
            if (attach != null)
            {
                msg.Attachments.Add(attach);
            }
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Port = Convert.ToInt32(ConfigurationManager.AppSettings.Get("port"));
            SmtpServer.Credentials = null;
            SmtpServer.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings.Get("senderEmail"), ConfigurationManager.AppSettings.Get("senderPassword"));//sender mail id and password
            SmtpServer.EnableSsl = true;
            try
            {
                SmtpServer.Send(msg);
            }
            catch (Exception ex)
            {
               
                intReterr = -1;
            }

            return intReterr;
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerLogin.aspx");
        }
    }
}