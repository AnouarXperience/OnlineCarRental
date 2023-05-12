using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineCarRenatl.View.Admin
{
    public partial class Customers : System.Web.UI.Page
    {
        OnlineCarRental.Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new OnlineCarRental.Models.Functions();
            ShowCustomers();
        }
        //I found this method solution in Stack Overflow to solve the Error i were getting ( How to write the method easily: public override void [Click On {Ctrl + Space}] )  
        public override void VerifyRenderingInServerForm(Control control)
        {
            base.VerifyRenderingInServerForm(control);
        }
        public void ShowCustomers()
        {
            string Query = "select * from CustomerTb1";
            CustomersList.DataSource = Conn.GetData(Query);
            CustomersList.DataBind();
        }
        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {                   
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;                   
                    string CustPassword = PasswordTb.Value;                  
                    string Query = "insert into CustomerTb1 values ('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword);
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Added";

                }
            }
            catch (Exception EX)
            {

                //throw;
                ErrorMsg.InnerText = EX.Message;
            }


        }
        int Key = 0;
        protected void CsutList_SelectedInedxChanged(object sender, EventArgs e)
        {
            CustNameTb.Value = CustomersList.SelectedRow.Cells[2].Text;
            AddTb.Value = CustomersList.SelectedRow.Cells[3].Text;
            PhoneTb.Value = CustomersList.SelectedRow.Cells[4].Text;
            PasswordTb.Value = CustomersList.SelectedRow.Cells[5].Text;
            if (CustNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text);
            }
        }
        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "")     //if (Key != 0)
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string Query = "Delete from CustomerTb1 where CustId='{0}'";
                    Query = String.Format(Query, Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Deleted";
                }
            }
            catch (Exception EX)
            {

                //throw;
                ErrorMsg.InnerText = EX.Message;
            }
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CustNameTb.Value == "" || AddTb.Value == "" || PhoneTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CustName = CustNameTb.Value;
                    string CustAdd = AddTb.Value;
                    string CustPhone = PhoneTb.Value;
                    string CustPassword = PasswordTb.Value;
                    string Query = "UPDATE CustomerTb1 set CustName='{0}',CustAdd = '{1}',CustPhone='{2}',CustPassword = '{3}' where CustId= '{4}'";
                    Query = String.Format(Query, CustName, CustAdd, CustPhone, CustPassword , Convert.ToInt32(CustomersList.SelectedRow.Cells[1].Text));
                    Conn.SetData(Query);
                    ShowCustomers();
                    ErrorMsg.InnerText = "Customer Updated";

                }
            }
            catch (Exception EX)
            {

                //throw;
                ErrorMsg.InnerText = EX.Message;
            }
        }
    }
}