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
    <title>주주환원 &lt; 주식정보  &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info ir-shareholders" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">주식정보</span></li>
                        <li class="data-item"><span class="item-text">주주환원</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">주주환원</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">주주환원 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">주주환원</h4>
                                        <p class="section-summary">SK네트웍스는 투명한 배당 정책을 운영하고,<br>
                                            자사주 매입 및 소각 등 주주 가치 제고를 위한 다양한 노력을 기울이고 있습니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body banner">
                                    <div class="board-list design5 case2 type1">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <p class="board-name">배당정책</p>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">
                                                        사업 지주회사 형태에 맞는 투명한 배당 정책을 운영하겠습니다. 더불어 중간 배당 제도를 실시하여 주주환원을 강화하는 동시에 지속 가능한 배당 정책을 이어가겠습니다.                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <p class="board-name">자사주 운영 방안</p>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">
                                                        자기주식 보고서를 매해 공시하고, 자사주 매입 및 소각을 통해 주당 가치를 제고할 수 있는 다양한 노력을 기울이고 있습니다.
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">배당내역</h4>
                                        <div class="section-summary">(단위: 백만원)</div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 938px;" class="col-w-1">
                                            <caption>이 표는 배당내역 정보를 제공하며 구분(배당금 총액, (연결)당기순이익, 배당성향, 배당수익률), 2024년, 2023년, 2022년, 2021년, 2020년으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col style="width: auto">
                                                <col style="width: auto">
                                                <col class="col3">
                                                <col class="col4">
                                                <col class="col5">
                                                <col class="col6">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">구분</th>
                                                    <th scope="col" colspan="2">2024년</th>
                                                    <th scope="col">2023년</th>
                                                    <th scope="col">2022년</th>
                                                    <th scope="col">2021년</th>
                                                    <th scope="col">2020년</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>배당금 총액</td>
                                                    <td colspan="2">58,207</td>
                                                    <td>40,506</td>
                                                    <td>26,250</td>
                                                    <td>26,237</td>
                                                    <td>26,237</td>
                                                </tr>
                                                <tr>
                                                    <td>(연결)당기순이익</td>
                                                    <td colspan="2">46,292</td>
                                                    <td>5,459</td>
                                                    <td>90,765</td>
                                                    <td>103,540</td>
                                                    <td>45,053</td>
                                                </tr>
                                                <tr>
                                                    <td>배당성향</td>
                                                    <td colspan="2">126%</td>
                                                    <td>724%</td>
                                                    <td>29%</td>
                                                    <td>25%</td>
                                                    <td>62%</td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="2">배당수익률*</td>
                                                    <td>중간배당</td>
                                                    <td>2.06%</td>
                                                    <td rowspan="2">3.39%</td>
                                                    <td rowspan="2">3.1%</td>
                                                    <td rowspan="2">2.39%</td>
                                                    <td rowspan="2">2.47%</td>
                                                </tr>
                                                <tr>
                                                    <td>결산배당</td>
                                                    <td>4.88%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* 보통주 및 배당기준일 전일 종가 기준</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">배당이력</h4>
                                        <div class="section-summary">(단위: 백만원)</div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 460px;" class="col-w-2">
                                            <caption>이 표는 배당이력 정보를 제공하며 배당기준일, 배당지급일, 보통주, 우선주로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">배당기준일</th>
                                                    <th scope="col">배당지급일</th>
                                                    <th scope="col">보통주</th>
                                                    <th scope="col">우선주</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2025.04.01</td>
                                                    <td>2025.04.25</td>
                                                    <td>200</td>
                                                    <td>225</td>
                                                </tr>
                                                <tr>
                                                    <td>2024.09.30</td>
                                                    <td>2024.10.25</td>
                                                    <td>100</td>
                                                    <td>125</td>
                                                </tr>
                                                <tr>
                                                    <td>2024.04.01</td>
                                                    <td>2024.04.23</td>
                                                    <td>200</td>
                                                    <td>225</td>
                                                </tr>
                                                <tr>
                                                    <td>2022.12.31</td>
                                                    <td>2023.04.21</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2021.12.31</td>
                                                    <td>2022.04.20</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2020.12.31</td>
                                                    <td>2021.04.16</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2019.12.31</td>
                                                    <td>2020.04.21</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2018.12.31</td>
                                                    <td>2019.04.18</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2017.12.31</td>
                                                    <td>2018.04.19</td>
                                                    <td>120</td>
                                                    <td>145</td>
                                                </tr>
                                                <tr>
                                                    <td>2016.12.31</td>
                                                    <td>2017.04.12</td>
                                                    <td>100</td>
                                                    <td>125</td>
                                                </tr>
                                                <tr>
                                                    <td>2015.12.31</td>
                                                    <td>2016.04.12</td>
                                                    <td>100</td>
                                                    <td>125</td>
                                                </tr>
                                                <tr>
                                                    <td>2014.12.31</td>
                                                    <td>2015.04.15</td>
                                                    <td>100</td>
                                                    <td>125</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* 제70기 정기 주주총회 정관 변경으로 ‘23년부터 배당발표 이후 배당기준일 설정됩니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">자기주식 매입 및 소각 내역</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 460px;" class="col-w-3">
                                            <caption>이 표는 자기주식 매입 및 소각 내역 정보를 제공하며 일자, 구분, 주식 수, 금액(백만원)으로 구성되어 있습니다.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">일자</th>
                                                    <th scope="col">구분</th>
                                                    <th scope="col">주식 수 </th>
                                                    <th scope="col">금액 (백만원)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2024.03.05</td>
                                                    <td>소각</td>
                                                    <td>14,500,363</td>
                                                    <td>77,387</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.04.05</td>
                                                    <td>소각</td>
                                                    <td>12,409,382</td>
                                                    <td>69,703</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.03.14 ~ 2023.09.21</td>
                                                    <td>매입</td>
                                                    <td>19,962,158</td>
                                                    <td>100,430</td>
                                                </tr>
                                                <tr>
                                                    <td>2020.03.05 ~ 2020.06.04</td>
                                                    <td>매입</td>
                                                    <td>22,000,000</td>
                                                    <td>112,756</td>
                                                </tr>
                                                <tr>
                                                    <td>2017.08.11 ~ 2017.10.24</td>
                                                    <td>매입</td>
                                                    <td>7,622,000</td>
                                                    <td>53,342</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* 2025.03.31 기준</p>
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