﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebASP.NET
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panelPrice.Visible = false;
            panelOrder.Visible = false;

            if (!Page.IsPostBack)
            {
                labelAddress.Visible = false;
                textAddress.Visible = false;

            }
        }
    }
}