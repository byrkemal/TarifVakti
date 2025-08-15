<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Galeri.aspx.cs" Inherits="tarifvakti.Galeri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Galeri</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTrippConnectionString %>" SelectCommand="SELECT * FROM [tblGalerii]"></asp:SqlDataSource>          
<div class="row">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div class="section-top-border">				
				<div class="row gallery-item">
				    <div class="col-md-4" style="margin-bottom: 15px;">
                        <a href='images/galeri/<%# Eval("Resim") %>' class="img-pop-up">
                            <img src='images/galeri/<%# Eval("Resim") %>' alt='<%# Eval("Resim") %>' class="single-gallery-image" style="padding: 5px;"/>
                         </a>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater> 
</div>
</asp:Content>
