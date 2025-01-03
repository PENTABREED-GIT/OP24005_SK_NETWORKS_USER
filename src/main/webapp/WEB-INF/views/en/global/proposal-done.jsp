<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>InquiriesㆍSuggestions submitted &lt; InquiriesㆍSuggestions &lt; SK Networks</title>
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
    <div class="main etc inquiry-complete" id="main">
        <div class="main-inner">
            <div class="local design3">
                <div class="local-body">
                    <div class="content-head">InquiriesㆍSuggestions</div>
                    <div class="content-body">
                        <div class="section design1 case5 type3 align4">
                            <div class="section-wrap">
                                <div class="section-caption">
                                    <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks logo">
                                </div>
                                <div class="section-head">
                                    <h3 class="section-name">Your proposal has been successfully submitted.</h3>
                                </div>
                                <div class="section-body">
                                    <p class="para">Our team will review your proposal and send a detailed response to the e-mail address you provided.</p>
                                    <span class="note">Click the ‘Confirm’ button below to return to the main screen.</span>
                                </div>
                                <div class="section-util btn-display design1 align3">
                                    <div class="btn-area">
                                        <a class="btn design1 case1 type1 color1" href="/en">
                                            <span class="btn-text">Confirm</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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