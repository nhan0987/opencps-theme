<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key='lang.dir' />" lang="${w3c_language_id}">

<head>
	<title>${site_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	
	<link rel="Shortcut Icon" href="${themeDisplay.getPathThemeRoot()}/images/favicon.ico">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet">
	<link href='https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons' rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<@liferay_util["include"] page=top_head_include />
	
	<base href="/">
	<!--<link href="${themeDisplay.getPathThemeRoot()}/css/base-style.css?t=8888" rel="stylesheet" type="text/css">-->
	<link href="${themeDisplay.getPathThemeRoot()}/css/main.css?t=123456789" rel="stylesheet" type="text/css">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/chunk-vendors.css?t=123321" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}/css/upgrade.css?t=789987" rel="stylesheet">
	
	<script>
        window.__define = window.define;
        window.__require = window.require;
        window.define = undefined;
        window.require = undefined;
    </script>
	
	<script src="${themeDisplay.getPathThemeRoot()}/js/jquery.min.js"></script>
	
	<script>
        window.define = window.__define;
        window.require = window.__require;
        window.__define = undefined;
        window.__require = undefined;
    </script>
	
	<script>${tracking_script}</script>
</head>

<body class="${css_class} mBody home-theme">

	<!-- <@liferay_ui["quick-access"] contentId="#main-content" /> -->

	<#if permissionChecker.isOmniadmin()>
		<@liferay_util["include"] page=body_top_include />
		<@liferay.control_menu />
	<#else>
		<style>
			html .has-control-menu #wrapper {
				margin-top: 0 !important;
			}
			html body.open #wrapper {
				padding-left: 0 !important;
			}
		</style>
	</#if>

	<div class="" id="wrapper">
		<header id="banner">
			<div class="container">
				<a href="${site_default_url}" class="mLogo"> 
					<img src="${themeDisplay.getPathThemeRoot()}/images/${logo_img}">
				</a>
				<#if has_navigation && is_setup_complete>
					<#include "${full_templates_path}/navigation.ftl" />
				</#if>
			</div>
		</header>
		
		<section id="content">	
			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</section>

		<footer id="footer-home">
			<div class="container">
				<p>
					<label>Đơn vị quản lý: <b>Sở Thông tin và truyền thông</b></label>
					<span><b>Trụ sở:</b> Số 20 Hoàng Quốc Việt, Phường Chiềng Cơi, Thành phố Sơn La, Tỉnh Sơn La</span>
					<span><b>Điện thoại:</b> 02122.210.468 - 02123.858.728  |  <b>Email:</b> stttt@sonla.gov.vn</span>
					<span>Cơ quan chủ quản: Sở Thông tin và Truyền thông Sơn La</span>
				</p>
				<img src="${themeDisplay.getPathThemeRoot()}/images/logo-opencps-home.png">
			</div>
		</footer>
	</div>
	
	<!-- inject:js -->
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/app.js"></script>
	<script type="text/javascript" src="/o/opencps-store/js/cli/login/app/js/chunk-vendors.js"></script>
	<script>
		$(document).ready(function() {
			$("#navigation .nav-toggle").on('click', function(e) {
				e.preventDefault();
				$(this).next().slideToggle();
			});
		});

//		var loginDvcqg = function () {
//			event.preventDefault();
//		    $.ajaxSetup({
//		    headers: {
//		      'groupId': window.themeDisplay.getScopeGroupId(),
//		      'Token': window.Liferay.authToken
//		    }
//		  });
//		  $.get('/o/rest/v2/dvcqgsso/authurl',{state: "",redirectURL: "https://dichvucong.haugiang.gov.vn/web/cong-dich-vu-cong-tinh-hau-giang"})
//		  .done(function(data) {    
//		        window.location.href = data
//		  })
//		  .error(function (){
//		    alert("Chức năng đang cập nhật. Thử lại sau")
//		  })
//		}
	</script>
	
	<style>
		body #react-root .v-navigation-drawer--is-mobile:not(.v-navigation-drawer--close), 
		body #react-root .v-navigation-drawer--temporary:not(.v-navigation-drawer--close) {
			-webkit-box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
			box-shadow: 0 1px 3px -1px rgba(0,0,0,.2), 1px 1px 5px -5px rgba(0,0,0,.14), 0 6px 30px 5px rgba(0,0,0,.12);
		}
		
		
		.body_login .login-wrapper {
			min-height: 100vh;
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 15px;
			flex-wrap: wrap;
		}
		.forgetten-password-input {
			width: 100%;
			line-height: 31px;
			font-size: 13px;
			padding-left: 10px;
			text-decoration: underline;
			color: #fff;
		}
		.action-btn-login-input {
			width: 100%;
			text-align: right;
		}
		.login-wrapper .login-input {
			display: -webkit-box;
			display: flex;
		}
		.login-wrapper .login-input .ico {
			position: relative;
			margin-left: 10px;
		}
		.login-wrapper .login-input .ico:first-child {
			margin-left: 0;
		}
		.login-wrapper .login-input .ico:before {
			content: "";
			font-family: FontAwesome;
			position: absolute;
			color: #903938;
			width: 30px;
			height: 100%;
			display: -webkit-box;
			display: flex;
			-webkit-align-items: center;
			align-items: center;
			-webkit-justify-content: center;
			justify-content: center;
		}
		.login-wrapper .login-input .ico-user:before {
			content: "\f007";
		}
		.login-wrapper .login-input .ico-pass:before {
			content: "\f023";
		}
		.login-wrapper .login-input .ico:after {
			content: "";
			position: absolute;
			top: 20%;
			left: 30px;
			width: 1px;
			height: 60%;
			background-color: #903938;
		}
		.login-wrapper .login-input input {
			height: 26px;
			width: 200px;
			border: 1px solid #903938;
			border-radius: 30px;
			padding-left: 35px;
			font-size: 12px;
			background: #fff;
		}
		.login-wrapper .login-input input:focus {
			outline: none;
		}
		.login-wrapper .btn-action {
			text-align: right;
		}
		.login-wrapper button {
			margin: 5px 0 0 5px;
			height: 26px;
			line-height: 26px;
			padding: 0 12px;
			color: #2a2a2a;
			-webkit-box-shadow: none;
			box-shadow: none;
			border: 1px solid #CE7A58;
			border-radius: 4px;
			background-color: transparent;
			font-size: 12px;
			font-weight: bold;
			will-change: box-shadow;
			/* box-shadow: 0 3px 1px -2px rgba(0,0,0,.2), 0 2px 2px 0 rgba(0,0,0,.14), 0 1px 5px 0 rgba(0,0,0,.12); */
		}
		/* .login-wrapper .btn-register {
			background-color: #fdb44b;
		} */
		.login-wrapper button:hover {
			background-color: #CE7A58;
			cursor: pointer;
			color: white;
		}
		/* .login-wrapper .btn-register:hover {
			background-color: #ad6601;
			cursor: pointer;
		} */
		#react-root .application--wrap {
			min-height: unset;
		}
		#react-root .application.theme--light {
			background: transparent !important;
			width: 100%;
		}
		#react-root .application--wrap {
			border-top: none !important;
		}
		#react-root .login-wrapper input {
			background-color: #fff;
		}
		#react-root .navigation-drawer{
			height: 100vh !important;
			z-index: 11;
		}
		#react-root .badge__badge {
			font-size: 10px;
			border-radius: 4px;
			height: 16px;
			width: auto;
			padding: 0 4px;
			right: -6px;
			top: -2px;
			min-width: 18px;
			z-index: 10;
		}
		#react-root {
			min-width: 300px;
			position: absolute;
			top: 5px;
			right: 15px;
		}
		body #banner__content {
			padding: 0!important;
			height: 66px !important;
		}
		#banner #banner__content .logo {
			position: absolute;
		}
		body #banner .navigation-drawer--fixed {
			position: fixed !important;
		}
		#react-root .btn-toggle .btn__content {
			text-transform: none;
			background: #929292;
			color: #fff;
			font-size: 10px !important;
		}
		#react-root span {
			font-size: 13px;
			/* color: white; */
		}
		#react-root span > i, #react-root .v-icon {
			/* color: white !important; */
		}
		#react-root .btn-toggle .btn--active .btn__content {
			background: #fff;
			color: inherit;
		}
		#react-root .btn-toggle .btn--active .btn__content::before {
			opacity: 0;
		}
		#react-root .theme--light.chip,
		#react-root .theme--light .chip {
			background: transparent !important;
		}
		#react-root .menu__content {
			margin-top: 0;
		}
		#react-root .menu__content .list {
			margin-bottom: 0;
			padding: 0;
		}
		#react-root .menu__content .list>div > .list__tile {
			height: 32px;
			font-size: 13px;
			cursor: pointer;
		}
		#react-root .menu__content .list>div:hover {
			background-color: #eee !important;
		}
		#react-root .menu__content .list>div {
			border-bottom: 1px dashed #ddd;
			display: block;
			padding: 0;
			font-size: 13px;
			height: auto;
			color: rgba(0,0,0,.87);
			position: relative;
		}
		#react-root .chip .avatar {
			margin-right: 2px;
		}
		#react-root .chip .avatar img {
			width: 24px;
			height: 24px;
			margin-right: 0px !important;
		}
		#react-root .list__tile__action {
			min-width: 25px;
		}
		.user-profile-menu-react > div[class*='MuiPopover-paper'] {
			top: 5px !important;
			right: 0 !important;
			left: unset !important;
			position: absolute !important;
		}
		.user-profile-menu-react > div > ul > li {
			border-bottom: 1px dashed #adabab !important;
			padding: 5px 10px !important;
			font-size: 13px !important;
		}
		.user-profile-menu-react > div > ul {
			padding: 0 !important;
		}
		.v-window__container--is-active {
			height: auto !important;
		}
		#react-root .login_wrap_app_panel > div > div:last-child {
			left: auto !important;
			right: 0;
			top: 110% !important;
		}
		
		@media screen and (max-width: 1263px) {
			body .container {
				min-width: 100%;
				padding-left: 15px !important;
				padding-right: 15px !important;
			}
		}

		.home-theme .v-icon, .home-theme .primary .v-icon {
			color: #903938 !important;
		}

		/* body.signed-out #react-root, .dvc-theme .btn-login-motcua, .motcua-theme .btn-login-dvc, .motcua-theme .btn-register-dvc, body.signed-in .btn-banner {
			display: none !important;
		}
		.btn-banner {
			padding: 10px 15px;
			float: right;
			color: #2a2a2a;
			border: 1px solid #CE7A58;
			border-radius: 4px;
			font-weight: bold;
			display: inline-block;
			position: absolute;
		    right: 0;
		    top: 50%;
		    transform: translateY(-50%);
		}
		.btn-banner:hover {
			background-color: #CE7A58;
			cursor: pointer;
			color: white;
		}
		.btn-login-dvc {
			right: 100px;
		} */
	</style>

	<@liferay_util["include"] page=body_bottom_include />
	<@liferay_util["include"] page=bottom_include />
</body>

</html>