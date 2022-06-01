using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try{
            MailMessage mailMessage = new MailMessage();
        mailMessage.From = new MailAddress("info@sydneyplatinumcoachingcentre.com.au" );
       mailMessage.To .Add ("info@sydneyplatinumcoachingcentre.com.au");
        mailMessage .Subject =TxtSubject .Text;
        mailMessage.Body ="<b> sender name :</b> "+TxtName .Text +"</br>"
        +"<b> sender email :</b> "+TxtEmail .Text +"</br>"
        +"<b> Comments :</b> "+ TxtComment.Text ;
        mailMessage .IsBodyHtml =true;

        SmtpClient client = new SmtpClient();
        
       // client.UseDefaultCredentials = false;
       // client.Credentials = new NetworkCredential("uploader1177@sg2nwvpweb009.shr.prod.sin2.secureserver.net", "mhkhann1A!");


        //SmtpClient smtpclient = new SmtpClient();
        //smtpclient.Host = "smtp.office365.com";
        client.EnableSsl = false;
        client.UseDefaultCredentials = false;
        client.Port = 25;
        client.Host = "relay-hosting.secureserver.net";
       // client .Credentials =new System .Net .NetworkCredential("info@sydneyplatinumcoachingcentre.com.au","mhkhann1A!");
        //smtpclient.Port = 25;
        //smtpclient.EnableSsl = true;
       
            client .Send(mailMessage);
        Label1.ForeColor =System .Drawing .Color .Blue ;
        Label1 .Text ="Thank you for contacting us";

        TxtName .Enabled =false;
        TxtEmail .Enabled =false;
        TxtSubject .Enabled =false;
        TxtComment .Enabled =false ;
            Button1.Enabled =false;
        }
        catch(Exception ex){
            Label1 .ForeColor =System .Drawing .Color .Blue;
            Label1.ForeColor =System.Drawing .Color.Red;
            Label1 .Text ="There is unknown problem. Please try again later"+ex.ToString ();
        }


    }
}