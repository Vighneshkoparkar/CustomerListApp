<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="CustomerListApp.CustomerList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome</title>
     <script src="Scripts/jquery.validate.min.js"></script>
   <script>
      
       $('#txtdobdt').datepicker(
             {
                 changeMonth: true,
                 changeYear: true,
                 numberOfMonths: 1,
                 minDate: null,
                 maxDate: null,
                 dateFormat: "dd/mm/yy"

            });
   </script>

</head>
<body>
    <form id="form1" runat="server">
            <div class="col-md-12" style="margin-top:1%; font-size:12px; height:375px; padding-left:0px; padding-right:0px;background-color: white !important;">
        <div id="parent">
             <table id="fixTable" class="table table-bordered" style="padding-bottom:20px;width:90% !important">
              
                <tr>
                    <td class="tdtitleNm" style="width: 40%;">Customer Name <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                        <input type="text" id="txtCustomerName" class="form-control" maxlength="20" />
    
                    </td>
                </tr>
                 <tr>
                    <td class="tdtitleNm" style="width: 40%;">Phone Number <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                        <input type="text" id="txtPhoneNumber" class="form-control" maxlength="20" />
    
                    </td>
                </tr>
                   <tr>
                    <td class="tdtitleNm" style="width: 40%;">Address <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                       <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="100"></asp:TextBox>
    
                    </td>
                </tr>
                     <tr>
                    <td class="tdtitleNm" style="width: 40%;">Date of Birth <span style="color:red;font-size:16px;">*</span></td>
                    <td class="tdalign" style="width: 40%;background-color:white !important;" colspan="2" >
                       <input type="text" id="txtdobdt" name="txtdobdt" tabindex="8"  class="form-control" style="cursor: pointer;font-weight: initial;background-color: white;" maxlength="10"  autocomplete="off"/>
    
                    </td>
                </tr>
            </table>
        </div>
    </div> 
    </form>
</body>
</html>
