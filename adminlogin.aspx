<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.adminlogin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-top:30px; margin-bottom:30px;width:65rem;">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="90px" src="imgs/admin.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Admin Login</h3>
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
                                <label style="margin-top:30px;margin-bottom:10px;">Admin-ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Enter your Admin-ID"></asp:TextBox>
                                </div>

                                <label style="margin-top:30px;margin-bottom:10px;">Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group" style="margin-top:25px">
                                    <asp:Button class="btn btn-primary btn-block" ID="Button1" runat="server" Text="Login" 
                                        style="width:400px; margin-left:25px;margin-top:20px;" OnClick="Button1_Click"></asp:Button>
                                </div>



                            </div>
                        </div>

                    </div>
                    <a style="margin-left:12px;margin-top:30px;margin-bottom:20px" href="homepage.aspx" > << Back to home </a>
                </div>

                

            </div>
        </div>
    </div>
</asp:Content>
