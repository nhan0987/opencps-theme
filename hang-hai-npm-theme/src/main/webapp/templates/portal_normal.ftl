<!DOCTYPE html>

<#include init />

<html dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>Hệ thống dịch vụ hành chính công trực tuyến</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<base href="/">

	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}css/app.6884c2200dcff6eea32578c472a2c737.css" rel="stylesheet">
	<link type="text/css" href="${themeDisplay.getPathThemeRoot()}css/base-style.css?t=123132211" rel="stylesheet">

</head>

<body class="mBody">
	<header id="banner" style="height: inherit !important;">
		<div class="container-fluid align-center" style=" padding: 0px 30px !important;">
			<div class="logo align-middle">
				<a href="$site_default_url">
					<img src="${themeDisplay.getPathThemeRoot()}/images/logo_dtnd.png">
				</a>
			</div>
			
			<#if !themeDisplay.isSignedIn()>
				<div class="sub-info">
					<a href="/login" class="signin">Đăng nhập</a>
					<a href="/register" class="register">Đăng ký</a>			
				</div>
			<#else>
				<div class="actions-group">
					<span id="quanTriPageHeader"></span>
					<a href="/group/guest/doipass" class="username" style="margin-right: 15px;"><i class="fa fa-user-circle"></i> <span id="emailNameHeader"></span></a>
					<a href="/c/portal/logout" class="signout"><i class="fa fa-sign-out"></i> Thoát</a>
				</div>
			</#if>
		</div>
		
		<#include "${full_templates_path}/navigation.ftl" />
	</header>

	<#if selectable>
        ${theme.include(content_include)}
    <#else>
        ${portletDisplay.recycle()}

        ${portletDisplay.setTitle(the_title)}

        ${theme.wrapPortlet("portlet.ftl", content_include)}
    </#if>
	<div id="app"></div>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/vgcaplugin.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/manifest.3fb6908d832c933f6121.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/vendor.bc2132d7c2eee437576d.js"></script>
	<script type="text/javascript" src="${themeDisplay.getPathThemeRoot()}js/app.8714d4e8de1ecdbdd117.js"></script>
	
	<footer id="footer"> 
		<div class="owner">
			<ul>
				<li>Cục Đường thủy nội địa Việt Nam - Bộ Giao Thông vận tải</li>
				<li><i class="fa fa-map-marker" aria-hidden="true"></i> 05 Tôn Thất Thuyết - Q.Cầu Giấy - Thành phố Hà Nội</li>
				<li></i> 04 39421887</li>
				<li>
					<a href="/web/guest/huong-dan-su-dung" class="manual">Hướng dẫn sử dụng</a>
				</li>
			</ul>
		</div>
	</footer>
</div>

</body>

</html>
