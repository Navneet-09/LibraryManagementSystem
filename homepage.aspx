<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication1.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <link rel="stylesheet" href="css/customstylesheet.css" type="text/css"/>

    <section class="section-1 container-fluid p-2" style="width:100%;height:90vh;background-image:url('../imgs/c2.jpg');clip-path:polygon(100% 0%,100% 70%, 50% 100%, 0 75%,0 0);
         opacity:0.8;background-repeat:no-repeat;">
        <div class="cvr">
            <div class="sec text-center" style="margin-top:26vmin; color:black;">
                <h1 class="font-weight-bold" style="font-size:5rem;"> E-Library Management System</h1>
                <p style="font-size:2rem;"> "Modernizing the library system." </p>  
            </div>
        </div>       
        
        
    </section>

    
       
    <section class="context">
       <div class="container text-center">
            <div class="row p-3" style="background-color:#909090;">
                <div class="col-md-6 col-6">
                    <div class="pray">
                        <img style="height:90vh" src="imgs/learn.jpg" />
                </div>
            </div>

            <div class="col-md-6 col-6">
                <div class="panel text-left">
                    <h1 style="font-size:60px; color:#D0D0D0;">"Nothing is <br /> pleasanter <br /> than  exploring <br />a library."</h1>
                </div>
            </div>
        </div>
       </div>
    </section>

    <section class="section-2 container-fluid p-0">
        <div class="cover">
            <div class="content text-center">
                <h1>Some Features That Makes Us Unique</h1>
                <p>Our Three Primary Features</p>
            </div>
        </div>

        <div class="container text-center">

            <div class="numbers d-flex flex-md-row flex-wrap justify-content-center">
               
                <div class="card col-md-auto col-auto"  style="width: 20rem;">
                    <center>
                        <img class="card-img-top" style="border-radius:20vh; height:33vh;width:16rem;" src="imgs/ebook.jpg" style="height: 33vh;" alt="Card image cap">
                    </center>
                    
                    
                    <div class="card-body">
                        <center>
                            <h1>View Books</h1>
                        </center>
                        <p class="card-text">Search for your favourite book from your place.</p>
                    </div>

                </div>

                 <div class="card col-md-auto col-auto" style="width: 20rem;">
                    <img class="card-img-top" style="height:33vh; border-radius:5rem;" src="imgs/searching.jpg" alt="Card image cap">
                    
                    <div class="card-body">
                        <center>
                            <h1>Issue Books</h1>
                        </center>
                        <p class="card-text">Issue Book from your place and visit our library and get the book.</p>
                    </div>

                </div>

                 <div class="card col-md-auto col-auto" style="width: 20rem;">
                     <center>
                         <img class="card-img-top" style="height:33vh;width:15rem;border-radius:2px;" src="imgs/inventory.jpg" alt="Card image cap">
                     </center>                    
                    <div class="card-body">
                        <center>
                            <h1>Stock checker</h1>
                        </center>
                        <p class="card-text">check online whether your favourite book stock is available or not .</p>
                    </div>

                </div>

                
                 
            </div>
              </div>       

         
        
    </section>
    

    <section id="process" style=" background-image: url('../imgs/back1.jpg');background-size:cover;opacity:0.8;" >
        <div class="container" >
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <center>
                        <h1 style="color:aliceblue;">Contact Us</h1>
                        <p style="color:aliceblue;"><b></b></p>
                    </center>
                </div>
            </div>

            <div class="row d-flex flex-md-row flex-column flex-wrap justify-content-center">
                <div class="col-md-4 col-auto" style="background-color:aliceblue;border-radius:3rem; margin-right:10px;">
                    <center>
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <h6>Address</h6>
                        <p class="text-justify">Jamshedpur,Jharkhand-831012.</p>
                    </center>
                </div>

                <div class="col-md-4 col-auto" style="background-color:aliceblue;border-radius:3rem;margin-right:10px;">
                    <center>
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <h6>phone</h6>
                        <p class="text-justify">9099-9999</p>
                    </center>
                </div>

                <div class="col-md-4 col-auto" style="background-color:aliceblue;border-radius:3rem;border-spacing:15px 10px;">
                    <center>
                        <i class="fa fa-envelope-open" aria-hidden="true"></i>
                        <h6>Email</h6>
                        <p class="text-justify">elibrary@gmail.com</p>
                    </center>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
