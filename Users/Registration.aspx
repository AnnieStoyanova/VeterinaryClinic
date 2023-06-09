<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hospital_management_System.Users.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <div>
         <!-- registration -->
    <section class="wthree-row w3-contact py-lg-5">
			<div class="container py-4">
            <div class="text-center wthree-title pb-sm-5 pb-3">
				<h3 class="w3l-sub">Sign up</h3>
				<h4 class="sub-title py-3"></h4>
			</div>
                <div class="col-lg-6 wthree-form-left mt-lg-0 mt-3">
                    <!-- registration form grid -->
                    <div class="contact-top1">
                        <h5 class="my-3">Sign up Details</h5>
                        <form action="#" method="get" class="f-color pt-3">
                            <div class="form-group">
                                <label for="contactusername">Username</label>

                                <asp:TextBox ID="txt_signup_username" placeholder="Your Username" class="form-control" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="form-group my-4">
                                <label for="contactemail">Email</label>
                                 <asp:TextBox ID="txt_signup_email" placeholder="Enter your email" class="form-control" runat="server"></asp:TextBox>    
                            </div>

                                <div class="form-group my-4">
                            <label for="mobileNumber">Mobile number</label>
                                <asp:TextBox ID="txt_signup_mobile" placeholder="Enter your mobile number" class="form-control" runat="server"></asp:TextBox>    
                             </div>

                              <div class="form-group my-4">
                            <label for="password">Password</label>
                                <asp:TextBox ID="txt_signup_pass" placeholder="Enter your password" class="form-control" runat="server"></asp:TextBox>    
                             </div>

                             <div class="form-group my-4">
                            <label for="cpassword">Password</label>
                                <asp:TextBox ID="txt_signup_cpass" placeholder="Reenter your password" class="form-control" runat="server"></asp:TextBox>    
                             </div>                            
                              
                    </form>
                    </div>
                </div>
                          <div>
                              <asp:LinkButton ID="LinkButton1" class="btn btn-danger btn-block" runat="server" OnClick="btn_login_b_Click">Sign UP</asp:LinkButton>
                         </div>
            <div>
                  <asp:CheckBox ID="CheckBox2" runat="server" />Remember me
                         </div>

            </div>
    </section>
</div>

</asp:Content>
