<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="CustomerListApp.CustomerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>

</head>
<body>
    <form id="form1" runat="server">
            <div class="col-md-12" style="margin-top:1%; font-size:12px; height:375px; padding-left:0px; padding-right:0px;background-color: white !important;">
        <div id="parent">
            <asp:Button ID="BtnLogout" runat="server" Text="Logout" onclick="BtnLogout_Click"/>  
             <table id="fixTable" class="table table-bordered" style="padding-bottom:20px;width:90% !important">              
                <tr>
                    <td class="tdtitleNm" style="width: 40%;">Customer Name <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                        <asp:TextBox ID="txtCustomerName" runat="server" TextMode="SingleLine"  maxlength="20"></asp:TextBox>
                    </td>
                    <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   ControlToValidate="txtCustomerName" ErrorMessage="Please Enter Your Customer Name"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
                 <tr>
                    <td class="tdtitleNm" style="width: 40%;">Phone Number <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                          <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="SingleLine"  maxlength="20"></asp:TextBox>
                    </td>
                      <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   ControlToValidate="txtPhoneNumber" ErrorMessage="Please Enter Your Phone Name"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
                   <tr>
                    <td class="tdtitleNm" style="width: 40%;">Address <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                       <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="100"></asp:TextBox>
                             
                    </td>
                     <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   ControlToValidate="txtAddress" ErrorMessage="Please Enter Your Address"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td>  
                </tr>
                     <tr>
                    <td class="tdtitleNm" style="width: 40%;">Date of Birth <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                       
                        <asp:TextBox ID="txtdobdt" runat="server" TextMode="date" ></asp:TextBox>
                    </td>
                          <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   ControlToValidate="txtdobdt" ErrorMessage="Please Select Date of Birth"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td> 
                </tr>
                         <tr>
                    <td class="tdtitleNm" style="width: 40%;">Email Address <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                       
                        <asp:TextBox ID="txtEmailaddress" runat="server" TextMode="SingleLine" ></asp:TextBox>
                    </td>
                                   <td>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   ControlToValidate="txtEmailaddress" ErrorMessage="Please Enter Email address"   ForeColor="Red"></asp:RequiredFieldValidator>  
                    </td> 
                </tr>
                  <tr>  
                    <td class="style2">  
                    </td>  
                    <td>  
                        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" onclick="BtnSubmit_Click" CausesValidation="False"/>  
                    </td>  
                    <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>  
                </tr> 
            </table>
        </div>
                   <div >  
   <asp:gridview runat="server" ID="Gv1" AutoGenerateColumns="true" HeaderStyle-BackColor="Red" BackColor="LightBlue"  
    BorderWidth="5" BorderColor="Blue">  
   </asp:gridview>  
    </div>  
             <%--   <asp:ListView ID="lvCustomers" runat="server" GroupPlaceholderID="groupPlaceHolder1" ItemPlaceholderID="itemPlaceHolder1">
<LayoutTemplate>
    <table cellpadding="0" cellspacing="0">
        <tr>
            <th>
                Customer Name
            </th>
            <th>
                Phone Number
            </th>
             <th>
                Address
            </th
             <th>
                Date Of Birth
            </th>
        </tr>
         <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>
    </table>
</LayoutTemplate>
                    <GroupTemplate>
    <tr>
        <asp:PlaceHolder runat="server" ID="itemPlaceHolder1"></asp:PlaceHolder>
    </tr>
</GroupTemplate>
<ItemTemplate>
    <td>
        <%# Eval("CUSTOMERNAME") %>
    </td>
    <td>
        <%# Eval("PHONENUMBER") %>
    </td>
    <td>
        <%# Eval("ADDRESS") %>
    </td>
      <td>
        <%# Eval("DATEOFBIRTH") %>
    </td>
</ItemTemplate>
</asp:ListView>--%>
    </div> 
    </form>
</body>
</html>
