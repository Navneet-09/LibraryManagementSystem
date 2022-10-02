<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="WebApplication1.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:30px; margin-bottom:30px;width:65rem;">
        <div class="row">

            <div class="col-md-6  col-3">
                <img style="height:40rem;" src="imgs/sign.jpg" />
                
            </div>

            <div class="col-md-6 col-3">
                <div class="card mx-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="90px" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Member Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label style="margin-top:30px">Username</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter your Username"></asp:TextBox>
                                </div>

                                <label style="margin-top:30px">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group" style="margin-top:30px">
                                    <center>
                                        <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="      Login      " OnClick="Button1_Click"></asp:Button>
                                    </center>
                                    
                                </div>

                                <div class="form-group">
                                    <p style="margin-top:20px">Don't have Account? </p>
                                    <a href="usersignup.aspx" style="text-decoration:none;"><input class="btn btn-primary" id="Button2" type="button" value="Sign-Up" style=" margin-top:0px;height:32px; width:90px"/></a>
                                </div>

                            </div>
                        </div>

                    </div>
                    
                </div>

                

            </div>
        </div>
        <a href="homepage.aspx"> << Back to home </a>
    </div>
</asp:Content>
