<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Adminbookinventory.aspx.cs" Inherits="WebApplication1.Adminbookinventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
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
                                    <h3>Book Management</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <img id="imgview" width="90px" src="book_inventory/books.png" />
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
                                <asp:FileUpload onchange="readURL(this);" class="form-control"  ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label style="margin-top:2px;margin-bottom:5px;">Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ReadOnly="False" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-primary" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-9">
                                <label style="margin-top:2px;margin-bottom:5px;">Book Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox3"  ReadOnly="False" runat="server" placeholder="Book Name" TextMode="SingleLine"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Language</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="--Select--"  Value="Select" />
                                        <asp:ListItem Text="English"  Value="English" />
                                        <asp:ListItem Text="Hindi"  Value="Hindi" />
                                        <asp:ListItem Text="french"  Value="french" />
                                    </asp:DropDownList>
                                </div>



                                <label style="margin-top:2px;margin-bottom:5px;">Publisher Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DropDownList2" runat="server">
                                        <asp:ListItem Text="--Select--"  Value="Select" />
                                        <asp:ListItem Text="Publisher 1"  Value="Publisher 1"/>
                                        <asp:ListItem Text="Publisher 2"  Value="Publisher 2"/>                                       
                                    </asp:DropDownList>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Author Name</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control"  ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="--Select--"  Value="Select" />
                                        <asp:ListItem Text="A1"  Value="A1"/>
                                        <asp:ListItem Text="A2"  Value="A2"/>                                       
                                    </asp:DropDownList>
                                </div>


                                <label style="margin-top:2px;margin-bottom:5px;">Publisher Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control"  ID="TextBox2" runat="server" placeholder="Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Genre</label>
                                <div class="form-group">
                                    <asp:ListBox class="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Self Help" Value="Self Help" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Healthy Living" Value="Healthy Living" />
                                        <asp:ListItem Text="Wellness" Value="Wellness" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Personal Development" Value="Personal Development" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Science Fiction" Value="Science Fiction" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Autobiography" Value="Autobiography" />
                                        <asp:ListItem Text="Encyclopedia" Value="Encyclopedia" />
                                        <asp:ListItem Text="Health" Value="Health" />
                                        <asp:ListItem Text="History" Value="History" />
                                        <asp:ListItem Text="Math" Value="Math" />
                                        <asp:ListItem Text="Textbook" Value="Textbook" />
                                        <asp:ListItem Text="Science" Value="Science" />
                                        <asp:ListItem Text="Travel" Value="Travel" />                              
                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Edition</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Edition" TextMode="SingleLine"></asp:TextBox>
                                       
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Book Cost</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Pages</label>
                                <div class="form-group">
                                    <div class="input-group">                      
                                        <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>
                                                                    
                                    </div>
                                </div>
                            </div>


                        </div>


                         <div class="row">
                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Actual Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>                            
                                    </div>
                                </div>
                                </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">current Stock</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="current Stock" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label style="margin-top:2px;margin-bottom:5px;">Issued Books</label>
                                <div class="form-group">
                                    <div class="input-group">                      
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" ReadOnly="True" placeholder="Issued Books" TextMode="Number"></asp:TextBox>
                                                                    
                                    </div>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col-12">
                                <label style="margin-top:2px;margin-bottom:5px;">Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Description" ReadOnly="False" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                                </div>
                        </div>

                        <div class="row" style="margin-top:15px">
                            <div class="col-4">                              
                                <asp:Button class="btn btn-lg btn-block btn-success" ID="Button2" runat="server" Text="     Add     " OnClick="Button2_Click"/>                                                                         
                             </div>
                            
                            <div class="col-4">                              
                                <asp:Button class="btn btn-lg btn-block btn-warning" ID="Button1" runat="server" Text="    Update    " OnClick="Button1_Click"/>                                                                         
                             </div>

                            <div class="col-4">                              
                                <asp:Button class="btn btn-lg btn-block btn-danger" ID="Button3" runat="server" Text="    Delete    " OnClick="Button3_Click"/>                                                                         
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
                                        <h3>Book Inventory List</h3>

                                    </center>
                                </div>
                            </div>                           

                            <div class="row">
                                <div class="col">
                                    <hr>
                                </div>
                            </div>

                            <div class="row">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                                <div class="col">
                                    <asp:GridView class="table table-striped table-hover" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                        <Columns>
                                            <asp:BoundField DataField="book_id" HeaderText="ID" ReadOnly="True" SortExpression="book_id" >
                                            
                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div class="container-fluid">
                                                        <div class="row">
                                                            <div class="col-lg-10">
                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("book_name") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-lg-12">

                                                                        Author-<asp:Label ID="Label2" runat="server" Text='<%# Eval("author_name") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Genre-<asp:Label ID="Label3" runat="server" Text='<%# Eval("genre") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Language-<asp:Label ID="Label4" runat="server" Text='<%# Eval("language") %>' Font-Bold="True"></asp:Label>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        Publisher-<asp:Label ID="Label5" runat="server" Text='<%# Eval("publisher_name") %>' Font-Bold="True"></asp:Label>
                                                                        | Publish Date-<asp:Label ID="Label6" runat="server" Text='<%# Eval("publisher_date") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Pages-<asp:Label ID="Label7" runat="server" Text='<%# Eval("no_of_pages") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Edition-<asp:Label ID="Label8" runat="server" Text='<%# Eval("edition") %>' Font-Bold="True"></asp:Label>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-lg-12">
                                                                        Cost-<asp:Label ID="Label9" runat="server" Text='<%# Eval("book_cost") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Actual Stock-<asp:Label ID="Label10" runat="server" Text='<%# Eval("actual_stock") %>' Font-Bold="True"></asp:Label>
                                                                        &nbsp;| Available Stock-<asp:Label ID="Label11" runat="server" Text='<%# Eval("current_stock") %>' Font-Bold="True"></asp:Label>
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-lg-12">

                                                                        Description-<asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("book_description") %>'></asp:Label>

                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="col-lg-2">
                                                                <asp:Image class="img-fluid p-2" ID="Image1" runat="server" ImageUrl='<%# Eval("book_img_link") %>' />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            
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
