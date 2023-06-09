<%@ Page Title="Loginpage" Language="C#" MasterPageFile="~/Users/usermaster.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Hospital_management_System.Users.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div>
         <!-- log in -->
    <section class="wthree-row w3-contact py-lg-5">
			<div class="container py-4">
            <div class="text-center wthree-title pb-sm-5 pb-3">
				<h3 class="w3l-sub">Login</h3>
				<h4 class="sub-title py-3"></h4>
			</div>
                <div class="col-lg-6 wthree-form-left mt-lg-0 mt-3">
                    <!-- login form grid -->
                    <div class="contact-top1">
                        <h5 class="my-3">Login Details</h5>
                        <form action="#" method="get" class="f-color pt-3">
                            <div class="form-group">
                                <label for="contactusername">Username</label>

                                <asp:TextBox ID="txt_login_username" placeholder="Your Username" class="form-control" runat="server"></asp:TextBox>
                            
                            </div>
                            <div class="form-group my-4">
                                <label for="contactemail">Password</label>
                                 <asp:TextBox ID="txt_login_pass" placeholder="Enter your password" class="form-control" runat="server"></asp:TextBox>    
                            </div>
                    </form>
                    </div>
                </div>
                          <div>
                              <asp:Button ID="Button1" class="btn btn-agile btn-block w-100" runat="server" Text="Login" Font-Bold="True" OnClick="btn_login_b_Click" />&nbsp&nbsp
                              <asp:LinkButton ID="LinkButton3" class="btn btn-danger btn-block" runat="server" Font-Bold="True" OnClick="LinkButton2_Click">Forgot your Password ?</asp:LinkButton>
                              <asp:LinkButton ID="LinkButton2" class="btn btn-danger btn-block" runat="server" Font-Bold="True" OnClick="LinkButton1_Click">Sign Up</asp:LinkButton>
                         </div>
            <div>
                  <asp:CheckBox ID="CheckBox1" runat="server" />Remember me
                         </div>

            </div>
    </section>
</div>

</asp:Content>
