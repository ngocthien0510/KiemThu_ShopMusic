<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/cms/display/DisplayLoadControl.ascx" TagPrefix="uc1" TagName="DisplayLoadControl" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SHOP CAR</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/jquery-1.8.3.min.js"></script>   
    <link href="css/Totop.css" rel="stylesheet" />
    <script src="js/backtotop.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    
    <link href="css/stylesheet.css" rel="stylesheet" />
    <link href="css/Default.css" rel="stylesheet" />
    <link href="css/INDEX.css" rel="stylesheet" />
    <script>
        $(document).ready(function () {
            $('#toggle').click(function () {
                $('nav').slideToggle();
            });
        })
    </script>
</head>
    
<body>
    <form id="form1" runat="server"> 
        <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="container-fluid">
			<a class="navbar-branch" href="Default.aspx?">
				<img src="images/logo.png" height="60">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a href="Default.aspx?" class="nav-link">Trang Chủ</a>
					</li>
					<li class="nav-item">
						<a href="SanPham.aspx?modul=SanPham&modulphu=TrangChuModulSanPham" class="nav-link">Sản Phẩm</a>
					</li>
					<li class="nav-item">
						<a href="Gioithieu.aspx" class="nav-link">Giới Thiệu</a>
					</li>
					<li class="nav-item">
						<a href="LienHe.aspx" class="nav-link">Liên Hệ</a>
					</li>
				</ul>
				<div class="navbar-nav">
					<div class="search" style="height: 35px;">
						<input type="text" placeholder="Search.." name="search" value="<%=tukhoa%>" id="keysearch" onkeydown="CheckPostSearch(event)" style="height: 35px;">
				      	<a href="javascript://" onclick="PostSearch()" type="submit" style="height: 35px;width: 35px;"><i class="fa fa-search" ></i></a>			    
				  	</div>
                    <script type="text/javascript">
                        function CheckPostSearch(e) {
                            if (e.keyCode === 13) {
                                PostSearch();

                                e.preventDefault();
                            }
                        }

                        function PostSearch() {
                            $("#keysearch").show().focus();
                            if ($("#keysearch").val() !== "")
                                window.location = "/SanPham.aspx?modul=SanPham&modulphu=TimKiem&tukhoa=" + $("#keysearch").val();
                        }
                    </script>
				  	<div class="cart-user">
                        <div>
                            <a href="/SanPham.aspx?modul=SanPham&modulphu=GioHang"><i class='bx bx-cart'></i></a>
                        </div>			  		
                         <div class="dropdown">
                             <a href="SanPham.aspx?modul=ThanhVien&modulphu=DangNhap"><i class='bx bxs-user-circle'></i></a>
                             <div class="dropdown-content">      
                                <asp:PlaceHolder ID="plDaDangNhap" runat="server" Visible="false">                    
                                    <asp:Literal ID="ltrTenKhachHang" runat="server"></asp:Literal>
                                    <asp:LinkButton ID="lbtDangXuat" runat="server" OnClick="lbtDangXuat_Click" CausesValidation="false">Đăng Xuất</asp:LinkButton>
                                    <asp:LinkButton ID="lbtDoiMatKhau" runat="server" OnClick="lbtDoiMatKhau_Click" CausesValidation="false">Đổi Mật Khẩu</asp:LinkButton>
                                </asp:PlaceHolder>
                            </div>
                         </div>				  		                	
	            	</div>
	            	
				</div>				
			</div>
		</div>
	</nav>
    <%-------slide-------%>
    <div id="slides" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#slides" data-slide-to="0" class="active"></li>
			<li data-target="#slides" data-slide-to="1"></li>
			<li data-target="#slides" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">			
			<div class="carousel-item active">
                <img src="images/s3.jpg" width="500px" height="550px"/>
			</div>
			<div class="carousel-item">
                <img src="images/s12.jpg" width="500px" height="550px"/>
			</div>
			<div class="carousel-item">
                <img src="images/s3.png" width="500px" height="550px"/>
			</div>
		</div>
	    </div>   
      
        <hr class="hrbrand"/>
        <div class="">
            <uc1:DisplayLoadControl runat="server" ID="DisplayLoadControl" />
        </div>        
        <hr class="hrbrand"/>
        <div class="container-fluid padding">
		    <div class="row text-center padding">
			    <div class="col-12">
				    <h2>CÁC NHÃN HIỆU NỔI TIẾNG</h2>
			    </div>
			    <div class="brand">
                    <div class="brand-item">
                        <img src="images/feature/honda.png"/>
                    </div>
                    <div class="brand-item">
                        <img src="images/feature/mec.jpg"/>
                    </div>
                    <div class="brand-item">
                        <img src="images/feature/hyundai.jpg" />
                    </div>
                    <div class="brand-item">
                        <img src="images/feature/audi.jpg"/>
                    </div>
                    <div class="brand-item">
                        <img src="images/feature/vin.jpg"/>
                    </div>

			    </div>
		    </div>
	    </div>
        
        <!--chân trang-->
       <footer>
            <div class="container-fluid padding">
                <div class="row text-center">
                     <div class="col-md-4">
                        <h3>Về Chúng Tôi</h3>
                        <hr class="light"/>
                        <p>Shopcar là thiên đường của các loại phụ kiện ô tô cao cấp. Bạn hãy đến đây chúng tôi sẽ làm cho xe bạn
                            trở nên sang trọng hơn bao giờ hết.<br /> Với những sản phẩm chính hãng 100% có chính sách bảo hành đổi trả. Chào mừng bạn đến với chúng tôi.</p>
                    </div> 
                    <div class="col-md-4">
                        <h3>Thông Tin Liên Hệ</h3>
                        <hr class="light"/>
                        <ul class="contact">
                            <li>
                                <span><img src="hinhanh/Location.png" /></span>
                                <span>Đường Nguyễn Hữu Thọ<br />
                                    Quận Hải Châu, Thành Phố Đà Nẵng<br />
                                    Việt Nam</span>
                            </li>
                            <li>
                                <span><img src="hinhanh/Phone.png" /></span>
                                <p style="margin-top: -5px";><a href="#">+84 123 456 789</a>
                                <br />
                                 <a href="tel:0123456789">+84 987 654 321</a></p>
                            </li>
                            <li>
                                <span><i class="fas fa-envelope"></i></span>
                                <p style="margin-top: -1px";><a href="mailto:nhuanquang00@gmail.com">diachiemail@gmail.com</a></p>
                            </li>                
                        </ul>
                    </div>
                    <div class="col-md-4">
                        <h3>Giờ hoạt động</h3>
                        <hr class="light"/>
                        <ul class="contact">
                            <li>
                               
                                <span>Thứ hai - Thứ sáu: 7h - 17h<br /> 
                                   </span>
                            </li>
                            <li>
                              <span>Thứ bảy - Chủ nhật: 7h - 12h<br /> 
                                   </span>
                                 
                            </li>        
                        </ul>
                        <div class="col-12 social padding">
			                <a href="#"><i class="fab fa-facebook"></i></a>
			                <a href="#"><i class="fab fa-twitter"></i></a>
			                <a href="#"><i class="fab fa-google-plus-g"></i></a>
			                <a href="#"><i class="fab fa-instagram"></i></a>
			                <a href="#"><i class="fab fa-youtube"></i></a>
		                </div>
                </div>
                     
            </div>
      </footer>
    <a href="#" class="cd-top">Back To Top</a>
         

    </form>
</body>
</html>