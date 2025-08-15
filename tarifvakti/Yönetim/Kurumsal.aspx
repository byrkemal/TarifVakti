<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="tarifvakti.Yönetim.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <h3 class="page-title">Kurumsal Düzeleme Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <div class="form-group">
                                <label for="exampleInputName1" color="white">Baslık</label>
                                <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Özet</label>
                                <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" placeholder="Tur Fiyat"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputPassword4">Detay</label>
                                <asp:TextBox ID="txtDetay" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                            </div>      
                            <asp:Label ID="lblid" runat="server" Text=""></asp:Label>
                            <asp:Button ID="BtnYukle" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary m-2" OnClick="BtnYukle_Click" />
                            <asp:Button ID="BtnGuncelle" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary m-2" OnClick="BtnGuncelle_Click" />                            
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </div>
</asp:Content>
