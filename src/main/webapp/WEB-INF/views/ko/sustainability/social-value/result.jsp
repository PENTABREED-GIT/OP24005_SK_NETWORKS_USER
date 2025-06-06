<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>사회적 가치 성과 &lt; 사회적 가치 &lt; Sustainability &lt; SK Networks</title>
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
    <div class="main esg social-val" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">사회적 가치</span></li>
                            <li class="data-item"><span class="item-text">사회적 가치 성과</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">‘같이’ 만드는<br class="mo-only"> ‘가치’ 혁신으로<br>
                            사회적 가치를<br class="mo-only"> 창출하겠습니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">사회적 가치 성과</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-social-values.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">사회적 가치 성과</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case4 type1 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">ESG 등급</h4>
                                    </div>
                                </div>
                                <div class="section-body">
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
                                                                        <label for="level-sel-rate" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-rate">
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
                                    <div class="esg-inform-list">
                                        <!-- ESG 등급 2024 -->
                                        <div class="esg-inform esg-rate esg-option2024">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case1">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-kcgs-aplus-2024.jpg" alt="2024 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A플러스등급">
                                                                    </div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-env-a-2024.jpg" alt="2024 EVIRONMENTAL KCGS A등급">
                                                                    </div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-social-aplus-2024.jpg" alt="2024 SOCIAL KCGS A플러스등급">
                                                                    </div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-gov-aplus-2024.jpg" alt="2024 GOVERNANCE KCGS A플러스등급">
                                                                    </div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case2 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">MSCI</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-msci-BBB.jpg" alt="BBB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">CDP</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-cdp-A-list-2024.jpg" alt="2023 CDP A LIST 2024 CLIMATE 인증마크">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--<div class="borad-item">--%>
                                                    <%--    <div class="board-head">--%>
                                                    <%--        <span class="board-subject">S&amp;P Global</span>--%>
                                                    <%--    </div>--%>
                                                    <%--    <div class="board-body">--%>
                                                    <%--        <div class="data-list emblum3">--%>
                                                    <%--            <div class="data-item">--%>
                                                    <%--                <div class="figure">--%>
                                                    <%--                    <img src="/assets/images/sustainability/esg-img-sp-global.jpg" alt="S&P Global 인증마크 Sustainability Yearbook Member">--%>
                                                    <%--                </div>--%>
                                                    <%--            </div>--%>
                                                    <%--        </div>--%>
                                                    <%--    </div>--%>
                                                    <%--</div>--%>
                                                </div>
                                                <!-- <p class="comment design1">* 2023년 평가 등급, 2024년 결과 대기 중</p> -->
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2024 -->
                                        <!-- ESG 등급 2023 -->
                                        <div class="esg-inform esg-rate esg-option2023 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case1">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-kcgs-a-2023.jpg" alt="2023 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A등급">
                                                                    </div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-env-a-2023.jpg" alt="2023 EVIRONMENTAL KCGS A등급">
                                                                    </div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-social-aplus-2023.jpg" alt="2023 SOCIAL KCGS A플러스등급">
                                                                    </div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-gov-a-2023.jpg" alt="2023 GOVERNANCE KCGS A등급">
                                                                    </div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- <p class="comment design1">* 2021년 KCGS 2차 등급 조정 결과에 따라 종합등급 및 지배구조 등급 하락 (A+ -> A)</p> -->
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case2 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">MSCI</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-msci-A.jpg" alt="A">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">CDP</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-cdp-B-Bdot.jpg" alt="B*">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">S&amp;P Global</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum3">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-img-2023.jpg" alt="SK Networks Company Limited Trading Companies & Distributors S&P Global ESG Score 2022 55*/100 As of 02, 17, 2023 Scores are industry specific. Learn more at spglobal.com/esg/scores S&P Global Sustainable1">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2023 -->
                                        <!-- ESG 등급 2022 -->
                                        <div class="esg-inform esg-rate esg-option2022 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -819px;"><span class="blind">2022 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -819px"><span class="blind">2022 EVIRONMENTAL KCGS A등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -819px"><span class="blind">2022 SOCIAL KCGS A플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -819px"><span class="blind">2022 GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- <p class="comment design1">* 2021년 KCGS 2차 등급 조정 결과에 따라 종합등급 및 지배구조 등급 하락 (A+ -> A)</p> -->
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case2 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">MSCI</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-msci-BBB.jpg" alt="BBB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">CDP</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-cdp-B.jpg" alt="B">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">S&P Global</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum3">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-img-2022.jpg" alt="SK Networks Company Limited Trading Companies & Distributors S&P Global ESG Score 2022 55/100 As of 02, 17, 2023 Scores are industry specific. Learn more at spglobal.com/esg/scores S&P Global Sustainable1">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2022 -->
                                        <!-- ESG 등급 2021 -->
                                        <div class="esg-inform esg-rate esg-option2021 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -702px"><span class="blind">2021 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -702px"><span class="blind">2021 EVIRONMENTAL KCGS B플러스등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -702px"><span class="blind">2021 SOCIAL KCGS A플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -702px"><span class="blind">2021 GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* 2021년 KCGS 2차 등급 조정 결과에 따라 종합등급 및 지배구조 등급 하락 (A+ -> A)</p>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case2 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">MSCI</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-msci-BBB.jpg" alt="BBB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">서스틴베스트</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-sb-BB.jpg" alt="BB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">S&amp;P Global</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-SPG-42.jpg" alt="42">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2021 -->
                                        <!-- ESG 등급 2020 -->
                                        <div class="esg-inform esg-rate esg-option2020 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -585px"><span class="blind">2020 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -585px"><span class="blind">2020 EVIRONMENTAL KCGS B플러스등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -585px"><span class="blind">2020 SOCIAL KCGS A플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -585px"><span class="blind">2020 GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- <p class="comment design1">* 2021년 KCGS 2차 등급 조정 결과에 따라 종합등급 및 지배구조 등급 하락 (A+ -> A)</p> -->
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case2 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">MSCI</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-msci-BBB.jpg" alt="BBB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">서스틴베스트</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-sb-BB.jpg" alt="BB">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">DJSI ESG Indices</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum2">
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-SPG-29.jpg" alt="29">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2020 -->
                                        <!-- ESG 등급 2019 -->
                                        <div class="esg-inform esg-rate esg-option2019 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -468px"><span class="blind">2019 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A플러스등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -468px"><span class="blind">2019 EVIRONMENTAL KCGS B플러스등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -468px"><span class="blind">2019 SOCIAL KCGS A플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -468px"><span class="blind">2019 GOVERNANCE KCGS A플러스등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* 한국기업지배구조원 선정 2019 ESG 부문 최우수 기업 수상</p>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2019 -->
                                        <!-- ESG 등급 2018 -->
                                        <div class="esg-inform esg-rate esg-option2018 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -351px"><span class="blind">2018 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -351px"><span class="blind">2018 EVIRONMENTAL KCGS B플러스등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -351px"><span class="blind">2018 SOCIAL KCGS A플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -351px"><span class="blind">2018 GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2018 -->
                                        <!-- ESG 등급 2017 -->
                                        <div class="esg-inform esg-rate esg-option2017 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -234px"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -234px"><span class="blind">2017 EVIRONMENTAL KCGS B등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -234px"><span class="blind">2017 SOCIAL KCGS B플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -234px"><span class="blind">2017 GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2017 -->
                                        <!-- ESG 등급 2016 -->
                                        <div class="esg-inform esg-rate esg-option2016 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 -117px"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -117px"><span class="blind">2017 EVIRONMENTAL KCGS C등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -117px"><span class="blind">2017 SOCIAL KCGS B플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -117px"><span class="blind">2017 GOVERNANCE KCGS A등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2016 -->
                                        <!-- ESG 등급 2015 -->
                                        <div class="esg-inform esg-rate esg-option2015 blind">
                                            <div class="board-display">
                                                <div class="board-list esg-layout case1 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <span class="board-subject">KCGS</span>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="data-list emblum1 case2">
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: 0 0"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">종합등급</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px 0"><span class="blind">2017 EVIRONMENTAL KCGS C등급</span></div>
                                                                    <p class="para">환경</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px 0"><span class="blind">2017 SOCIAL KCGS B플러스등급</span></div>
                                                                    <p class="para">사회</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px 0"><span class="blind">2017 GOVERNANCE KCGS B플러스등급</span></div>
                                                                    <p class="para">지배구조</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2015 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">사회적 가치 성과</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK네트웍스는 2018년부터 기업 활동의 전반에서 발생된 사회적 가치를 정략적으로 측정해왔습니다. 구성원과 이해관계자의 행복 추구를 위해 부정적 영향은 개선하고,<br class="pc-only"> 긍정적 영향은 확대하여 SK네트웍스의 지속가능성을 확보해 나가겠습니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type2 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">경제간접 기여성과</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        기업 활동을 통해 경제에 간접적으로 기여하는 가치
                                    </p>
                                    <div class="data-display design2 case5 type1">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-subject">2023</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="submit-form design1 case1 align1">
                                                            <div class="form-list">
                                                                <div class="form-item">
                                                                    <div class="form select design1 case1 type1">
                                                                        <label for="level-sel-economic" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-economic">
                                                                            <option value="0" selected hidden disabled>년도 선택</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 경제간접 2023 -->
                                        <div class="esg-inform esg-economic esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">3,456 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">605 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">1,359 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">5,420 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,436<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">4,926<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 160px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">5,420<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃</p>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2023 -->
                                        <!-- 경제간접 2022 -->
                                        <div class="esg-inform esg-economic esg-option2022 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">3,445 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">263 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">1,218 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">4,926 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,975<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,436<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 89px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">4,926<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃 (2022년부터 SK렌터카, SK매직, 민팃 추가)</p>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2022 -->
                                        <!-- 경제간접 2021 -->
                                        <div class="esg-inform esg-economic esg-option2021 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">1,800 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">263 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">375 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">2,436 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,363<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,975<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,436<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 89px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2021 -->
                                        <!-- 경제간접 2020 -->
                                        <div class="esg-inform esg-economic esg-option2020 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">1,867 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">262 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">846 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">2,975 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,864<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 104px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,363<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,975<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2020 -->
                                        <!-- 경제간접 2019 -->
                                        <div class="esg-inform esg-economic esg-option2019 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">1,850 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">288 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">225 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">2,363 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,864<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 104px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">2,363<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2019 -->
                                        <!-- 경제간접 2018 -->
                                        <div class="esg-inform esg-economic esg-option2018 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">고용</p>
                                                            <p class="body">1,860 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">배당</p>
                                                            <p class="body">514 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">납세</p>
                                                            <p class="body">490 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">2,864 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- //경제간접 2018 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type2 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">환경성과</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        친환경 제품/서비스 개발, 생산, 판매를 통해 창출된 가치 및 생산 공정에서 발생된 환경 영향
                                    </p>
                                    <div class="data-display design2 case5 type1">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-subject">2023</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="submit-form design1 case1 align1">
                                                            <div class="form-list">
                                                                <div class="form-item">
                                                                    <div class="form select design1 case1 type1">
                                                                        <label for="level-sel-envir" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-envir">
                                                                            <option value="0" selected hidden disabled>년도 선택</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 환경성과 2023 -->
                                        <div class="esg-inform esg-envir esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">222 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△55 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">167 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">252<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">172<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 125px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">167<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 115px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2023 -->
                                        <!-- 환경성과 2022 -->
                                        <div class="esg-inform esg-envir esg-option2022 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">213 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△41 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">172 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">112<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 78px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">252<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">172<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 123px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃 (2022년부터 SK렌터카, SK매직, 민팃 추가)</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2022 -->
                                        <!-- 환경성과 2021 -->
                                        <div class="esg-inform esg-envir esg-option2021 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">278 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△26 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">252 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">93<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 67px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">112<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">252<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2021 -->
                                        <!-- 환경성과 2020 -->
                                        <div class="esg-inform esg-envir esg-option2020 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">137 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△25 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">112 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case2 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item down">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">-20<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 15px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">93<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 65px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">112<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2020 -->
                                        <!-- 환경성과 2019 -->
                                        <div class="esg-inform esg-envir esg-option2019 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">37 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△27 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">9 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case2 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item down">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">-20<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 15px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 10px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2019 -->
                                        <!-- 환경성과 2018 -->
                                        <div class="esg-inform esg-envir esg-option2018 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스</p>
                                                            <p class="body">8 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정</p>
                                                            <p class="body">△28 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">△20 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //환경성과 2018 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type2 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">사회성과</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        삶의 질을 개선하는 제품 및 서비스의 개발/생산/판매, 노동 환경 개선 및 동반성장, 지역사회 공동체에 대한 사회 공헌 활동으로 창출된 가치
                                    </p>
                                    <div class="data-display design2 case5 type1">
                                        <ul class="data-list">
                                            <li class="data-item">
                                                <div class="item-wrap">
                                                    <div class="item-head">
                                                        <p class="item-subject">2023</p>
                                                    </div>
                                                    <div class="item-util">
                                                        <div class="submit-form design1 case1 align1">
                                                            <div class="form-list">
                                                                <div class="form-item">
                                                                    <div class="form select design1 case1 type1">
                                                                        <label for="level-sel-social" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-social">
                                                                            <option value="0" selected hidden disabled>년도 선택</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 사회성과 2023 -->
                                        <div class="esg-inform esg-social esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">0 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">87 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">16 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">103 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">98<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">130<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">103<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 143px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2023 -->
                                        <!-- 사회성과 2022 -->
                                        <div class="esg-inform esg-social esg-option2022 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">0 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">104 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">26 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">130 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">70<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">98<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">130<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스, SK매직, SK렌터카, 민팃 (2022년부터 SK렌터카, SK매직, 민팃 추가)</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2022 -->
                                        <!-- 사회성과 2021 -->
                                        <div class="esg-inform esg-social esg-option2021 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">1 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">80 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">17 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">98 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">69<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">70<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">98<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스(워커힐 포함), SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2021 -->
                                        <!-- 사회성과 2020 -->
                                        <div class="esg-inform esg-social esg-option2020 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">2 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">53 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">15 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">70 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">93<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 129px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">69<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">70<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2020 -->
                                        <!-- 사회성과 2019 -->
                                        <div class="esg-inform esg-social esg-option2019 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">2 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">43 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">24 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">69 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">(단위 : 억원)</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">93<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 129px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">년</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">69<span class="blind">억원</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">년</span></em>
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
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2019 -->
                                        <!-- 사회성과 2018 -->
                                        <div class="esg-inform esg-social esg-option2018 blind">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">제품/서비스<br> (삶의 질/소비자 보호)</p>
                                                            <p class="body">0 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">공정<br> (노동/동반성장)</p>
                                                            <p class="body">42 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">사회공헌</p>
                                                            <p class="body">51 억원</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">93 억원</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* 대상 : SK네트웍스, SK네트웍스서비스</p>
                                            </div>
                                        </div>
                                        <!-- //사회성과 2018 -->
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

    addSelectChangeListener('level-sel-rate', 'esg-rate');
    addSelectChangeListener('level-sel-economic', 'esg-economic');
    addSelectChangeListener('level-sel-envir', 'esg-envir');
    addSelectChangeListener('level-sel-social', 'esg-social');
</script>
</body>

</html>