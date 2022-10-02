<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminauthormanagement.aspx.cs" Inherits="WebApplication1.Adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">       
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div class="container" style="margin-bottom:30px;">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">

                         <div class="row">
                            <div class="col">
                                <center>
                                    <h3>Author Management</h3>
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
                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Author ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                                </div>
                            <div class="col-md-8">
                                <label style="margin-top:2px;margin-bottom:5px;">Author Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Enter your Name" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row" style="margin-top:15px">
                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />                                                               
                                    </div>
                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button3" runat="server" Text="Update" OnClick="Button3_Click" />
                                </div>

                            <div class="col-md-4">
                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button4" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                                
                            </div>

                    </div>
                    <a href="homepage.aspx"> << Back to home </a>
                </div>

                

            
            
            </div>

            <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Authors list</h3>

                                    </center>
                                </div>
                            </div>                           


                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                            <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
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
