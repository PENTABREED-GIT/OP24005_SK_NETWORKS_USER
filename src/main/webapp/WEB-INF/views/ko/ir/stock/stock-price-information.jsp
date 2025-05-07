<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>주가정보 &lt; 주식정보 &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info price-info" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">주식정보</span></li>
                        <li class="data-item"><span class="item-text">주가정보</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">주가정보</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">주가정보 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">주식 발행정보</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 646px;" class="col-w-2">
                                            <caption>이 표는 주식 발행 정보를 제공하며 발행한 주식의 총수, 소각한 주식의 총수, 발행주식 수, 자기주식 보유현황으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">발행한 주식의 총수</th>
                                                    <th scope="col">소각한 주식의 총수</th>
                                                    <th scope="col">발행주식 수</th>
                                                    <th scope="col">자기주식 보유현황</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>248,187,647</td>
                                                    <td>26,909,745</td>
                                                    <td>221,277,902</td>
                                                    <td>27,345,107</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* 2024.12.31 기준</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">주주현황</h4>
                                    </div>
                                </div>
                                <div class="section-body chart-display design2 case1">
                                    <div class="chart-info">
                                        <div class="mark design1 case1 type1 al-square-color1"><span class="mark-text">SK㈜</span></div>
                                        <div class="mark design1 case1 type1 al-square-color2"><span class="mark-text">그 외 특수관계인</span></div>
                                        <div class="mark design1 case1 type1 al-square-color3"><span class="mark-text">자기주식</span></div>
                                        <div class="mark design1 case1 type1 al-square-color4"><span class="mark-text">국민연금</span></div>
                                        <div class="mark design1 case1 type1 al-square-color7"><span class="mark-text">기타</span></div>
                                    </div>
                                    <ul class="chart-list">
                                        <li class="chart-item">
                                            <div class="chart-diagram">
                                                <img src="/assets/images/ir/diagram1.png" alt="주주현황 2024년 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                <img src="/assets/images/ir/diagram1-mo.png" alt="주주현황 2024년 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only" style="max-width: 100%">
                                            </div>
                                            <div class="chart-body">
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 386px;" class="col-w-1">
                                                        <caption>이 표는 2025년 주주현황 정보를 제공하며 구분(SK㈜, 그 외 특수관계인, 자기주식, 국민연금, 기타), 주식 수, 지분율로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">구분</th>
                                                                <th scope="col">주식 수</th>
                                                                <th scope="col">지분율</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK㈜</td>
                                                                <td>97,142,856</td>
                                                                <td>43.90%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>그 외 특수관계인</td>
                                                                <td>2,756,079</td>
                                                                <td>1.25%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>자기주식</td>
                                                                <td>27,345,276</td>
                                                                <td>12.36%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>국민연금</td>
                                                                <td>12,021,020</td>
                                                                <td>5.43%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>기타</td>
                                                                <td>82,012,671</td>
                                                                <td>37.06%</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">* 2025.03.31 기준</p>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1 shareholder-status">
                            <iframe title="SK네트웍스 보통주, 시세 차트 정보" src="https://ir.gsifn.io/sknetworks/ir2_current.html?koreng=1" allowfullscreen></iframe>
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