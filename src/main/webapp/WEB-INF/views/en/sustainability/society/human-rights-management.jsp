<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Human Rights Commitment Declaration &lt; Society &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            localAnimations_Case02();
        });
    </script>
</head>

<body class="en">
<%@ include file="/WEB-INF/views/en/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/en/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/en/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg human" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Society</span></li>
                            <li class="data-item"><span class="item-text">Human Rights Commitment Declaration</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Managing Business for<br class="pc-only">
                            a Sustainable Society</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Human Rights Commitment Declaration</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-society.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Human Rights Commitment Declaration</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="section-figure">
                                        <img src="/assets/images/sustainability/human-en.jpg" alt="Human Rights Commitment Declaration Image" style="width: 100%">
                                        <div class="blind">
                                            <strong>Human Rights Commitment Declaration</strong>
                                            <p>
                                                In line with SKMS management philosophy focused on SK People’s continuous happiness and pursuit of SUPEX (Super Excellent) with voluntary and willing brain activities, SK Networks vows to create sustainable values with customers to address social challenges. Furthermore, we will respect human rights and deliver on our responsibilities in all our business activities to meet the expectations of the society toward corporations.
                                            </p>
                                            <p>
                                                Enthusiastically advocating the Human Rights Principles suggested in global guidelines including the Universal Declaration of Human Rights, the UN Guiding Principles on Business &amp; Human Rights (UNGP) and the Constitution of the International Labor Organization (ILO), SK Networks will develop human rights policies that can encompass all stakeholders including SK People, customers, shareholders, business partners and local communities, continually revisiting and updating such policies.
                                            </p>
                                            <ol>
                                                <li>SK Networks will prohibit discriminatory HRM practices affecting employment, payroll, promotion, etc. on the basis of gender, age, ethnicity, race, religion, etc. fostering diversity within organization.</li>
                                                <li>SK Networks will comply with labor-related laws and regulations concerning minimum wage, work hours, freedom of assembly, labor union, collective bargaining right, equal pay, etc.</li>
                                                <li>SK Networks will comply with health and safety laws to create a pleasant work environment and protect the health of SK People.</li>
                                                <li>SK Networks will operate on/offline platforms for ethical violations and employee grievances reports, with a strong commitment to address human rights violations.</li>
                                                <li>SK Networks will promote fair business practices based on mutual trust with business partners and not engage in unfairly demanding/offering bribes, favors, etc.</li>
                                                <li>SK Networks will remain committed to foster cultural practices of respecting human rights and putting human rights principles in action, with all stakeholders including SK People, customers, shareholders, business partners and local communities.</li>
                                            </ol>
                                            <p>CEO &amp; President</p>
                                            <p>Lee, Ho-jeong</p>
                                        </div>
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