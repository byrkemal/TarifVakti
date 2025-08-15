<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="tarifvakti.Yönetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <h3 class="page-title">Site Ayarları İşlem Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <div class="form-group">
                                <label for="exampleInputName1">E-Mail</label>
                                <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Telefon</label>
                                <asp:TextBox ID="txtTelefon" runat="server" CssClass="form-control" placeholder="Telefon"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword4">Adres</label>
                                <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" placeholder="Adres"></asp:TextBox>
                            </div>     
                            <div class="form-group">
                                <label for="exampleInputEmail3">Twitter</label>
                                <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" placeholder="Twitter"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Youtube</label>
                                <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" placeholder="Youtube"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Instagram</label>
                                <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" placeholder="Instagram"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Facebook</label>
                                <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" placeholder="Facebook"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblLogo" runat="server" Text="Label">Logo</asp:Label>                               
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCity1">Site Açıklama</label>
                                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
                                <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                            </div>
                            <asp:Label ID="lblid" runat="server" Text=""></asp:Label><br />
                            <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary m-2" OnClick="Button2_Click"/>
                            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click"/>                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
