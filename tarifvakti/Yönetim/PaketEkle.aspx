<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="tarifvakti.Yönetim.PaketEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <h3 class="page-title">Yeni Tarif Ekleme Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form runat="server">
                            <div class="form-group">
                                <label for="exampleInputName1">Tarif Adı</label>
                                <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Adı"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail3">Alt Açıklama</label>
                                <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Alt Açıklama"></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label for="exampleInputPassword4">Yapılış Süresi</label>
                                <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Yapılış Süresi"></asp:TextBox>
                            </div>

                            <div class="form-group">                            
                                <label>Resim</label>                                
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />  
                                <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                            </div>
                            <div class="form-group">                            
                                <asp:Label ID="lblResim" runat="server" CssClass="form-control"></asp:Label>                                                                                    
                            </div>
                            <div class="form-group">
                                <label for="exampleInputCity1">Tarif Yapılış</label>
                                <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="120px" CssClass="form-control" placeholder="Tarif Yapılış"></asp:TextBox>
                            </div>
                            <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click"/>
                       </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
