<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="tarifvakti.Yönetim.GaleriEkleSil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-panel">
        <h3 class="page-title">Galeri Resim İşlemleri Sayfası</h3>
        <div class="content-wrapper">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <form class="forms-sample" runat="server">
                            <div class="form-group">                            
                                <h3>Galeri Resim Yükleme Alanı</h3>
                                <label for="exampleInputName1">Resim Adı</label>
                                <asp:TextBox ID="txtResimAdi" runat="server" CssClass="form-control" placeholder="Resim Adı"></asp:TextBox>
                            </div>   
                            
                            <div class="form-group">
                                <label>Galeri Resim</label>                               
                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                                <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary m-2" OnClick="Button2_Click" />
                            </div>
                            <div class="form-group">                               
                                <asp:Label ID="lblResim" runat="server" Text="Label"></asp:Label>
                            </div>
                            <div class="form-group">                               
                                <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary m-2" OnClick="Button1_Click" />
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" DeleteCommand="DELETE FROM [tblGalerii] WHERE [id] = @id" InsertCommand="INSERT INTO [tblGalerii] ([Baslik], [Resim]) VALUES (@Baslik, @Resim)" SelectCommand="SELECT * FROM [tblGalerii]" UpdateCommand="UPDATE [tblGalerii] SET [Baslik] = @Baslik, [Resim] = @Resim WHERE [id] = @id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="Baslik" Type="String" />
                                        <asp:Parameter Name="Resim" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="Baslik" Type="String" />
                                        <asp:Parameter Name="Resim" Type="String" />
                                        <asp:Parameter Name="id" Type="Int32" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                    <Columns>
                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                        <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                                        <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
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
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>









