<%@ Page Title="ForgotPassword" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Forgotpassword.aspx.cs" Inherits="Hospital_management_System.Users.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div>
         <!-- log in -->
    <section class="wthree-row w3-contact py-lg-5">
			<div class="container py-4">
            <div class="text-center wthree-title pb-sm-5 pb-3">
				<h3 class="w3l-sub">Change Password</h3>
				<h4 class="sub-title py-3"></h4>
			</div>
                <div class="col-lg-6 wthree-form-left mt-lg-0 mt-3">
                    <!-- login form grid -->
                    <div class="contact-top1">
                        <h5 class="my-3">Details</h5>
                        <form action="#" method="get" class="f-color pt-3">
                            <div class="form-group">
                                <label for="contactemail">Email</label>

                                <asp:TextBox ID="txt_fpass_Email" placeholder="Your Email" class="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group my-4">
                                <label for="mobile">Mobile</label>
                                 <asp:TextBox ID="txt_fpass_mobile" placeholder="Enter your mobile" class="form-control" runat="server"></asp:TextBox>    
                            </div>

                              <div class="form-group my-4">
                                <label for="newpassword">New Password</label>
                                 <asp:TextBox ID="txt_fpass_newpass" placeholder="Enter your new password" class="form-control" runat="server"></asp:TextBox>    
                            </div>

                    </form>
                    </div>
                  <asp:Button ID="Button2" class="btn btn-danger btn-block" runat="server" Text="Submit Changed Password" Font-Bold="True" OnClick="btn_fpass_Click" />&nbsp&nbsp
                  <asp:LinkButton ID="LinkButton4" class="btn btn-danger btn-block" runat="server" Font-Bold="True" OnClick="LinkButton1_Click" >Go to Log In</asp:LinkButton> 
                </div>

            </div>
    </section>
</div>

</asp:Content>




















 <%--   
   <center>
        <h1 style="font-size: xx-large; font-weight: bold; color: #0000FF">Forgot Password</h1>
       <table style="width: 377px; height: 200px; background-color: #0000FF; font-size: large; font-weight: bold; color: #FFFFFF;" >
           <tr>
               <td style="width: 121px" align="center">Email</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_Email" runat="server" Width="203px"></asp:TextBox></td>
           </tr>

           <tr>
               <td style="width: 121px" align="center">Mobile</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_mobile" runat="server" Width="203px"></asp:TextBox></td>
           </tr>



            <tr>
               <td style="width: 121px" align="center"> Old Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_oldpass" TextMode="Password" runat="server"></asp:TextBox></td>
           </tr>

           
            <tr>
               <td style="width: 121px" align="center"> New Password</td>
               <td style="width: 188px">
                   <asp:TextBox ID="txt_fpass_newpass" TextMode="Password" runat="server"></asp:TextBox></td>
           </tr>




           <tr>
               <td colspan="2" align="center">
                   <asp:Button ID="btn_fpass" runat="server" Text="Forgot Password" Font-Bold="True" OnClick="btn_fpass_Click" />&nbsp&nbsp
                   <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Underline="True" OnClick="LinkButton1_Click" >Sign In</asp:LinkButton></td>
           </tr>
       </table>




</asp:Content>--%>
