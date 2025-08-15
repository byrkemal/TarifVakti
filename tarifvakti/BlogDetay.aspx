<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="BlogDetay.aspx.cs" Inherits="tarifvakti.BlogDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2>Blog</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" SelectCommand="SELECT * FROM [tblBlog] inner join tblBlogKategori on tblBlogKategori.id=tblBlog.KategoriId WHERE (tblBlog.id = @id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" DataKeyField="id">
                            <ItemTemplate>
                              <div class="single-post">
                                <div class="feature-img">
                                    <img class="img-fluid" src="images/blog/<%#Eval("Resim")%>" alt="">
                                 </div>
                                     <div class="blog_details">
                                        <h2><%# Eval("Baslik") %></h2>
                                           <ul class="blog-info-link mt-3 mb-4">
                                              <li><a href="#"><i class="fa fa-user"></i><%# Eval("Adi") %></a></li>
                                                <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>                                   
                                            </ul>
                                          <p class="excert"><%# Eval("Ozet") %></p>
                                          <p class="excert"><%# Eval("Detay") %></p>
                                        
                                     </div>
                                </div>
                            </ItemTemplate>
                       </asp:DataList>
               
        <div class="col-lg-8 posts-list">
               <div class="navigation-top">
                  <div class="d-sm-flex justify-content-between text-center">
                     <p class="like-info"><span class="align-middle"><i class="fa fa-heart"></i></span> Lily and 4 people like this</p>
                     <div class="col-sm-4 text-center my-2 my-sm-0">

                     </div>
                     <ul class="social-icons">
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-dribbble"></i></a></li>
                        <li><a href="#"><i class="fab fa-behance"></i></a></li>
                     </ul>
                  </div>
               </div>
               <div class="blog-author">
                  <div class="media align-items-center">
                     <img src="assets/img/blog/author.png" alt="">
                     <div class="media-body">
                        <a href="#">
                           <h4>Harvard milan</h4>
                        </a>
                        <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he
                           our dominion twon Second divided from</p>
                     </div>
                  </div>
               </div>
               

               <div class="comment-form">
                  <h4>Leave a Reply</h4>
                  <form class="form-contact comment_form" action="#" id="commentForm">
                     <div class="row">
                        <div class="col-12">
                           <div class="form-group">
                              <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9"
                                 placeholder="Write Comment"></textarea>
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="name" id="name" type="text" placeholder="Name">
                           </div>
                        </div>
                        <div class="col-sm-6">
                           <div class="form-group">
                              <input class="form-control" name="email" id="email" type="email" placeholder="Email">
                           </div>
                        </div>
                        <div class="col-12">
                           <div class="form-group">
                              <input class="form-control" name="website" id="website" type="text" placeholder="Website">
                           </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <button type="submit" class="button button-contactForm btn_1 boxed-btn">Send Message</button>
                     </div>
                  </form>

               </div>

            </div>   
   
</asp:Content>




