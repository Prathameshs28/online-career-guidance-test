<%-- 
    Document   : HomePage1
    Created on : Feb 17, 2020, 10:28:04 AM
    Author     : admin
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>H1</title>
    </head>
    <style>
       @import url('https://fonts.googleapis.com/css?family=Cambo');
@import url('https://fonts.googleapis.com/css?family=Lustria');
@import url(css/animate.css);
@import url(css/slider-style.css);
@import url(css/flaticon.css);
@import url(css/prettyPhoto.css);
@import url(css/owl.carousel.css);
@import url(css/font-awesome.min.css);
body {
    color: #999999;
    font-size: 14px;
    font-family: 'Lustria', serif;
    line-height: 1.80857;
}

html, body{
	height: 100%;
}

body.demos .section {
    background: url(images/bg.png) repeat top center #f2f3f5;
}

body.demos .section-title img {
    max-width: 280px;
    display: block;
    margin: 10px auto;
}

body.demos .service-widget h3 {
    border-bottom: 1px solid #ededed;
    font-size: 18px;
    padding: 20px 0;
    background-color: #ffffff;
}

body.demos .service-widget {
    margin: 0 0 30px;
    padding: 30px;
    background-color: #fff
}

body.demos .container-fluid {
    max-width: 1080px
}
.cd-headline.clip span {
  display: inline-block;
  padding: .2em 0;
  color: #ffffff;
  font-size: 30px;
}
.cd-headline.clip span b{
	text-transform: uppercase;
}
.cd-headline.clip .cd-words-wrapper {
  overflow: hidden;
  vertical-align: top;
}
.cd-headline.clip .cd-words-wrapper::after {
  /* line */
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  width: 2px;
  height: 100%;
  background-color: #aebcb9;
}
.cd-headline.clip b {
  opacity: 0;
}
.cd-headline.clip b.is-visible {
  opacity: 1;
}

.navbar-dark .navbar-nav .nav-link:focus{
	color: ffffff;
}

#mainNav.navbar-shrink {
    padding-top: 10px;
    padding-bottom: 10px;
    background-color: #ffffff;
	border-bottom: 4px solid #171717;
}

#clouds{
	margin-top: -5%;
	position: relative;
	z-index: 1;
}
#clouds path {
    fill: #ffffff;
    bottom: -10px;
    overflow: hidden;
    stroke: #ffffff;
}

.section {
    display: block;
    position: relative;
    overflow: hidden;
    padding: 70px 0;
}

.noover {
    overflow: visible;
}

.noover .btn-dark {
    border: 0 !important;
}

.nopad {
    padding: 0;
}

.nopadtop {
    padding-top: 0;
}

.section.wb {
    background-color: #ffffff;
}

.section.lb {
    background-color: #f2f3f5;
}

.section.db {
    background-color: #111111;
}

.section.color1 {
    background-color: #448AFF;
}

.first-section {
    display: block;
    position: relative;
    overflow: hidden;
    padding: 16em 0 13em;
}

.first-section h2 {
    color: #ffffff;
    font-size: 68px;
    font-weight: 300;
    text-transform: capitalize;
    display: block;
    margin: 0;
    padding: 0 0 30px;
    position: relative;
}

.first-section .lead {
    font-size: 21px;
    font-weight: 300;
    padding: 0 0 40px;
    margin: 0;
    line-height: inherit;
    color: #ffffff;
}

.macbookright {
    width: 980px;
    position: absolute;
    right: -15%;
    bottom: -6%;
}

.section-title {
    display: block;
    position: relative;
    margin-bottom: 60px;
}

.section-title p {
    color: #999;
    font-weight: 400;
    font-size: 18px;
    line-height: 33px;
    margin: 0;
}

.section-title h3 {
    font-size: 38px;
    font-weight: 700;
    line-height: 62px;
    margin: 0 0 25px;
    padding: 0;
    text-transform: none;
    margin-left: 50%;
}

.section.colorsection p,
.section.colorsection h3,
.section.db h3 {
    color: #ffffff;
}



.sim-btn{
	cursor: pointer;
}

.btn-hover-lt{
	margin: 20px auto;
	border: none;
	padding: 10px 44px;
	font-size: 20px;
	position: relative;
	display: inline-block;
}

.btn-hover-lt::before {
	transition: all 0.85s cubic-bezier(0.68, -0.55, 0.265, 1.55);
	content: '';
	width: 50%;
	height: 100%;
	background: #241c65;
	position: absolute;
	top: 0;
	left: 0;
	border-radius: 10px 0px 0px 10px;
}

.btn-hover-lt .btn-text {
  color: white;
  mix-blend-mode: difference;
}
.btn-hover-lt:hover::before {
  background: #241c65;
  width: 100%;
  border-radius: 10px;
}


.right-box-pro{
	position: relative;
	height: 100%;	
}
.right-box-pro img{
	position: relative;
	border-radius: 10px;
	z-index: 2;
}
.right-box-pro .card-back {
    width: 100%;
    height: 100%;
    padding: 30px;
    border-radius: 10px;
    margin: -390px 0px 0px 30px;
    background-color: #241c65;
    z-index: 1;
    position: relative;
}

.right-box-pro .card-front {
    width: 100%;
    height: 100%;
    padding: 30px;
    border-radius: 10px;
    margin: -320px 0px 0px -36px;
    background-color: transparent;
    border: solid 2px #241c65;
    z-index: 1;
    position: relative;
}

.services-inner-box{
	padding: 15px;
	background: #ffffff;
	margin-bottom: 30px;
	position: relative;
}
.ser-icon{
	width: 90px;
	height: 90px;
	text-align: center;
	line-height: 90px;
}
.ser-icon i{
	font-size: 50px;
	color: #ffffff;
	mix-blend-mode: difference;
}
.services-inner-box h2{
	font-size: 22px;
	font-weight: 600;
	color: #ffffff;
	mix-blend-mode: difference;
}

.services-inner-box p{
	font-size: 16px;
	font-weight: 200;
	color: #ffffff;
	mix-blend-mode: difference;
}



    </style>
    <body>
          <div id="services" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Services</h3>
                
            </div><!-- end title -->

            <div class="row">
				<div class="col-md-4">
                    <div class="services-inner-box btn-hover-lt">
						<div class="ser-icon">
							<i class="flaticon-seo"></i>
						</div>
						<h2>Student Report</h2>
						</div>
                </div><!-- end col -->
                <div class="col-md-4">
                    <div class="services-inner-box btn-hover-lt">
						<div class="ser-icon">
							<i class="flaticon-development"></i>
						</div>
						<h2>Payment Report </h2>
					</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box btn-hover-lt">
						<div class="ser-icon">
							<i class="flaticon-process"></i>
						</div>
						<h2>Feedback Report</h2>
			</div>
                </div><!-- end col -->
				<div class="col-md-4">
                    <div class="services-inner-box btn-hover-lt">
						<div class="ser-icon">
							<i class="flaticon-discuss-issue"></i>
						</div>
						<h2>Question Report</h2>
						
					</div>
                </div><!-- end col -->
				
				
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
    </body>
</html>
