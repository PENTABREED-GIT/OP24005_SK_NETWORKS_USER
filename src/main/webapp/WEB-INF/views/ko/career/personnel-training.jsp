<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>인재육성 &lt; Career &lt; SK Networks</title>
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
    <div class="main career talented-person" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Career</span></li>
                        <li class="data-item"><span class="item-text">인재육성</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">인재육성</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">인재육성 페이지</div>
                    <div class="content-body">
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">SK네트웍스의 인재육성 영역</h4>
                                        <div class="section-summary">
                                            <p class="para">SK네트웍스는 내부인재가 SK Values를 기반으로 Leadership, 직무 역량, Globality 등의 영역에서 역량을 강화할 수 있도록 체계적인 육성 프로그램을 제공합니다. 또한 매년 주기적으로 인재 육성 전략 및 관련 핵심 이슈를 CEO를 포함한 경영층에게 보고하며 경영층의 책임을 강화하고 있습니다.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 type1 stock">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">AI Company</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list">
                                        <div class="post-wrap">
                                            <div class="post-item">
                                                <div class="post-figure">
                                                    <img src="/assets/images/career/stock-com.png" alt="AI Company 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                    <img src="/assets/images/career/stock-com-mo.png" alt="AI Company 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only scroll" style="min-width: 600px;">
                                                </div>
                                            </div>
                                            <div class="post-body blind">
                                                <strong>성과를 창출하는 전문가 조직 주요직무(커리어)</strong>
                                                <ul>
                                                    <li>사업 Operation</li>
                                                    <li>기능/Tech 전문가</li>
                                                    <li>투자 전문가</li>
                                                </ul>
                                                <ul>
                                                    <li>주요역량</li>
                                                    <li>
                                                        <ul>
                                                            <li>사업수행</li>
                                                            <li>사업개발</li>
                                                            <li>investment</li>
                                                            <li>Mgmt (전략/마케팅/재무 /HR/법무)</li>
                                                            <li>핵심역량
                                                                <ul>
                                                                    <li>AI</li>
                                                                    <li>Global</li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                                <ul>
                                                    <li>주요 과정</li>
                                                    <li>
                                                        <ul>
                                                            <li>mySUNI College별 커리큘럼
                                                                <ul>
                                                                    <li>SK네트웍스 자체과정</li>
                                                                    <li>AI 역량 육성 체계</li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 type1 map">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">구성원 역량개발 Road Map</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list">
                                        <div class="post-wrap">
                                            <div class="post-item">
                                                <div class="postfigure">
                                                    <img src="/assets/images/career/road-map.svg" alt="구성원 역량개발 Road Map 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                    <img src="/assets/images/career/road-map-mo.png" alt="구성원 역량개발 Road Map 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only" style="min-width: 901px;">
                                                </div>
                                            </div>
                                            <div class="post-body blind">
                                                <ul>
                                                    <li>2022년에서 2023년 <em>직무/커리어 중심의 Re-skilling &amp; Up-skilling</em> 기술/환경의 혁신 가속화에 따른 Skill Gap현상 극복</li>
                                                    <li>2024년에서 2026년 <em>핵심역량(AI, Global등) 고도화</em> 각 영역별 전문가 육성</li>
                                                    <li>2027년 이후 <em>사업-기능-투자 직무의 선순환 구조</em> 사업형 투자회사의 특성을 고려한 직무 순환 활성화</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">AI 역량 Roadmap</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 763px;" class="col-w-1">
                                            <caption>이 표는 AI 역량 Roadmap 정보를 제공하며 ~ 2023년 (Data 활용 역량 체계), 2024년, 2025년 부터의 계획으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                            </colgroup>
                                            <thead>
                                            <tr>
                                                <th scope="col">~ ‘23년 (Data 활용 역량 체계)</th>
                                                <th scope="col">‘24년</th>
                                                <th scope="col">‘25년 ~</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Lv.1 414명, Lv.2 162명</td>
                                                <td>Lv.1 전 구성원 50%, Lv.2 15%</td>
                                                <td>Lv.1 전 구성원, Lv.2 30% 이상</td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="para">
                                        SK네트웍스는 구성원의 업무 역량 개발을 위해 교육 과정을 이론과 실습을 적절한 비율로 구성, 구성원들이 보다 교육 내용을 효과적으로 내재화 하고 실제 업무에 적용할 수 있도록 기획, 운영하고 있으며, 교육 이후에는 구성원 대상 만족도 조사를 실시하고 있습니다.<br>
                                        <em class="accent color7">(’23년 일잘러 교육 총 149명(누적) 참여, 평균 교육 만족도 4.88점(5점 만점 기준)</em>
                                        <br>
                                        지속적으로 프로그램에 대한 만족도와 효과성을 측정하고, 구성원들의 의견을 적극 반영하여 교육 프로그램의 개선을 이어나가고자 합니다.
                                    </p>
                                    <div class="btn-display align1">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/career/인재육성/SK네트웍스의 구성원 역량개발 방향성 및 성과관리 체계.pdf"><span class="btn-text">구성원 역량개발 방향성 다운로드</span></a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
    </footer>
    <!-- //page-foot -->
</div>
</body>

</html>
