<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDüzenleSil.aspx.cs" Inherits="tarifvakti.Yönetim.BlogDüzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <div class="main-panel">  
        <h3 class="page-title">Blog Düzenle/Sil Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <form class="forms-sample" runat="server">
                                      
                      
                      <asp:SqlDataSource runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" DeleteCommand="DELETE FROM [tblBlog] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlog] ([Baslik], [Ozet], [KategoriId], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @KategoriId, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [tblBlog]" UpdateCommand="UPDATE [tblBlog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [KategoriId] = @KategoriId, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [id] = @id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Ozet" Type="String" />
                              <asp:Parameter Name="KategoriId" Type="Int32" />
                              <asp:Parameter Name="Resim" Type="String" />
                              <asp:Parameter Name="Detay" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Ozet" Type="String" />
                              <asp:Parameter Name="KategoriId" Type="Int32" />
                              <asp:Parameter Name="Resim" Type="String" />
                              <asp:Parameter Name="Detay" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                              <asp:Parameter Name="id" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                       <asp:GridView runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                           <Columns>
                               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                               <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                               <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                               <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                               <asp:BoundField DataField="KategoriId" HeaderText="KategoriId" SortExpression="KategoriId" />
                               <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                               <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                               <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
                           </Columns>
                           <EditRowStyle BackColor="#999999" />
                           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                           <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                           <SortedAscendingCellStyle BackColor="#E9E7E2" />
                           <SortedAscendingHeaderStyle BackColor="#506C8C" />
                           <SortedDescendingCellStyle BackColor="#FFFDF8" />
                           <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                      </asp:GridView>
                      
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" DeleteCommand="DELETE FROM [tblBlog] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlog] ([Baslik], [Ozet], [KategoriId], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @KategoriId, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [tblBlog]" UpdateCommand="UPDATE [tblBlog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [KategoriId] = @KategoriId, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [id] = @id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Ozet" Type="String" />
                              <asp:Parameter Name="KategoriId" Type="Int32" />
                              <asp:Parameter Name="Resim" Type="String" />
                              <asp:Parameter Name="Detay" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Ozet" Type="String" />
                              <asp:Parameter Name="KategoriId" Type="Int32" />
                              <asp:Parameter Name="Resim" Type="String" />
                              <asp:Parameter Name="Detay" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                              <asp:Parameter Name="id" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                      
                  </form>
                </div>
              </div>
            </div>   
       </div> 
    </div>    
</asp:Content>
