<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="tarifvakti.Yönetim.GaleriKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
    <h3 class="page-title">Resim Galerisi Kategori İşlemleri Sayfası</h3>
        <div class="content-wrapper">
           <div class="col-12 grid-margin stretch-card">        
                <div class="card">
                   <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <div class="form-group">
                                <label for="exampleInputName1">Kategori Adı</label>
                                <asp:TextBox ID="txtKategori" runat="server" CssClass="form-control" placeholder="Kategori Adı"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click" />                               
                        </form>
                    </div>
                </div>
            </div>
        </div>
   </div>
</asp:Content>
