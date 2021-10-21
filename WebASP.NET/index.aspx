<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebASP.NET.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WEB ASP</title>
    <style type="text/css">

        .auto-style1 {
            text-align:center;
            color:saddlebrown;
        }

        .auto-style2 {
            width:430px;
        }

        .auto-style3 {
            width:400px;
        }

        .auto-style4 {
            width:100px;
            height:50px;
        }

        .auto-style5 {
            margin-left:0px;
            margin-top:0px;
        }

        .auto-style6 {
            width:270px;
        }

        .auto-style7 {
            width:270px;
            height:50px;
        }

        .auto-style8 {
            margin-top:0px;
            border-radius:30px;
        }

        .auto-style9 {
            width:580px;
            height:730px;
        }

        .auto-style10 {
            width:100px;
        }

        .auto-style11 {
            width:500px;
        }

        .auto-style12 {
            height:120px;
        }

        .stylePanel {
            border-radius:15px;
        }


    </style>
</head>
<body style="background-color:antiquewhite;">
    <form id="form1" runat="server" class="auto-style9">
        <div>
            <h1 class="auto-style1">P I Z Z A - H U R T S</h1>
            <hr class="auto-style2"/>
            <br />

            <table class="auto-style11">
                <tr style="vertical-align:top;">
                    <td class="auto-style12">
                        <asp:Panel ID="panelPizza" CssClass="stylePanel" BackColor="#ff9900" runat="server" GroupingText="Pizza Informations" Height="100%" Width="450px">
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelCustomer" runat="server" Text="Customer:" AccessKey="c" AssociatedControlID="textCustomer"></asp:Label>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:TextBox ID="textCustomer" runat="server" Width="200px" CssClass="stylePanel"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelPhone" runat="server" Text="Telephone:" AccessKey="t" AssociatedControlID="textPhone"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:TextBox ID="textPhone" runat="server" Width="200px" TextMode="Phone" CssClass="stylePanel"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelDeliver" runat="server" Text="To Deliver?" AccessKey="d" AssociatedControlID="checkboxToDeliver"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:CheckBox ID="checkboxToDeliver" runat="server" OnCheckedChanged="checkboxToDeliver_Changed" AutoPostBack="true"></asp:CheckBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style4">
                                        <asp:Label ID="labelAddress" runat="server" Text="Address:" AccessKey="a" AssociatedControlID="textAddress"></asp:Label>
                                    </td>
                                    <td class="auto-style7">
                                        <asp:TextBox ID="textAddress" runat="server" Width="200px" Height="45px" CssClass="stylePanel" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelPizza" runat="server" Text="Pizza:" AccessKey="p" AssociatedControlID="dropdownPizza"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:DropDownList ID="dropdownPizza" runat="server" Width="200px" CssClass="stylePanel" OnSelectedIndexChanged="dropdownPizza_Changed" AutoPostBack="true"></asp:DropDownList>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelPizzaSize" runat="server" Text="Pizza Size:" AccessKey="s" AssociatedControlID="listPizzaSize"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:ListBox ID="listPizzaSize" runat="server" Width="200px" CssClass="stylePanel" OnSelectedIndexChanged="listPizzaSize_Changed" AutoPostBack="true"></asp:ListBox>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelPizzaToppings" runat="server" Text="Toppings:"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:CheckBoxList ID="checkboxlistPizzaToppings" runat="server" OnCheckedChanged="checkboxlistPizzaToppings_Changed" AutoPostBack="true"></asp:CheckBoxList>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="auto-style10">
                                        <asp:Label ID="labelPizzaCrust" runat="server" Text="Crust:"></asp:Label>
                                    </td>

                                    <td class="auto-style6">
                                        <asp:CheckBoxList ID="checkboxlistPizzaCrust" runat="server" OnCheckedChanged="checkboxlistPizzaCrust_Changed" AutoPostBack="true"></asp:CheckBoxList>
                                    </td>
                                </tr>
                           
                                </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
