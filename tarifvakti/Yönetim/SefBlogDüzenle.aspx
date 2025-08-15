<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="SefBlogDüzenle.aspx.cs" Inherits="tarifvakti.Yönetim.SefBlogDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">  
        <h3 class="page-title">Şef Blog Düzenle/Sil Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <form class="forms-sample" runat="server">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" DeleteCommand="DELETE FROM [tblSefBloglari] WHERE [id] = @id" InsertCommand="INSERT INTO [tblSefBloglari] ([Baslik], [Kategori], [Tarih], [BlogDetay]) VALUES (@Baslik, @Kategori, @Tarih, @BlogDetay)" SelectCommand="SELECT * FROM [tblSefBloglari]" UpdateCommand="UPDATE [tblSefBloglari] SET [Baslik] = @Baslik, [Kategori] = @Kategori, [Tarih] = @Tarih, [BlogDetay] = @BlogDetay WHERE [id] = @id">
                          <DeleteParameters>
                              <asp:Parameter Name="id" Type="Int32" />
                          </DeleteParameters>
                          <InsertParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Kategori" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                              <asp:Parameter Name="BlogDetay" Type="String" />
                          </InsertParameters>
                          <UpdateParameters>
                              <asp:Parameter Name="Baslik" Type="String" />
                              <asp:Parameter Name="Kategori" Type="String" />
                              <asp:Parameter Name="Tarih" Type="DateTime" />
                              <asp:Parameter Name="BlogDetay" Type="String" />
                              <asp:Parameter Name="id" Type="Int32" />
                          </UpdateParameters>
                      </asp:SqlDataSource>
                      <asp:GridView ID="GridView1" runat="server" CssClass="table table-borderless" AllowPaging="True" AllowSorting="True" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                          <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                          <Columns>
                              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                      </form>
                </div>
              </div>
            </div>   
       </div> 
    </div>    
</asp:Content>
