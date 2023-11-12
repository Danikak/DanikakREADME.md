using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication5
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = "在线数量:" + Application["num"].ToString();
            Label1.Text = "发言人:" + Session["name"];
            if (!IsPostBack)
            {
                Application["message"] = Session["name"] + "进入聊天室<br />" + Application["message"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Application.Lock();

            Application["message"] = Session["name"] + "说:" + TextBox1.Text +
                "(" + DateTime.Now.ToString() + ")<br />" + Application["message"];
            Application.UnLock();
            TextBox1.Text = "";
        }
    }
}