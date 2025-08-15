<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KayıtOl.aspx.cs" Inherits="tarifvakti.KayıtOl" %>

<!DOCTYPE html>
<html>
<head>
	<title>Kayıt Ol</title>
   
   
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

	<!--Custom styles-->
	 <link rel="stylesheet" href="Yönetim/assets/css/girisstyle.css">
</head>
<body>
<div class="container">
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Kayıt Ol</h3>
				<div class="d-flex justify-content-end social_icon">
					<span><i class="fab fa-facebook-square"></i></span>
					<span><i class="fab fa-google-plus-square"></i></span>
					<span><i class="fab fa-twitter-square"></i></span>
				</div>
			</div>
			<div class="card-body">
				<form runat="server">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="UserName" class="form-control" runat="server" placeholder="UserName"></asp:TextBox>
					</div>	
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<asp:TextBox ID="txtSifre" runat="server" class="form-control" placeholder="password"></asp:TextBox>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="txtAd" class="form-control" runat="server" placeholder="Adınız"></asp:TextBox>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<asp:TextBox ID="txtSoyad" class="form-control" runat="server" placeholder="Soyadınız"></asp:TextBox>
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fa fa-envelope" aria-hidden="true"></i></span>
						</div>
						<asp:TextBox ID="txtMail" class="form-control" runat="server" placeholder="Mailiniz"></asp:TextBox>
					</div>														
					<div class="form-group">
						<asp:Button ID="btnKayıtOl" runat="server" class="btn float-right login_btn" Text="Kayıt Ol"  />
					</div>
					<p>
						<asp:Label ID="Label1" runat="server" Text="" ForeColor="#CC0000"></asp:Label>
					</p>
				</form>
			</div>
			<div class="card-footer">
				<div class="d-flex justify-content-center links">
					Hesabınız var mı ? <a href="#">Giriş Yap</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
</body>
</html>
