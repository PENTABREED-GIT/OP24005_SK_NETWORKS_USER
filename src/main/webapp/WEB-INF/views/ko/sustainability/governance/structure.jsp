<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>지배구조 &lt; 거버넌스 &lt; Sustainability &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
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

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main esg governance-structure" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">거버넌스</span></li>
                            <li class="data-item"><span class="item-text">지배구조</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">투명경영으로<br> 미래가치를 창출합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">지배구조</h3>
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
                    <div class="content-head">지배구조 페이지</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="tab-display design1 case1 type1">
                            <div class="swiper tab-wrap">
                                <ul class="swiper-wrapper tab-list" role="tablist">
                                    <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                        <button role="tab" class="tab-text">이사회</button>
                                    </li>
                                    <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                        <button role="tab" class="tab-text">기업지배구조</button>
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
                                                            SK네트웍스는 이사회 중심의 투명경영을 실천하고 있으며, 이사진의 업무수행을 지원하기 위해 이사회사무국을 설치, 운영하는 등 선진화된 지배구조 체계를 확립했습니다. 이사회는 회사의 중/장기 전략과 연간 경영계획을 수립하고 평가하며, 중요 개별 안건에 대한 심의를 비롯해 기업 가치 증진을 위한 주요 의사결정을 담당합니다. 또한, 회사의 투자 계획, 내부거래 등 이해관계가 상충하는 이슈와 보상에 대한 심의, 승인과 함께 리스크 관리 전반에 대한 의사결정을 진행합니다. 이와 함께, 장기적인 기업가치를 보호하기 위해 회사의 의사결정이 이해관계자에게 미칠 수 있는 긍정적, 부정적 영향을 독립적으로 검토합니다.<br class="pc-only">
                                                            SK네트웍스는 이사회 책임경영을 강화하여 고객과 투자자를 위한 투명경영으로 더욱 건강한 미래가치를 창출해 나가겠습니다.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case1 type1">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">이사회 전문성/다양성 확대</h4>
                                                            <p class="section-summary">
                                                                SK네트웍스는 법률, 재무/회계, 마케팅 등 다양한 분야의 전문성과 ESG 역량을 보유한 이사를 선임하였으며, 세미나, 외부 강연 등의 교육 프로그램을 제공하여 전문성을 지속 강화하고 있습니다. 또한 사외이사 신규 선임 시 국적, 성별, 나이 등을 함께 고려하여 다양성을 확보해 나가고자 합니다. 향후에도 다양성을 강화하고 회사의 중장기 전략 수립/실행에 필요한 전문성을 보유한 사외이사를 지속적으로 확대할 예정입니다.
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="t-display design1 case1 type1 align3 scroll">
                                                            <table style="min-width: 470px;" class="col-w-1">
                                                                <caption>이 표는 이사회 전문성,다양성 확대를 위한 정보를 제공하며 2023년까지, 2024년에서 2026년, 2027년 부터의 계획으로 구성되어 있습니다.</caption>
                                                                <colgroup>
                                                                    <col class="col1">
                                                                    <col class="col2">
                                                                    <col class="col3">
                                                                    <col class="col4">
                                                                </colgroup>
                                                                <thead>
                                                                    <tr>
                                                                        <th scope="col"></th>
                                                                        <th scope="col">~ 2023</th>
                                                                        <th scope="col">2024 ~ 2026</th>
                                                                        <th scope="col">2027 ~</th>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <tr>
                                                                        <td>다양성</td>
                                                                        <td>1명<sup>¹⁾</sup></td>
                                                                        <td>1명 이상</td>
                                                                        <td>2명 이상</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td>전문성<sup>²⁾</sup></td>
                                                                        <td>2명</td>
                                                                        <td>좌동</td>
                                                                        <td>2명 이상</td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <p class="comment design1">
                                                            1) 여성 사외이사 선임 ('21년 3월)<br>
                                                            2) 환경/사회/지배구조, 투자, 산업/Tech 등
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case2 type1">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">이사회 독립성 강화</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <p class="para">
                                                            2024년 3월 기준 이사 총 7인 중 4인(전체 인원 대비 57.1%)을 사외이사로 구성하고 있고, 이사회 의장을 대표이사와 분리하여 사외이사로 선임하고 있습니다. 더불어, 이사회 산하 전략∙ESG위원회, 인사위원회, 감사위원회의 각 위원장을 사외이사로 구성하여 회사의 주요 경영활동을 철저하게 검토, 견제가 가능하도록 함으로써 고객과 투자자를 위한 투명경영으로 더욱 건강한 미래가치를 창출하고 있습니다. 또한 SK네트웍스는 이사회의 독립성 유지를 위하여 모든 사외이사가 SK네트웍스 및 계열회사와 특수관계에 있지 않음을 확인하고 있고, 이사회의 사전 승인 없이는 사외이사가 자기 또는 제3자의 계산으로 SK네트웍스와 거래하지 못하도록 하고 있습니다.
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design5 case4 type1 structure">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <h4 class="section-name">이사회 구성</h4>
                                                        <div class="section-util">
                                                            <div class="btn-display">
                                                                <div class="btn-area">
                                                                    <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/이사회 규정/SKN_이사회 규정.pdf"><span class="btn-text">이사회 규정 다운로드</span></a>
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
                                                                            <em class="data-subject">사내이사</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case1">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-01.png" alt="이호정 대표이사 사장 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">대표이사 사장</p>
                                                                                                    <p class="name">이호정</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
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
                                                                                                <img src="/assets/images/sustainability/esg-internal-02.png" alt="최성환 사내이사 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">사내이사</p>
                                                                                                    <p class="name">최성환</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2022.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
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
                                                                            <em class="data-subject">기타비상무이사</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case1">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-03.png" alt="이성형 기타비상무이사 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">기타비상무이사</p>
                                                                                                    <p class="name">이성형</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
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
                                                                            <em class="data-subject">사외이사</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="post-list csr-governance case2">
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-04.png" alt="채수일 이사회 의장 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">이사회 의장</p>
                                                                                                    <p class="name">채수일</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2023.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">프로필</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">前 보스턴컨설팅그룹 아ㆍ태지역 금융부문 총괄대표</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-05.png" alt="정석우 사외이사 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">사외이사</p>
                                                                                                    <p class="name">정석우</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2022.03<br>(최초선임 2019.03)</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">프로필</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">現 고려대학교 회계학과 교수</li>
                                                                                                <li class="data-item">KCGS 기업지배 구조 위원회 위원</li>
                                                                                                <li class="data-item">금융위원회 증권선물위원회 비상임위원</li>
                                                                                                <li class="data-item">한국회계학회 학회장</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-06.png" alt="이문영 사외이사 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">사외이사</p>
                                                                                                    <p class="name">이문영</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2024.03<br>(최초선임 2021.03)</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">프로필</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">現 덕성여자대학교 회계학과 부교수</li>
                                                                                                <li class="data-item">금융위원회 감리위원</li>
                                                                                                <li class="data-item">도봉구 재정계획심의위원</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="post-item">
                                                                                    <div class="post-wrap">
                                                                                        <div class="post-inform">
                                                                                            <div class="post-figure">
                                                                                                <img src="/assets/images/sustainability/esg-internal-07.png" alt="장화진 사외이사 사진">
                                                                                            </div>
                                                                                            <div class="post-body">
                                                                                                <div class="head">
                                                                                                    <p class="caption">사외이사</p>
                                                                                                    <p class="name">장화진</p>
                                                                                                </div>
                                                                                                <div class="body">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">선임일</span>
                                                                                                            <span class="data">2024.03</span>
                                                                                                        </li>
                                                                                                        <li class="data-item">
                                                                                                            <span class="title">임기</span>
                                                                                                            <span class="data">3년</span>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="post-profile">
                                                                                            <p class="caption">프로필</p>
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">現 컨플루언트코리아 사장</li>
                                                                                                <li class="data-item">구글클라우드코리아 사장</li>
                                                                                                <li class="data-item">마이크로소프트 아태지역 전략 사장</li>
                                                                                                <li class="data-item">한국IBM 대표이사 사장</li>
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
                                                            <h4 class="section-name">이사회 활동내역</h4>
                                                            <p class="section-summary">
                                                                SK네트웍스는 이사회 내 ESG Insight를 강화하고 ESG 경영 수준을 높이기 위해 ESG Agenda 관련 보고/논의를 점진적으로 확대하여 질적/양적 수준을 강화해 나갈 계획입니다.
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design1 case2 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">이사회 내 ESG 논의 확대 목표 Roadmap</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                <table style="min-width: 805px;" class="col-w-2">
                                                                                    <caption>이 표는 이사회 내 ESG 논의 확대 목표 정보를 제공하며 구분(안건,주기), 2023년, 2024년에서 2025년, 2026년 부터의 계획으로 구성되어 있습니다.</caption>
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
                                                                                            <td>안건</td>
                                                                                            <td>그룹 ESG 핵심지표 연간 성과 보고 등</td>
                                                                                            <td>E/S/G 영역별 보고/논의</td>
                                                                                            <td>영역별 보고ㆍ논의 심화</td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>주기</td>
                                                                                            <td>연 3회</td>
                                                                                            <td>연 2회 이상</td>
                                                                                            <td>연 2회 이상</td>
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
                                                                                            <label for="level-sel-activity" class="blind">년도 선택</label>
                                                                                            <select name="name" id="level-sel-activity">
                                                                                                <option value="0" selected hidden disabled>년도 선택</option>
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
                                                                                            <div class="arrow"><span class="blind">닫힘</span></div>
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
                                                            <jsp:include page="/WEB-INF/views/ko/sustainability/governance/inc/directors-meeting-history.jsp" flush="true"/>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="section design1 case4 type1 committee">
                                                <div class="section-wrap">
                                                    <div class="section-head">
                                                        <div class="section-subject">
                                                            <h4 class="section-name">이사회 내 위원회</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design1 case2 type1">
                                                            <div class="data-list">
                                                                <div class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <em class="data-subject">구성현황</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                <table class="esg-committee-table">
                                                                                    <caption>이 표는 이사회 내 위원회 구성현황 정보를 제공하며 명칭, 구성(사내이사,기타비상무이사,사외이사), 역할, 규정 다운로드로 구성되어 있습니다.</caption>
                                                                                    <colgroup>
                                                                                        <col style="width: 15%;">
                                                                                        <col style="width: 17%;">
                                                                                        <col style="width: 12.58%;">
                                                                                        <col style="width: 12%;">
                                                                                        <col style="width: auto;">
                                                                                        <col>
                                                                                    </colgroup>
                                                                                    <thead>
                                                                                        <tr>
                                                                                            <th scope="col" rowspan="2">명칭</th>
                                                                                            <th scope="colgroup" colspan="3">구성</th>
                                                                                            <th scope="col" rowspan="2">역할</th>
                                                                                            <th scope="col" rowspan="2">규정 다운로드</th>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <th scope="col">사내이사</th>
                                                                                            <th scope="col">기타비상무이사</th>
                                                                                            <th scope="col">사외이사</th>
                                                                                        </tr>
                                                                                    </thead>
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td>인사위원회</td>
                                                                                            <td></td>
                                                                                            <td>이성형 위원</td>
                                                                                            <td>정석우 위원장<br>장화진 위원</td>
                                                                                            <td class="align1">사외이사 후보 추천 Process 수립, 후보 Pool 확보, 사외이사 후보 추천, CEO 및 주요 경영층에 대한 인사/평가/보상 심의 등
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/인사위원회/SKN_인사위원회 규정.pdf"><span class="btn-text">다운로드</span></a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>전략∙ESG위원회</td>
                                                                                            <td>이호정 위원(대표이사)<br>최성환 위원</td>
                                                                                            <td>이성형 위원</td>
                                                                                            <td>
                                                                                                채수일 위원장<br>
                                                                                                정석우 위원<br>
                                                                                                이문영 위원<br>
                                                                                                장화진 위원
                                                                                            </td>
                                                                                            <td class="align1">지속가능한 기업가치 제고 측면에서 중장기전략, 경영계획 등 미래성장전략 공유 및 수립
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/esg 위원회/전략·ESG위원회 규정.pdf"><span class="btn-text">다운로드</span></a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr>
                                                                                            <td>감사위원회</td>
                                                                                            <td>-</td>
                                                                                            <td>-</td>
                                                                                            <td>
                                                                                                정석우 위원장<br>
                                                                                                이문영 위원<br>
                                                                                                장화진 위원
                                                                                            </td>
                                                                                            <td class="align1">경영진의 업무활동에 대한 감사, 기업재무활동에 대한 건전성과 타당성 검토, 재무보고의 정확성 및 회계처리 기준과 회계추정변경의 타당성 검토
                                                                                            </td>
                                                                                            <td>
                                                                                                <div class="btn-display design1 case3 align3">
                                                                                                    <div class="btn-area">
                                                                                                        <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/감사위원회/SKN_감사위원회 규정.pdf"><span class="btn-text">다운로드</span></a>
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
                                                                            <em class="data-subject">활동현황</em>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <div class="accordion-display design2 case1 type2">
                                                                                <!-- 인사위원회 -->
                                                                                <div class="accordion-item">
                                                                                    <div class="accordion-wrap">
                                                                                        <div class="accordion-head">
                                                                                            <button type="button" class="btn" title="열기" aria-controls="activity-status-1">
                                                                                                <span class="btn-text">인사위원회</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="accordion-body" id="activity-status-1">
                                                                                            <div class="accordion-inner">
                                                                                                <p class="para">SK네트웍스는 지난 2019년부터 대표이사의 KPI에 ESG 항목을 포함하여 평가하고 있으며, 2021년부터 대표이사의 평가 및 보상은 이사회 산하 인사위원회의 심의와 이사회 승인을 통해 결정하고 있습니다. 지난 2023년도 대표이사 KPI에는 탄소배출량 감축, 그룹 ESG 핵심지표, 건강하고 행복한 기업문화 구축, 윤리경영 등의 ESG 항목을 포함하여 이사회 승인을 거쳐 반영하였습니다. SK네트웍스는 2022년도부터 본체의 모든 임원과 자회사 대표의 KPI에 ESG 항목인 ‘탄소배출량 감축’을 반영하였고, 지난 2023년 임원 KPI* 평가에도 탄소 배출량 감축을 포함한 ESG 항목을 10% 비중으로 반영하였습니다. 이를 통해 모든 임원 단위 조직의 평가에 ESG 항목이 반영되고 그 결과에 따른 보상을 적용함으로써, 간접적으로 전 구성원의 평가에 ESG 항목이 반영될 수 있도록 하였습니다. 여기서 더 나아가 2025년까지 자회사 임원을 포함한 전 임원 KPI에 ESG 항목을 10% 이상 반영하는 것을 목표로 하고 있습니다.</p>
                                                                                                <p class="comment design1">* SK일렉링크는 전기차 충전 사업의 특성 상 사업운영 시 탄소배출량 감축 효과가 있는 점을 고려, 다른 전략 과제를 통해 ESG항목을 반영함</p>
                                                                                                <div class="data-display design2 case5 type2">
                                                                                                    <ul class="data-list">
                                                                                                        <li class="data-item">
                                                                                                            <div class="item-wrap">
                                                                                                                <div class="item-head">
                                                                                                                    <p class="item-subject">ESG 기반 경영층 성과 평가/보상 목표 Roadmap</p>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                                                                                <table style="min-width: 702px;">
                                                                                                                    <caption>이 표는 ESG 기반 경영층 성과 평가 보상 목표 Roadmap 정보를 제공하며 2023년, 2024년에서 2025년, 2026년 부터의 계획으로 구성되어 있습니다.</caption>
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
                                                                                                                            <td>적용 대상</td>
                                                                                                                            <td>전 임원<br> (자회사 대표 포함)</td>
                                                                                                                            <td>전 임원<br> (자회사 전 임원으로 확대)</td>
                                                                                                                            <td>좌동</td>
                                                                                                                        </tr>
                                                                                                                        <tr>
                                                                                                                            <td>반영 비중</td>
                                                                                                                            <td>10%</td>
                                                                                                                            <td>10% 이상</td>
                                                                                                                            <td>30% 이상</td>
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
                                                                                                                                    <label for="level-sel-personnel" class="blind">년도 선택</label>
                                                                                                                                    <select name="name" id="level-sel-personnel">
                                                                                                                                        <option value="0" selected hidden disabled>년도 선택</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">닫힘</span></div>
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
                                                                                                    <jsp:include page="/WEB-INF/views/ko/sustainability/governance/inc/human-resources-committee.jsp" flush="true"/>
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
                                                                                            <button type="button" class="btn" title="열기" aria-controls="activity-status-2">
                                                                                                <span class="btn-text">전략∙ESG위원회</span>
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
                                                                                                                                    <label for="level-sel-management" class="blind">년도 선택</label>
                                                                                                                                    <select name="name" id="level-sel-management">
                                                                                                                                        <option value="0" selected hidden disabled>년도 선택</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">닫힘</span></div>
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
                                                                                                    <jsp:include page="/WEB-INF/views/ko/sustainability/governance/inc/esg-committee.jsp" flush="true"/>
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
                                                                                            <button type="button" class="btn" title="열기" aria-controls="activity-status-3">
                                                                                                <span class="btn-text">감사위원회</span>
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
                                                                                                                                    <label for="level-sel-audit" class="blind">년도 선택</label>
                                                                                                                                    <select name="name" id="level-sel-audit">
                                                                                                                                        <option value="0" selected hidden disabled>년도 선택</option>
                                                                                                                                        <option value="2024">2024</option>
                                                                                                                                        <option value="2023">2023</option>
                                                                                                                                        <option value="2022">2022</option>
                                                                                                                                        <option value="2021">2021</option>
                                                                                                                                    </select>
                                                                                                                                    <div class="arrow"><span class="blind">닫힘</span></div>
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
                                                                                                    <jsp:include page="/WEB-INF/views/ko/sustainability/governance/inc/audit-commitee.jsp" flush="true"/>
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
                                                                    <p class="board-subject">기업지배구조헌장</p>
                                                                </div>
                                                                <div class="board-util">
                                                                    <div class="btn-display align2">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/기업지배구조헌장/Corporate Governance Charter(K).pdf"><span class="btn-text">다운로드</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="board-item">
                                                            <div class="board-wrap">
                                                                <div class="board-head">
                                                                    <p class="board-subject">모범규준과의 차이</p>
                                                                </div>
                                                                <div class="board-util">
                                                                    <div class="btn-display align2">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/모범규준과의 차이/Conformity with the Standard Criteria(K).pdf"><span class="btn-text">다운로드</span></a>
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
                                                            <h4 class="section-name">주주총회</h4>
                                                        </div>
                                                    </div>
                                                    <div class="section-body">
                                                        <div class="data-display design2 case6 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제71기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2024_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제70기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2023_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제69기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2022_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제68기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2021_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">2020년 임시주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2020_Extraordinary Meeting of Shareholders _K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제67기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2020_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">2019년 임시주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2019_Extraordinary Meeting of Shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제66기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2019_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head">
                                                                            <p class="item-date">제65기 정기주주총회</p>
                                                                        </div>
                                                                        <div class="item-util">
                                                                            <div class="btn-display design1 case3 align1">
                                                                                <div class="btn-area">
                                                                                    <a class="btn design3 case2 type3 color5 ar-icon-download" href="/upload/public/data/ko/sustainability/거버넌스/지배구조/주주총회/2018_Annual General Meeting of shareholders_K.pdf"><span class="btn-text">다운로드</span></a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
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
