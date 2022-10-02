<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookissue.aspx.cs" Inherits="WebApplication1.Adminbookissue" %>
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
                                    <h3>Book Issuing</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="90px" src="imgs/bookissue.png" />
                                </center>
                            </div>
                        </div>

                       

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                </div>
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">Book Id</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="ID" TextMode="SingleLine"></asp:TextBox>
                                    <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">Member Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                                </div>
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" TextMode="SingleLine" ReadOnly="True"></asp:TextBox>
                                  
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">Issue Date</label>
                                <div class="form-group">
                                    <div class="Start Date">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                        
                                    </div>
                                </div>
                                </div>
                            <div class="col-md-6">
                                <label style="margin-top:2px;margin-bottom:5px;">DUE Date</label>
                                <div class="form-group">
                                 
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="DUE Date" TextMode="Date"></asp:TextBox>
                                
                                </div>
                            </div>
                        </div>


                        <div class="row" style="margin-top:15px">
                            <div class="col-6">
                                <center>
                                    <asp:Button class="btn btn-lg btn-block btn-primary" ID="Button2" runat="server" Text="Issue" OnClick="Button2_Click" />
                                </center>
                                                                                               
                                    </div>
                            <div class="col-6">
                                <center>
                                    <asp:Button class="btn btn-lg btn-block btn-success" ID="Button3" runat="server" Text="Return" OnClick="Button3_Click" />
                                </center>
                                
                                </div>
                                
                            </div>

                    </div>
                    <a style="margin-left:5px;margin-bottom:10px;" href="homepage.aspx"> << Back to home </a>
                </div>

                

            
            
            </div>

            <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">

                            <div class="row">
                                <div class="col">
                                    <center>
                                        <h3>Issued Book List</h3>

                                    </center>
                                </div>
                            </div>                           


                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                        <Columns>
                                            <asp:BoundField DataField="member_id" HeaderText="Member ID" SortExpression="member_id" />
                                            <asp:BoundField DataField="member_name" HeaderText="Member Name" SortExpression="member_name" />
                                            <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id" />
                                            <asp:BoundField DataField="book_name" HeaderText="Book Name" SortExpression="book_name" />
                                            <asp:BoundField DataField="issue_date" HeaderText="Issue Date" SortExpression="issue_date" />
                                            <asp:BoundField DataField="due_date" HeaderText="Due Date" SortExpression="due_date" />
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
