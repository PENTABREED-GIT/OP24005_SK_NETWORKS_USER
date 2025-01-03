<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">
    
<head>
    <meta charset="utf-8">
    <title>SK Networks 관리자</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>
    <script src="/assets/js/lenis.js"></script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
    <div id="wrap">
        <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
        <header class="light" id="header">
            <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
        </header>
        <div class="main error-page" id="main">
            <div class="main-inner">
                <em class="content-head">500</em>
                <div class="content-body">
                    <p class="para type1">Internet Server Error</p>
                    <p class="para type2">We apologize for any inconvenience caused in using our service.<br> 
                        A system error occurred and the page cannot be displayed.</p>
                </div>
                <div class="content-util">
                    <div class="btn-display">
                        <a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg" href="/"><span class="btn-text">Back to home</span></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- page-foot -->
        <footer id="footer">
            <%@ include file="/WEB-INF/views/en/include/footer-inc.jsp" %>
        </footer>
        <!-- //page-foot -->
    </div>
</body>
</html>
