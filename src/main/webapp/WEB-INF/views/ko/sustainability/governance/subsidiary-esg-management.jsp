<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>자회사 · 손자회사 ESG관리 &lt; 거버넌스 &lt; Sustainability &lt; SK Networks</title>
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
    <div class="main esg info-protection" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">거버넌스</span></li>
                            <li class="data-item"><span class="item-text">자회사ㆍ손자회사 ESG관리</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">투명경영으로<br> 미래가치를 창출합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">자회사ㆍ손자회사 ESG관리</h3>
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
                    <div class="content-head">자회사ㆍ손자회사 ESG관리 페이지</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case1 type1 direction">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">SK네트웍스는 5개 자회사와 2개 손자회사를 상장여부, 보유지분 비중, 성장 단계 등을 고려하여 3개 그룹으로 분류하여, 그룹별 ESG 관리 방향성 및 목표를 수립하였습니다. 각 사의 ESG 지표별 단기/중기 과제 정의 및 실행을 통해 단계적으로 관리 수준을 향상시킬 예정입니다.</p>
                                    <div class="data-display design1 case9 type7">
                                        <div class="data-list">
                                            <div class="data-item bg-shadow-layout case2">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-subject">자회사/손자회사 ESG 관리 기준 및 방향</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-display design3 case3 type3">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <div class="data-subject">
                                                                                <p class="num"></p>
                                                                                <p class="tit">상장사/비상장사</p>
                                                                            </div>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <p class="para">상장사는 관리지표를 모회사와 유사하게 광범위하게 선정하여, 다양한 ESG 항목에 대해 수준 제고</p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <div class="data-subject">
                                                                                <p class="num"></p>
                                                                                <p class="tit">보유 지분 비중(80% 이상)</p>
                                                                            </div>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <p class="para">비상장사 중 보유지분 80% 이상인 경우, 상장사와 유사한 수준으로 관리</p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <div class="data-subject">
                                                                                <p class="num"></p>
                                                                                <p class="tit">성장 단계 (Spin-off 기간 연계)</p>
                                                                            </div>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <p class="para">신생 자회사(Spin-off 2년 이하)의 경우, 최소한의 필수 ESG 항목을 선정하여 우선 관리하고 산업 특성/성장 수준을 고려하여 관리 범위 단계적 강화</p>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="data-wrap">
                                                                        <div class="data-head">
                                                                            <div class="data-subject">
                                                                                <p class="num"></p>
                                                                                <p class="tit">자회사/손자회사</p>
                                                                            </div>
                                                                        </div>
                                                                        <div class="data-body">
                                                                            <p class="para">자회사의 ESG 방향 및 목표 수준에 Align하여 자회사 자체적으로 손자회사의 ESG 관리</p>
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
                                    <p class="para">상장사 및 비상장 자회사(보유지분 80% 이상 &amp; 성장 단계)부터 현황 점검 및 중/단기 과제 수행, 지속가능보고서 발간 등을 통해 ESG 수준을 제고하고, 궁극적으로는 2026년까지 모든 자회사/손자회사가 Global 업계 內 Top-tier 수준에 도달하는 것을 목표로 합니다. 또한 SK네트웍스는 실행력 강화를 위하여, SV밋업(meet up)에 전 BU(자회사/손자회사 포함)의 임원/팀장/실무자가 모여 각 BU별 ESG 추진 현황을 공유하고 논의하며 상호 학습하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Roadmap</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="data-display roadmap case1 type1">
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-head-area">
                                                            <em class="data-subject">2023</em>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="bullet-display design1 case2 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">자/손회사 ESG 관리정책 수립 (2022년)</li>
                                                                <li class="data-item">주요 자회사 ESG 현황 점검 및 중단기 과제 수립, 단기 과제 실행</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-head-area">
                                                            <em class="data-subject">2024 ~ 2025</em>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">주요 자회사 정기적 ESG 수준 점검 및 중기 과제 실행을 통해 SK네트웍스와 동일한 수준의 ESG 관리 성과 달성(2025년)</li>
                                                                <li class="data-item">자/손회사 그룹별 ESG 수준에 따른 중/단/장기 과제 수행</li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <div class="data-head-area">
                                                            <em class="data-subject">2026 ~</em>
                                                        </div>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="bullet-display design1 case1 type1">
                                                            <ul class="data-list">
                                                                <li class="data-item">모든 자/손회사 Global Top-tier 수준 도달(현재 7개사 기준)</li>
                                                                <li class="data-item">자/손회사 ESG 관리정책(핵심지표) 고도화(e.g. 사별 자체 지표 선정 등)</li>
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
                        <div class="section design1 case2 type1 performance">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">ESG 관리 실행 및 성과</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="bullet-display design1 case1 type6">
                                        <ul class="data-list">
                                            <li class="data-item">2020년부터 전 BU(자회사 포함)가 참여하는 SV밋업 시행을 통해 자/손회사 ESG 현황 파악 및 관리</li>
                                            <li class="data-item">SK네트웍스 및 자/손회사 총 8개사 Net Zero 2040 선언(2021년), EV100 가입(2021년), SBTi 가입(2022년 9월) 및 목표 승인 (2023년 8월)</li>
                                            <li class="data-item">
                                                SK네트웍스 및 자회사 지속가능경영보고서 발간<br>
                                                - SK네트웍스 지속가능경영보고서 내 SK매직, SK네트웍스서비스 등 주요 성과 공표
                                            </li>
                                            <li class="data-item">
                                                주요 자회사 2022년 성과 점검 및 공시 진행<br>
                                                - SK매직, SK네트웍스서비스 등 3개 자회사의 ESG 우선 관리 지표 정책/목표(Roadmap)/성과를 각 사 홈페이지 내 공시<br>
                                                (우선 관리 지표 : 인권선언 및 정책, 구성원 안전, 기업데이터 및 정보보호, 반부패 정책, 구성원 반부패 관련 교육 정책)
                                            </li>
                                        </ul>
                                    </div>
                                    <p class="comment design1">* SK네트웍스서비스 : 우선 관리 지표 5개 공시 완료, SK매직 : 우선 관리 지표 4개 공시 완료</p>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>