<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogEkle.aspx.cs" Inherits="tarifvakti.Yönetim.BlogEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="main-panel">
        <h3 class="page-title">Blog Ekleme Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]"></asp:SqlDataSource>
                            <div class="form-group">
                                <label for="exampleInputName1">Ana Başlık</label>
                                <asp:TextBox ID="txtBaslık" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Alt Baslık</label>
                                <asp:TextBox ID="txtÖzet" runat="server" CssClass="form-control" placeholder="Alt Baslık"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword4">Kategori</label><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>
                            &nbsp;</div>                          
                            <div class="form-group">
                                <label>Blog Resim</label>
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                                <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                            </div>

                            <div class="form-group">
                                <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                            </div>

                            <div class="form-group">
                                <label for="exampleInputCity1">Blog Detay</label>
                                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="300px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                                <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
