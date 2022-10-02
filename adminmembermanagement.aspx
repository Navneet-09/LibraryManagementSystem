<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="WebApplication1.adminmembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">       
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="margin-bottom:30px;">
        <div class="row">
            <div class="col-md-5">
                <div class="card" style="background-color:#F0F0F0;">
                    <div class="card-body">

                         <div class="row" >
                            <div class="col">
                                <center>
                                    <h3>Member Management</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="90px" src="imgs/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label style="margin-top:2px;margin-bottom:5px;">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ReadOnly="False" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3"  ReadOnly="True" runat="server" placeholder="Full Name" TextMode="SingleLine"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label style="margin-top:2px;margin-bottom:5px;">Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        
                                        <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"  ReadOnly="True" placeholder="Account Status" TextMode="SingleLine"></asp:TextBox>
                                        <asp:LinkButton  class="btn btn-success m-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" ><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton  class="btn btn-warning m-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ><i class="fas fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton  class="btn btn-danger m-1" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click" ><i class="fas fa-times-circle"></i></asp:LinkButton>
                                
                                    
                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label style="margin-top:2px;margin-bottom:5px;">DOB</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="DOB" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Contact No.</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Contact No." TextMode="Phone" ReadOnly="True"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-5">
                                <label style="margin-top:2px;margin-bottom:5px;">Email ID</label>
                                <div class="form-group">
                                    <div class="input-group">                      
                                        <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"  placeholder="Email ID" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                        
                                    
                                    </div>
                                </div>
                            </div>


                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">State</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="State" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">City</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="City" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Pincode</label>
                                <div class="form-group">
                                    <div class="input-group">                      
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server"  ReadOnly="True" placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                        
                                    
                                    </div>
                                </div>
                            </div>


                        </div>


                        <div class="row">
                            <div class="col-12">
                                <label style="margin-top:2px;margin-bottom:5px;">Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Full Address" ReadOnly="True" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                                </div>
                        </div>

                        <div class="row" style="margin-top:15px">
                            <div class="col-8 mx-auto">
                                <center>
                                    <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button2" runat="server" Text="Delete User Permanently" OnClick="Button2_Click" />
                                </center>
                                                                                               
                                    </div>
                                                        
                            </div>

                    </div>
                    
                </div>
                       <a style="margin-left:10px;margin-bottom:5px;" href="homepage.aspx"> << Back to home </a>
            </div>

            <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Members List</h3>

                                    </center>
                                </div>
                            </div>                           

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                            <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                            <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                            <asp:BoundField DataField="contact_no" HeaderText="Contact No" SortExpression="contact_no" />
                                            <asp:BoundField DataField="email" HeaderText="Email ID" SortExpression="email" />
                                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                           

                        </div>
                    
                </div>
            </div>

          
            </div>
        </div>

</asp:Content>
