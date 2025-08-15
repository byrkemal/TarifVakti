<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="SefBloglari.aspx.cs" Inherits="tarifvakti.Yönetim.SefBloglari" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <h3 class="page-title">Sef Blog Ekleme Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" SelectCommand="SELECT * FROM [tblSefBloglari]"></asp:SqlDataSource>
                            <div class="form-group">
                                <label for="exampleInputName1">Başlık</label>
                                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Kategori</label>
                                <asp:TextBox ID="txtKategori" runat="server" CssClass="form-control" placeholder="Kategori"></asp:TextBox>
                            </div>                                                                                
                            
                            <div class="form-group">
                                <label for="exampleInputCity1">Blog Detay</label>
                                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="300px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                                <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Ekle" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click"  />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
