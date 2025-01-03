<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">
    
<head>
    <meta charset="utf-8">
    <title>SK Networks 관리자</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>
    <script src="/assets/js/lenis.js"></script>
</head>

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
    <div id="wrap">
        <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
        <header class="light" id="header">
            <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
        </header>
        <div class="main error-page" id="main">
            <div class="main-inner">
                <em class="content-head">500</em>
                <div class="content-body">
                    <p class="para type1">Internet Server Error</p>
                    <p class="para type2">서비스 이용에 불편을 드려 죄송합니다.<br> 시스템 에러가 발생하여 페이지를 표시할 수 없습니다.</p>
                </div>
                <div class="content-util">
                    <div class="btn-display">
                        <a class="btn design3 case1 type1 color1 ar-icon-arrow-right2-bg" href="/"><span class="btn-text">메인으로 돌아가기</span></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- page-foot -->
        <footer id="footer">
            <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
        </footer>
        <!-- //page-foot -->
    </div>
</body>
</html>
