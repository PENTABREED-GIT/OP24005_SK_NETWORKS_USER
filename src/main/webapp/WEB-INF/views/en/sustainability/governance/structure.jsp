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
    <title>Governance &lt; Governance &lt; Sustainability &lt; SK Networks</title>
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
            Tab();
            Accordion();
            accordionResize();
            panelHeightOnSelectChange();


            function panelHeightOnSelectChange() {
                const accordionDisplays = document.querySelectorAll(".accordion-display");

                accordionDisplays.forEach(function(accordionDisplay) {
                    const accordionItems = accordionDisplay.querySelectorAll(".accordion-item");

                    accordionItems.forEach(function(accordionItem) {
                        const panels = accordionItem.querySelectorAll(".accordion-head + *");
                        panels.forEach(panel => {
                            const selects = panel.querySelectorAll("select");
                            selects.forEach(select => {
                                select.addEventListener("change", function() {
                                    panel.style.height = "auto"
                                    const currentHeight = panel.scrollHeight + "px"
                                    panel.style.height = currentHeight;
                                });
                            });
                        });
                    });
                });
            }

            function accordionResize() {
                window.addEventListener("resize", () => {
                    const accordionDisplays = document.querySelectorAll(".accordion-display");

                    accordionDisplays.forEach(function(accordionDisplay) {
                        const accordionItems = accordionDisplay.querySelectorAll(".accordion-item");

                        accordionItems.forEach(function(accordionItem) {
                            const panel = accordionItem.querySelector(".accordion-body");
                            
                            if (accordionItem.classList.contains("active")) {
                                panel.style.height = 'auto';
                                const actualHeight = panel.scrollHeight;
                                panel.style.height = actualHeight + 'px';
                            } else {
                                panel.style.height = null;
                            }
                        });
                    });
                });
            }
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
    <div class="main esg governance-structure" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Governance</span></li>
                            <li class="data-item"><span class="item-text">Governance</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Creating Future Value through<br class="pc-only"> Transparent Management</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Governance</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-governance.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Governance</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text">Board of Directors</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text">Corporate Governance</button>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="panel-display design1 case1">
                            <div class="panel-list">
                                <!-- 이사회 패널 -->
                                <div id="tab-panel1" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="panel-body">
                                            <div class="section design1 case1 type1">
                                                <div class="section-wrap">
                                                    <div class="section-body">
                                                        <p class="para">
                                                            SK Networks is implementing transparent management, centered around the Board of Directors, with a well-established advanced governance structure, including the establishment and operation of a Board Secretariat to support the Board’s activities. The Board is responsible for setting and evaluating the company's mid- to long-term strategies and annual business plans. It also deliberates on critical individual issues and oversees major decisions to enhance corporate value. It also Furthermore, the Board deliberates and approves investment plans, internal transactions, and other issues involving conflicts of interest and compensation, while also managing overall risks.<br> In addition, to protect long-term corporate value, the Board independently assesses the potential positive and negative impacts its decisions may have on stakeholders. SK Networks is dedicated to reinforcing Board-driven responsible management, aiming to create a healthier future value through transparent operations that serve the interests of our customers and investors.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case1 type1">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">Greater professional insight/diversity in BoD</h4>
                                                            <p class="section-summary">
                                                                SK Networks appoints directors having professional credentials for legal affairs, finance/accounting, marketing, etc. and ESG insight, offering training opportunities such as seminars, third party lectures, etc. in a bid to empower them continuously. Outside directors are also selected considering their nationality, gender and age to ensure greater diversity in board representation. Outside directors with even wider diversity and professional competences required for developing/executing mid to long-term strategy of the company will continue to be identified way forward.
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="t-display design1 case1 type1 align3 scroll">
                                                            <table style="min-width: 650px;" class="col-w-1">
                                                                <caption>The table provides information for board expertise, diversity expansion and consists of plans from 2023, 2024 to 2026, and 2027.</caption>
                                                                <colgroup>
                                                                    <col class="col1">
                                                                    <col class="col2">
                                                                    <col class="col3">
                                                                    <col class="col4">
                                                                </colgroup>
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col">Year</th>
                                                                        <th scope="col">~ 2023</th>
                                                                        <th scope="col">2024 ~ 2026</th>
                                                                        <th scope="col">2027 ~</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>Diversity</td>
                                                                        <td>One person<sup>¹⁾</sup></td>
                                                                        <td>More than one person</td>
                                                                        <td>More than two people</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>Professionalism<sup>²⁾</sup></td>
                                                                        <td>Two people</td>
                                                                        <td>Two people</td>
                                                                        <td>More than two people</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <p class="comment design1">
                                                            1) Appointment of a female outside director (March, 2021)<br>
                                                            2) Environment/Social/Governance, Investment, Industry/Tech, etc.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case2 type1">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">To strengthen the board’s independence</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <p class="para">
                                                            As of March 2024, our Board is composed of seven directors, four of whom (57.1% of the total) are independent. We have appointed an independent directors as the Chairman of the Board, distinct from the CEO role, to ensure impartiality and effective governance. In addition, the chairs of all key committees under the Board, including Strategy∙ESG Committee the HR Committee, and the Audit Committee, are independent director. This structure ensures rigorous scrutiny and oversight of significant management activities, thereby fostering a healthier future value for customers and investors through transparent management. Additionally, SK Networks confirms that all independent directors maintain no special relationships with SK Networks or any related entities to preserve the Board’s independence. Independent directors are also strictly prohibited from engaging in transactions with SK Networks, either on their own behalf or for third parties, without prior approval from the Board.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design5 case4 type1 structure">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <h4 class="section-name">Board of Directors</h4>
                                                        <div class="section-util">
                                                            <div class="btn-display">
                                                                <div class="btn-area">
                                                                    <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/지배구조/이사회 규정/2024_SKN_Regulations of the Board of Directors.pdf"><span class="btn-text"> Regulations of the Board of Directors</span></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design1 case2 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Inside Director</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case1">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-01.png" alt="Lee, Hojeong">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">CEO / President</p>
                                                                                                    <p class="name">Lee, Hojeong</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-02.png" alt="Choi, Sunghwan">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Director</p>
                                                                                                    <p class="name">Choi, Sunghwan</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2022.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Non Executive Director</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case1">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-03.png" alt="Lee, Sunghyung">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Non Executive Director</p>
                                                                                                    <p class="name">Lee, Sunghyung</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Outside Director</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case2">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-04.png" alt="Chai, Sooil">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Chairman of the Board of Directors</p>
                                                                                                    <p class="name">Chai, Sooil</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">Profile</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Former&#41; financial institution representative, Boston Consulting Group in Asia Pacific</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-05.png" alt="Jeong, Seokwoo">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Outside Director</p>
                                                                                                    <p class="name">Jeong, Seokwoo</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2022.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">Profile</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Professor, school of Business Administration Korea University</li>
                                                                                                <li class="data-item">Non-Standing Commissioner, Securities and Futures</li>
                                                                                                <li class="data-item">Committee of Financial Services Commission</li>
                                                                                                <li class="data-item">President, Korea Accounting Association</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-06.png" alt="Lee, Moonyoung">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Outside Director</p>
                                                                                                    <p class="name">Lee, Moonyoung</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2024.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">Profile</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">Associate Professor of Accounting, Duksung Women’s University</li>
                                                                                                <li class="data-item">Supervisory Commissioner, Financial Services Commission</li>
                                                                                                <li class="data-item">Financial Plan Deliberation Commissioner, Dobong-gu (District)</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-07.png" alt="Chang, Hwajin">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">Outside Director</p>
                                                                                                    <p class="name">Chang, Hwajin</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Date of<br class="pc-only"> appointment</span>
                                                                                                            <span class="data">2024.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">Term</span>
                                                                                                            <span class="data">3 years</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">Profile</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">President, Confluent Korea</li>
                                                                                                <li class="data-item">President, Google Cloud Korea</li>
                                                                                                <li class="data-item">Chief strategy officer, Microsoft Asia Pacific</li>
                                                                                                <li class="data-item">CEO / President, IBM Korea</li>
                                                                                            </ul>
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
                                                </div>
                                            </div>
                                            <div class="section design1 case4 type1 activity-detail">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">History of Board of Directors (Board) meetings</h4>
                                                            <p class="section-summary">
                                                                To strengthen ESG insight within the board of directors (BoD) and upgrade ESG performance standards, SK Networks will incrementally expand the scope of ESG agenda reporting/discussion in pursuit of both qualitative and quantitative improvement.
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design1 case2 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Goals and roadmap for expansion of ESG agenda discussion within the board of directors</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                <table style="min-width: 805px;" class="col-w-2">
                                                                                    <caption>The table provides information on the target of expanding ESG discussions within the board of directors and consists of categories (agenda, cycle), plans from 2022, 2023, 2025, and 2026.</caption>
                                                                                    <colgroup>
                                                                                        <col class="col1">
                                                                                        <col class="col2">
                                                                                        <col class="col3">
                                                                                        <col class="col4">
                                                                                    </colgroup>
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th scope="col"></th>
                                                                                            <th scope="col">2023</th>
                                                                                            <th scope="col">2024 ~ 2025</th>
                                                                                            <th scope="col">2026 ~</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>Agenda</td>
                                                                                            <td>Reporting on the annual SK Group's ESG key performance indicators, etc.</td>
                                                                                            <td>Reporting and discussion of ESG</td>
                                                                                            <td>Reporting and deepening the discussion of ESG</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Period</td>
                                                                                            <td>third a year</td>
                                                                                            <td>at least twice a year</td>
                                                                                            <td>at least twice a year</td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-display design2 case5 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-subject">2024</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="submit-form design1 case1 align1">
                                                                                <div class="form-list">
                                                                                    <div class="form-item">
                                                                                        <div class="form select design1 case1 type1">
                                                                                            <label for="level-sel-activity" class="blind">Label</label>
                                                                                            <select name="name" id="level-sel-activity">
                                                                                                <option value="0" selected hidden disabled>Year</option>
                                                                                                <option value="2024">2024</option>
                                                                                                <option value="2023">2023</option>
                                                                                                <option value="2022">2022</option>
                                                                                                <option value="2021">2021</option>
                                                                                                <option value="2020">2020</option>
                                                                                                <option value="2019">2019</option>
                                                                                                <option value="2018">2018</option>
                                                                                                <option value="2017">2017</option>
                                                                                                <option value="2016">2016</option>
                                                                                                <option value="2015">2015</option>
                                                                                                <option value="2014">2014</option>
                                                                                                <option value="2013">2013</option>
                                                                                                <option value="2012">2012</option>
                                                                                                <option value="2011">2011</option>
                                                                                            </select>
                                                                                            <div class="arrow"><span class="blind">close</span></div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="esg-inform-list esg-activity-table">
                                                            <jsp:include page="/WEB-INF/views/en/sustainability/governance/inc/directors-meeting-history.jsp" flush="true"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case4 type1 committee">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">Committees of the Board of Directors</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design1 case2 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Committee Organization</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                <table class="esg-committee-table">
                                                                                    <caption>This table provides information on the composition status of committees within the board of directors and consists of names, composition (in-house directors, other non-executive directors, outside directors), roles, and download regulations.</caption>
                                                                                    <colgroup>
                                                                                        <col style="width: 14%;">
                                                                                        <col style="width: 15%;">
                                                                                        <col style="width: 15%;">
                                                                                        <col style="width: 15%;">
                                                                                        <col style="width: auto;">
                                                                                        <col style="width: 9.5%;">
                                                                                        <col style="width: 12.5%;">
                                                                                    </colgroup>
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th scope="col" rowspan="2">Name</th>
                                                                                            <th scope="colgroup" colspan="3">Organization</th>
                                                                                            <th scope="col" rowspan="2">Roles</th>
                                                                                            <th scope="col" rowspan="2">Remarks</th>
                                                                                            <th scope="col" rowspan="2">Regulations</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th scope="col">Inside Director</th>
                                                                                            <th scope="col">Non-executive Director</th>
                                                                                            <th scope="col">Outside Director</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>Human Resources</td>
                                                                                            <td></td>
                                                                                            <td>Commissioner Sunghyung Lee</td>
                                                                                            <td>Chairman Seok-woo Jeong<br>Commissioner Hwa-jin Chang</td>
                                                                                            <td class="align1">Establishes the outside director candidate nomination process
                                                                                                Identifies and manages a candidate pool
                                                                                                Reviews HR arrangements, evaluation, compensation etc. related to the CEO and key executives
                                                                                            </td>
                                                                                            <td>-</td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/인사위원회/2024_SKN_HR Committee Regulations.pdf"><span class="btn-text">Download</span></a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Strategy∙ESG Committee</td>
                                                                                            <td>Commissioner Ho-jeong Lee, (Representative Director),<br>Commissioner Sunghwan Choi</td>
                                                                                            <td>Commissioner Sunghyung Lee</td>
                                                                                            <td>
                                                                                                Chairman Sooil Chai<br>
                                                                                                Commissioner Seok-woo Jeong<br>
                                                                                                Commissioner Moon-young Lee<br>
                                                                                                Commissioner Hwa-jin Chang
                                                                                            </td>
                                                                                            <td class="align1">Conducts audits on work activities of the executives
                                                                                                Reviews integrity and validity of the company’s financial activities
                                                                                                Reviews the accuracy of financial reports as well as validity of accounting practice standards and accounting estimate changes
                                                                                            </td>
                                                                                            <td>-</td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/esg 위원회/2024_SKN_Strategy ESG Committee Regulations.pdf"><span class="btn-text">Download</span></a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>Audit Committee</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>
                                                                                                Chairman Seok-woo Jeong<br>
                                                                                                Commissioner Moon-young Lee<br>
                                                                                                Commissioner Hwa-jin Chang
                                                                                            </td>
                                                                                            <td class="align1">Conducts audits on work activities of executives
                                                                                                Reviews integrity and validity of the company’s financial activities
                                                                                                Reviews the accuracy of financial reports as well as validity of accounting practice standards and accounting estimate changes
                                                                                            </td>
                                                                                            <td>-</td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/감사위원회/2023_SKN_Audit Committee Regulations.pdf"><span class="btn-text">Download</span></a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                    </tbody>
                                                                                </table>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="data-display design1 case7 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">Activities</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="accordion-display design2 case1 type2">
                                                                                <!-- 인사위원회 -->
                                                                                <div class="accordion-item">
                                                                                    <div class="accordion-wrap">
                                                                                        <div class="accordion-head">
                                                                                            <button type="button" class="btn" aria-controls="activity-status-1">
                                                                                                <span class="btn-text">Human Resources Committee</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="accordion-body" id="activity-status-1">
                                                                                            <div class="accordion-inner">
                                                                                                <p class="para">In 2019, SK Networks integrated ESG criteria into the Key Performance Indicators (KPIs) applicable to its CEO, establishing it as a standard practice in 2021 for CEO performance evaluation and rewards. The HR Committee under the Board of Directors deliberated on these matters, which were then approved by the Board. In 2023, the Board endorsed the integration of ESG objectives, including carbon emission reduction, a key aspect of SK Group’s ESG objective, fostering a corporate culture centered on health and happiness, and ethical management, into the CEO’s KPIs. Alongside this decision, a 10% weighting was allocated to ESG criteria such as carbon emission reduction during the executive KPI evaluation for 2023. (Since 2022, SK Networks has incorporated carbon emission reduction into the KPIs of all its executives, including subsidiary CEOs).As ESG criteria are integrated into the evaluation of all executives, they are likewise factored into the evaluation of all employees, with rewards linked to the outcomes of the KPI evaluation. By 2025, SK Networks will increase the weighting of ESG criteria in the KPIs for all executives, including subsidiary executives, to at least 10% or higher.
                                                                                                </p>
                                                                                                <p class="comment design1">* Given the nature of SK Electlink’s EV charging business with carbon reduction effects in business operation, ESG items are reflected through other strategic tasks for SK Electlink.</p>
                                                                                                <div class="data-display design2 case5 type2">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <div class="item-wrap">
                                                                                                                <div class="item-head">
                                                                                                                    <p class="item-subject">Goals and roadmap for compensation and performance management based on ESG</p>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                                <table style="min-width: 702px;">
                                                                                                                    <caption>This table provides information on ESG-based management performance evaluation target Roadmap and consists of plans from 2022 to 2023, 2024 to 2025, and 2026.</caption>
                                                                                                                    <colgroup>
                                                                                                                        <col>
                                                                                                                        <col>
                                                                                                                        <col>
                                                                                                                        <col>
                                                                                                                    </colgroup>
                                                                                                                    <thead>
                                                                                                                        <tr>
                                                                                                                            <th scope="col"></th>
                                                                                                                            <th scope="col">2023</th>
                                                                                                                            <th scope="col">2024 ~ 2025</th>
                                                                                                                            <th scope="col">2026 ~</th>
                                                                                                                        </tr>
                                                                                                                    </thead>
                                                                                                                    <tbody>
                                                                                                                        <tr>
                                                                                                                            <td>Target</td>
                                                                                                                            <td>All executives<br> (including representative of subsidiaries)</td>
                                                                                                                            <td>All executives<br> (Expansion to all executives of subsidiaries)</td>
                                                                                                                            <td>All executives<br> (Expansion to all executives of subsidiaries)</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>Reflected specifications</td>
                                                                                                                            <td>10%</td>
                                                                                                                            <td>10% or more</td>
                                                                                                                            <td>10% or more</td>
                                                                                                                        </tr>
                                                                                                                    </tbody>
                                                                                                                </table>
                                                                                                            </div>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                                <div class="data-display design2 case5 type2">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <div class="item-wrap">
                                                                                                                <div class="item-head">
                                                                                                                    <p class="item-subject">2024</p>
                                                                                                                </div>
                                                                                                                <div class="item-util">
                                                                                                                    <div class="submit-form design1 case1 align1">
                                                                                                                        <div class="form-list">
                                                                                                                            <div class="form-item">
                                                                                                                                <div class="form select design1 case1 type1">
                                                                                                                                    <label for="level-sel-personnel" class="blind">Label</label>
                                                                                                                                    <select name="name" id="level-sel-personnel">
                                                                                                                                        <option value="0" selected hidden disabled>Year</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">close</span></div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                                <div class="esg-inform-list esg-personnel-table">
                                                                                                    <jsp:include page="/WEB-INF/views/en/sustainability/governance/inc/human-resources-committee.jsp" flush="true"/>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- //인사위원회 -->
                                                                                <!-- ESG경영위원회 -->
                                                                                <div class="accordion-item">
                                                                                    <div class="accordion-wrap">
                                                                                        <div class="accordion-head">
                                                                                            <button type="button" class="btn" aria-controls="activity-status-2">
                                                                                                <span class="btn-text">Strategy∙ESG Committee</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="accordion-body" id="activity-status-2">
                                                                                            <div class="accordion-inner">
                                                                                                <div class="data-display design2 case5 type2">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <div class="item-wrap">
                                                                                                                <div class="item-head">
                                                                                                                    <p class="item-subject">2024</p>
                                                                                                                </div>
                                                                                                                <div class="item-util">
                                                                                                                    <div class="submit-form design1 case1 align1">
                                                                                                                        <div class="form-list">
                                                                                                                            <div class="form-item">
                                                                                                                                <div class="form select design1 case1 type1">
                                                                                                                                    <label for="level-sel-management" class="blind">Label</label>
                                                                                                                                    <select name="name" id="level-sel-management">
                                                                                                                                        <option value="0" selected hidden disabled>Year</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">close</span></div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                                <div class="esg-inform-list esg-management-table">
                                                                                                    <jsp:include page="/WEB-INF/views/en/sustainability/governance/inc/esg-committee.jsp" flush="true"/>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- //ESG경영위원회 -->
                                                                                <!-- 감사위원회 -->
                                                                                <div class="accordion-item">
                                                                                    <div class="accordion-wrap">
                                                                                        <div class="accordion-head">
                                                                                            <button type="button" class="btn" aria-controls="activity-status-3">
                                                                                                <span class="btn-text">Audit Committee</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="accordion-body" id="activity-status-3">
                                                                                            <div class="accordion-inner">
                                                                                                <div class="data-display design2 case5 type2">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <div class="item-wrap">
                                                                                                                <div class="item-head">
                                                                                                                    <p class="item-subject">2024</p>
                                                                                                                </div>
                                                                                                                <div class="item-util">
                                                                                                                    <div class="submit-form design1 case1 align1">
                                                                                                                        <div class="form-list">
                                                                                                                            <div class="form-item">
                                                                                                                                <div class="form select design1 case1 type1">
                                                                                                                                    <label for="level-sel-audit" class="blind">Label</label>
                                                                                                                                    <select name="name" id="level-sel-audit">
                                                                                                                                        <option value="0" selected hidden disabled>Year</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                        <option value="2020">2020</option>
                                                                                                                                        <option value="2019">2019</option>
                                                                                                                                        <option value="2018">2018</option>
                                                                                                                                        <option value="2017">2017</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">close</span></div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                                <div class="esg-inform-list esg-audit-table">
                                                                                                    <jsp:include page="/WEB-INF/views/en/sustainability/governance/inc/audit-commitee.jsp" flush="true"/>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!-- //감사위원회 -->
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
                                    </div>
                                </div>
                                <!-- //이사회 패널 -->
                                <!-- 기업지배구조 패널 -->
                                <div id="tab-panel2" class="panel-item" role="tabpanel">
                                    <div class="panel-wrap">
                                        <div class="panel-body">
                                            <div class="section design1 type1 download1">
                                                <div class="section-body">
                                                    <div class="board-list design1 case1 type1">
                                                        <div class="board-item">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <p class="board-subject">Corporate Governance Charter</p>
                                                                </div>
                                                                <div class="board-util">
                                                                    <div class="btn-display align2">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/지배구조/기업지배구조헌장/Corporate Governance Charter(E).pdf"><span class="btn-text">Download</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="board-item">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <p class="board-subject">Conformity with the Standard Criteria</p>
                                                                </div>
                                                                <div class="board-util">
                                                                    <div class="btn-display align2">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/en/sustainability/거버넌스/지배구조/모범규준과의 차이/Conformity with the Standard Criteria(E).pdf"><span class="btn-text">Download</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design2 type1 download2">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">General Meeting of Shareholders</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design2 case6 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 71th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2024_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 70th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2023_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 69th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2022_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 68th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2021_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">2020
                                                                                Extraordinary Meeting of Shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2020_Extraordinary Meeting of Shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 67th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2020_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">2019
                                                                                Extraordinary Meeting of Shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2019_Extraordinary Meeting of Shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 66th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2019_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">The 65th
                                                                                Annual General Meeting of shareholders</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/en/sustainability/거버넌스/지배구조/주주총회/2018_Annual General Meeting of shareholders_E.pdf"><span class="btn-text">Download</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- //기업지배구조 패널 -->
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
<script>
    // select 콘텐츠 변경
    function handleSelectChange(selectElement, sectionClass) {
        var selectedValue = selectElement.value;
        var selectedText = selectElement.options[selectElement.selectedIndex].text;

        var itemHead = selectElement.closest('.item-wrap').querySelector('.item-head');
        if (itemHead) {
            var itemSubject = itemHead.querySelector('.item-subject');
            if (itemSubject) {
                itemSubject.textContent = selectedText;
            }
        }

        document.querySelectorAll('.' + sectionClass).forEach(function(section) {
            section.classList.add('blind');
        });

        var sectionToShow = document.querySelector('.' + sectionClass + '.esg-option' + selectedValue);
        if (sectionToShow) {
            sectionToShow.classList.remove('blind');
        }
    }

    function addSelectChangeListener(selectId, sectionClass) {
        var selectElement = document.getElementById(selectId);
        if (selectElement) {
            selectElement.addEventListener('change', function() {
                handleSelectChange(this, sectionClass);
            });
        }
    }

    addSelectChangeListener('level-sel-activity', 'esg-activity');
    addSelectChangeListener('level-sel-personnel', 'esg-personnel');
    addSelectChangeListener('level-sel-management', 'esg-management');
    addSelectChangeListener('level-sel-audit', 'esg-audit');
</script>
</body>

</html>
