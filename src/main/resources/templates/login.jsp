<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en-US" xml:lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Estore购物商城</title>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!--[if IE 6]><link rel="stylesheet" href="style.ie6.css" type="text/css" media="screen" /><![endif]-->
    <!--[if IE 7]><link rel="stylesheet" href="style.ie7.css" type="text/css" media="screen" /><![endif]-->
    <script type="text/javascript" src="script.js"></script>
</head>
<body>
<div id="art-main">
        <div class="art-sheet">
            <div class="art-sheet-tl"></div>
            <div class="art-sheet-tr"></div>
            <div class="art-sheet-bl"></div>
            <div class="art-sheet-br"></div>
            <div class="art-sheet-tc"></div>
            <div class="art-sheet-bc"></div>
            <div class="art-sheet-cl"></div>
            <div class="art-sheet-cr"></div>
            <div class="art-sheet-cc"></div>
            <div class="art-sheet-body">
                <%@include file="header.jsp" %>
                <div class="art-content-layout">
                    <div class="art-content-layout-row">
                        <div class="art-layout-cell art-content">
                            <div class="art-post">
                                <div class="art-post-tl"></div>
                                <div class="art-post-tr"></div>
                                <div class="art-post-bl"></div>
                                <div class="art-post-br"></div>
                                <div class="art-post-tc"></div>
                                <div class="art-post-bc"></div>
                                <div class="art-post-cl"></div>
                                <div class="art-post-cr"></div>
                                <div class="art-post-cc"></div>
                                <div class="art-post-body">
										<!-- 登录表单 -->
									  <div class="login_main_mid">
									    <div class="login_content_top">请登录Estore商场
									      &nbsp;&nbsp; ${login_error }
									    </div>
									    <div class="login_content_line"></div>
									    <form action="${pageContext.request.contextPath}/loginServlet" method="post">
									    <dl class="login_content">
									       <dt>邮箱：</dt>
									       <dd><input id="email" type="text" class="login_content_input" name="email" value="${cookie.remember.value }"/></dd>
									    </dl>
									     <dl class="login_content">
									       <dt>密码：</dt>
									       <dd>
									         <input id="password" type="password" class="login_content_input" name="password"/>
									       </dd>
									     </dl>
									     <dl class="login_content">
									     	<dt></dt>
									     	<dd>
										     	<input type="checkbox" name="remember" value="on"/>记住用户 
									     	</dd>
									     </dl>
									     <dl class="login_content">
									       <dt></dt>
									       <dd><input id="btn" value=" " type="submit" class="login_btn_out" /></dd>
									    </dl>
									    </form>
									    <div class="login_content_dotted"></div>
									    <div class="login_content_end_bg">
									     <div class="login_content_end_bg_top">
									    <label class="login_content_bold">还不是Estore商场用户？</label>快捷方便的免费注册，让你立刻尽享Estore商场提供的满意服务......
									     </div>
									     <div class="login_content_end_bg_end">
									       <input  class="login_register_out" value=" " type="button" onclick="window.location='regist.jsp';" />
									      </div>
									    </div>
									  </div>
									  <!-- 登录表单结束 -->                        
                           			<div class="cleared"></div>
                                </div>
                            </div>
                        </div> 
                        <%@include file="sidebar.jsp" %>
                    </div>
                </div>
                <div class="cleared"></div>
                <%@include file="footer.jsp" %> 
        		<div class="cleared"></div>
            </div>
        </div>
        <div class="cleared"></div>
    </div>
    
</body>
</html>