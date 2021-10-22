using System;
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
                //Hide Address
                labelAddress.Visible = textAddress.Visible = false;

                //Add Pizza Names
                dropdownPizza.Items.Add(new ListItem("Vegetarian", "10"));
                dropdownPizza.Items.Add(new ListItem("Hawaiian", "16"));
                dropdownPizza.Items.Add(new ListItem("All Dressed", "20"));
                dropdownPizza.Items.Add(new ListItem("Pepperoni", "12"));

                //Add Pizza Sizes
                listPizzaSize.Items.Add(new ListItem("Small", "1"));
                listPizzaSize.Items.Add(new ListItem("Medium", "1.5"));
                listPizzaSize.Items.Add(new ListItem("Large", "2"));
                listPizzaSize.SelectedIndex = 0;

                //Add Pizza Toppingss
                checkboxlistPizzaToppings.Items.Add(new ListItem("Bacon", "5"));
                checkboxlistPizzaToppings.Items.Add(new ListItem("Mushrum", "4"));
                checkboxlistPizzaToppings.Items.Add(new ListItem("Extra Cheese", "2"));
                checkboxlistPizzaToppings.Items.Add(new ListItem("Olive", "3"));

                //Add Pizza Crusts
                radiobuttonlistPizzaCrust.Items.Add(new ListItem("Normal"));
                radiobuttonlistPizzaCrust.Items.Add(new ListItem("Thin"));
                radiobuttonlistPizzaCrust.Items.Add(new ListItem("Thick"));
                radiobuttonlistPizzaCrust.SelectedIndex = 0; 
            }

            if (dropdownPizza.SelectedIndex > 0)
            {
                CalculatePrice();
            }
        }

        private void CalculatePrice()
        {
            panelPrice.Visible = true;

            decimal baseProductPrice = 0, deliveryPrice = 0, toppingPrice = 0, subTotal = 0, tax = 0, totalPrice = 0;

            baseProductPrice = Convert.ToDecimal(dropdownPizza.SelectedItem.Value) * Convert.ToDecimal(listPizzaSize.SelectedItem.Value);

            literalPrice.Text = "<br><b>Base Price: $" + baseProductPrice + "<b>";

            if (checkboxToDeliver.Checked)
            {
                deliveryPrice = 5;
                literalPrice.Text += "<br><b>Delivery Price: $" + deliveryPrice + "<b>";
            }

            foreach (ListItem item in checkboxlistPizzaToppings.Items)
            {
                //If an item is selected, add the value to the toppingPrice, else add 0 - Ternary Operation
                toppingPrice += (item.Selected) ? Convert.ToDecimal(item.Value) : 0;
            }

            literalPrice.Text += "<br><b>Topping(s) Price: $" + toppingPrice + "<b>";

            subTotal = baseProductPrice + deliveryPrice + toppingPrice;
            literalPrice.Text += "<br><b>Subtotal: $" + subTotal + "<b>";

            //Round it to 2 digit after decimal
            tax = Math.Round(subTotal * Convert.ToDecimal(0.15), 2);
            literalPrice.Text += "<br><b>Tax: $" + tax + "<b>";

            totalPrice = Math.Round((subTotal + tax), 2);
            literalPrice.Text += "<br><b>Total Price: $" + totalPrice + "<b>";

            
        }

        protected void checkboxToDeliver_Changed(object sender, EventArgs e)
        {
            labelAddress.Visible = textAddress.Visible = checkboxToDeliver.Checked;
        }

        protected void dropdownPizza_Changed(object sender, EventArgs e)
        {

        }

        protected void listPizzaSize_Changed(object sender, EventArgs e)
        {

        }

        protected void radiobuttonlistPizzaCrust_Changed(object sender, EventArgs e)
        {

        }

        protected void checkboxlistPizzaToppings_Changed(object sender, EventArgs e)
        {

        }

        protected void buttonOrderNow_Click(object sender, EventArgs e)
        {
            panelOrder.Visible = true;
            literalOrder.Text = "Dear " + textCustomer.Text + ", <br>Your Order For A " + listPizzaSize.SelectedItem.Text + "<br>" + dropdownPizza.SelectedItem.Text + " Pizza <br>" + "With Topping(s) Of: <ul>";
            foreach(ListItem topping in checkboxlistPizzaToppings.Items)
            {
                literalOrder.Text += (topping.Selected) ? "<li>" + (topping.Text) + "</li>" : "";
            }

            literalOrder.Text += "</ul><br> On A " + radiobuttonlistPizzaCrust.SelectedItem.Text + " Crust <br>";

            literalOrder.Text +=  checkboxToDeliver.Checked ? "Will Be Delivered To <br>" + textAddress.Text + "<br> In 30 Minutes." : "Will Be Ready In 15 Minutes For Pickup.";
        }
    }
}