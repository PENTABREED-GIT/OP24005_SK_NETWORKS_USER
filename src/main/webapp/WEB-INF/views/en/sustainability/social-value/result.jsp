<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Social Value Performance &lt; Social Value &lt; Sustainability &lt; SK Networks</title>
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
    <div class="main esg social-val" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">Social Value</span></li>
                            <li class="data-item"><span class="item-text">Social Value Performance</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Creating Social Value through<br class="pc-only"> Value Innovation in Harmony.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">Social Value Performance</h3>
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
                    <div class="content-head">Social Value Performance</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 case4 type1 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">ESG Evaluation Grade</h4>
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
                                                                        <label for="level-sel-rate" class="blind">Label</label>
                                                                        <select name="name" id="level-sel-rate">
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
                                                                        <img src="/assets/images/sustainability/esg-kcgs-aplus-2024.jpg" alt="2024 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A plus">
                                                                    </div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-env-a-2024.jpg" alt="2024 EVIRONMENTAL KCGS A">
                                                                    </div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-social-aplus-2024.jpg" alt="2024 SOCIAL KCGS A plus">
                                                                    </div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-gov-aplus-2024.jpg" alt="2024 GOVERNANCE KCGS A plus">
                                                                    </div>
                                                                    <p class="para">Governance</p>
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
                                                                        <img src="/assets/images/sustainability/esg-cdp-A-list-2024.jpg" alt="2023 CDP A LIST 2023 CLIMATE Mark">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%--<div class="borad-item">--%>
                                                    <%--    <div class="board-head">--%>
                                                    <%--        <span class="board-subject">S&P Global</span>--%>
                                                    <%--    </div>--%>
                                                    <%--    <div class="board-body">--%>
                                                    <%--        <div class="data-list emblum3">--%>
                                                    <%--            <div class="data-item">--%>
                                                    <%--                <div class="figure">--%>
                                                    <%--                    <img src="/assets/images/sustainability/esg-img-sp-global.jpg" alt="S&P Global Mark">--%>
                                                    <%--                </div>--%>
                                                    <%--            </div>--%>
                                                    <%--        </div>--%>
                                                    <%--    </div>--%>
                                                    <%--</div>--%>
                                                </div>
                                                <!-- <p class="comment design1">* Evaluation in 2023 / waiting for results in 2024</p> -->
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
                                                                        <img src="/assets/images/sustainability/esg-kcgs-a-2023.jpg" alt="2023 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A">
                                                                    </div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-env-a-2023.jpg" alt="2023 EVIRONMENTAL KCGS A">
                                                                    </div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-social-aplus-2023.jpg" alt="2023 SOCIAL KCGS A plus">
                                                                    </div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure">
                                                                        <img src="/assets/images/sustainability/esg-gov-a-2023.jpg" alt="2023 GOVERNANCE KCGS A">
                                                                    </div>
                                                                    <p class="para">Governance</p>
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
                                                            <span class="board-subject">S&P Global</span>
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
                                                                    <div class="figure" style="background-position: 0 -819px;"><span class="blind">2022 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -819px"><span class="blind">2022 EVIRONMENTAL KCGS A</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -819px"><span class="blind">2022 SOCIAL KCGS A plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -819px"><span class="blind">2022 GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Governance</p>
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
                                                                    <div class="figure" style="background-position: 0 -702px"><span class="blind">2021 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -702px"><span class="blind">2021 EVIRONMENTAL KCGS B plus</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -702px"><span class="blind">2021 SOCIAL KCGS A plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -702px"><span class="blind">2021 GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Governance</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* Overall and Governance ratings have been modified (A+→A) as a result of the 2nd KCGS rating adjustment in 2021.</p>
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
                                                            <span class="board-subject">Sustinvest</span>
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
                                                            <span class="board-subject">S&P Global</span>
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
                                                                    <div class="figure" style="background-position: 0 -585px"><span class="blind">2020 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -585px"><span class="blind">2020 EVIRONMENTAL KCGS B plus</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -585px"><span class="blind">2020 SOCIAL KCGS A plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -585px"><span class="blind">2020 GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Governance</p>
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
                                                            <span class="board-subject">Sustinvest</span>
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
                                                                    <div class="figure" style="background-position: 0 -468px"><span class="blind">2019 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A plus</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -468px"><span class="blind">2019 EVIRONMENTAL KCGS B plus</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -468px"><span class="blind">2019 SOCIAL KCGS A plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -468px"><span class="blind">2019 GOVERNANCE KCGS A plus</span></div>
                                                                    <p class="para">Governance</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* Selected as the best company in ESG category by Korea Corporate Governance Service in 2019</p>
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
                                                                    <div class="figure" style="background-position: 0 -351px"><span class="blind">2018 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -351px"><span class="blind">2018 EVIRONMENTAL KCGS B plus</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -351px"><span class="blind">2018 SOCIAL KCGS A plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -351px"><span class="blind">2018 GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Governance</p>
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
                                                                    <div class="figure" style="background-position: 0 -234px"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -234px"><span class="blind">2017 EVIRONMENTAL KCGS B</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -234px"><span class="blind">2017 SOCIAL KCGS B plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -234px"><span class="blind">2017 GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Governance</p>
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
                                                                    <div class="figure" style="background-position: 0 -117px"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px -117px"><span class="blind">2017 EVIRONMENTAL KCGS C</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px -117px"><span class="blind">2017 SOCIAL KCGS B plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px -117px"><span class="blind">2017 GOVERNANCE KCGS A</span></div>
                                                                    <p class="para">Governance</p>
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
                                                                    <div class="figure" style="background-position: 0 0"><span class="blind">2017 ENVIRONMENTAL SOCIAL GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Overall</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -100px 0"><span class="blind">2017 EVIRONMENTAL KCGS C</span></div>
                                                                    <p class="para">Environmental</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -200px 0"><span class="blind">2017 SOCIAL KCGS B plus</span></div>
                                                                    <p class="para">Social</p>
                                                                </div>
                                                                <div class="data-item">
                                                                    <div class="figure" style="background-position: -300px 0"><span class="blind">2017 GOVERNANCE KCGS B plus</span></div>
                                                                    <p class="para">Governance</p>
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
                                        <h4 class="section-name">Social Value Measurement</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        SK Networks has calculated its social value in monetary value since 2018. While making improvements on mitigating any negative impact, we will pursue the happiness of employees and stakeholders and expand the scope of our positive impact to achieve sustainability.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type2 select-value">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Social Performance through indirect economic contribution</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        The value of indirect contribution to the economy through business activities
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
                                                                        <label for="level-sel-economic" class="blind">Label</label>
                                                                        <select name="name" id="level-sel-economic">
                                                                            <option value="0" selected hidden disabled>Year</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 경제간접 2023 -->
                                        <div class="esg-inform esg-economic esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-1"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 345.6 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 60.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 135.9 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 542 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">243.6<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">492.6<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 160px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">569<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, SK Rent-a-car, MINTIT</p>
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
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 344.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 26.3 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 121.8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 492.6 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">297.5<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">243.6<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 89px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">492.6<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, SK Rent-a-car, MINTIT</p>
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
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 180.0 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 26.3 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 37.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 243.6 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">236.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">297.5<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">243.6<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 89px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service</p>
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
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 186.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 26.2 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 84.6 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 297.5 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">286.4<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 104px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">236.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">297.5<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 108px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 185 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 28.8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 22.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 236.3 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">286.4<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 104px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">236.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 86px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">Employment</p>
                                                            <p class="body">KRW 186 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-2"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Dividend</p>
                                                            <p class="body">KRW 51.4 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-3"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Tax Payment</p>
                                                            <p class="body">KRW 49 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 286.4 billion</p>
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
                                        <h4 class="section-name">Environmental performance</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Values created through the development, manufacture, and sales of eco-friendly products/services and environmental impacts generated from the manufacturing process
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
                                                                        <label for="level-sel-envir" class="blind">Label</label>
                                                                        <select name="name" id="level-sel-envir">
                                                                            <option value="0" selected hidden disabled>Year</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 환경성과 2023 -->
                                        <div class="esg-inform esg-envir esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 632px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-4"></div>
                                                        <div class="board-info">
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 22.2 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △5.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 16.7 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">25.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">17.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 125px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">16.7<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 115px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, MINTIT</p>
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
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 21.3 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △4.1 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 17.2 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">11.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 78px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">25.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">17.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 123px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, SK Rent-a-car, MINTIT</p>
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
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 27.8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △2.6 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 25.2 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 67px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">11.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">25.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service</p>
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
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 13.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △2.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 11.2 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case2 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item down">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">△2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 15px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 65px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">11.2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 80px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 3.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △2.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 0.9 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case2 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item down">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">△2<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 15px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">0.9<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 10px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">ProductㆍService</p>
                                                            <p class="body">KRW 0.8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-5"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Environmental Process</p>
                                                            <p class="body">KRW △2.8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW △2 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                        <h4 class="section-name">Social Performance through social contribution</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">
                                        Values created through the development, manufacture, and sales of products and services that improve quality of life, labor environment improvement and shared growth, and social contribution activities for local communities.
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
                                                                        <label for="level-sel-social" class="blind">Label</label>
                                                                        <select name="name" id="level-sel-social">
                                                                            <option value="0" selected hidden disabled>Year</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
                                                                            <option value="2020">2020</option>
                                                                            <option value="2019">2019</option>
                                                                            <option value="2018">2018</option>
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
                                    <div class="esg-inform-list">
                                        <!-- 사회성과 2023 -->
                                        <div class="esg-inform esg-social esg-option2023">
                                            <div class="board-display scroll">
                                                <div class="board-list esg-layout case3 type1" style="min-width: 848px;">
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-6"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 8.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 1.6 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 10.3 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.8<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">13<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">10.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 143px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2023<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, MINTIT</p>
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
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 10.4 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 2.6 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 13 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">7<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.8<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">13<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 180px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2022<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service, SK Magic, SK Rent-a-car, MINTIT</p>
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
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0.1 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 8 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 1.7 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 9.8 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">6.9<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">7<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.8<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 136px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2021<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks(including Walkerhill), SK Networks Service</p>
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
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0.2 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 5.3 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 1.5 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 7 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 356px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 129px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">6.9<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">7<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 97px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2020<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0.2 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 4.3 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 2.4 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 6.9 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="board-display">
                                                <div class="board-list esg-layout case4 type1">
                                                    <div class="borad-item">
                                                        <div class="board-head">
                                                            <p class="caption">Unit : KRW billion</p>
                                                        </div>
                                                        <div class="board-body">
                                                            <div class="chart-display design4 case1 scroll-2">
                                                                <div class="chart-list" style="min-width: 216px;">
                                                                    <div class="chart-item">
                                                                        <ul class="year-list">
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">9.3<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 129px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2018<span class="blind">year</span></em>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="year-item">
                                                                                <div class="year-wrap">
                                                                                    <p class="year-value">6.9<span class="blind">billion</span></p>
                                                                                    <div class="year-body">
                                                                                        <div class="graph-item" style="height: 96px;"></div>
                                                                                    </div>
                                                                                    <div class="year-head">
                                                                                        <em class="year-subject">2019<span class="blind">year</span></em>
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
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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
                                                            <p class="haed">Products/Services<br> (Quality of life/Consumer protection)</p>
                                                            <p class="body">KRW 0 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-7"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Process<br> (Labor/Shared growth)</p>
                                                            <p class="body">KRW 4.2 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item">
                                                        <div class="board-figure esg-csr-sv-8"></div>
                                                        <div class="board-info">
                                                            <p class="haed">Social Contribution</p>
                                                            <p class="body">KRW 5.1 billion</p>
                                                        </div>
                                                    </div>
                                                    <div class="borad-item type1">
                                                        <div class="board-info">
                                                            <p class="body">KRW 9.3 billion</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <p class="comment design1">* Target : SK Networks, SK Networks Service</p>
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

    addSelectChangeListener('level-sel-rate', 'esg-rate');
    addSelectChangeListener('level-sel-economic', 'esg-economic');
    addSelectChangeListener('level-sel-envir', 'esg-envir');
    addSelectChangeListener('level-sel-social', 'esg-social');
</script>
</body>

</html>