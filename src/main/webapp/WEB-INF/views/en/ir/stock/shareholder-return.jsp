<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Shareholder Return &lt; Stocks  &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info ir-shareholders" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>

                        <li class="data-item"><span class="item-text">Stocks</span></li>


                        <li class="data-item"><span class="item-text">Shareholder Return</span></li>

                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Shareholder Return</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Shareholder Return</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Shareholder Return</h4>
                                        <p class="section-summary">
                                            SK Networks maintains a transparent dividend policy and undertakes a variety of initiatives to enhance shareholder value, including share repurchase and cancellation programs.
                                        </p>
                                    </div>
                                </div>
                                <div class="section-body banner">
                                    <div class="board-list design5 case2 type1">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <p class="board-name">Dividend Policy</p>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">
                                                        We are committed to maintaining a transparent dividend policy that aligns with our role as a business holding company. In addition, we plan to implement an interim dividend system to strengthen shareholder returns and ensure a sustainable dividend policy.                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-head">
                                                    <p class="board-name">Treasury Stock Management</p>
                                                </div>
                                                <div class="board-body">
                                                    <p class="para">
                                                        We disclose an annual treasury stock report and actively pursue various initiatives to enhance per-share value, including share repurchase and cancellation programs.
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
                                        <h4 class="section-name">Dividends</h4>
                                        <div class="section-summary">( Unit : KRW 1 million )</div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 916px;" class="col-w-1">
                                            <caption>The table provides dividend details and consists of categories, 2024, 2023, 2022, 2021, 2020</caption>
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
                                                    <th scope="col">Category</th>
                                                    <th scope="col" colspan="2">2024</th>
                                                    <th scope="col">2023</th>
                                                    <th scope="col">2022</th>
                                                    <th scope="col">2021</th>
                                                    <th scope="col">2020</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Total Dividends</td>
                                                    <td colspan="2">58,207</td>
                                                    <td>40,506</td>
                                                    <td>26,250</td>
                                                    <td>26,237</td>
                                                    <td>26,237</td>
                                                </tr>
                                                <tr>
                                                    <td>Net Income<br>(Consolidated)</td>
                                                    <td colspan="2">46,292</td>
                                                    <td>5,459</td>
                                                    <td>90,765</td>
                                                    <td>103,540</td>
                                                    <td>42,053</td>
                                                </tr>
                                                <tr>
                                                    <td>Dividend Payout Ratio</td>
                                                    <td colspan="2">126%</td>
                                                    <td>724%</td>
                                                    <td>29%</td>
                                                    <td>25%</td>
                                                    <td>62%</td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="2">Dividend Yield*</td>
                                                    <td>Interim dividend</td>
                                                    <td>2.06%</td>
                                                    <td rowspan="2">3.39%</td>
                                                    <td rowspan="2">3.1%</td>
                                                    <td rowspan="2">2.39%</td>
                                                    <td rowspan="2">2.47%</td>
                                                </tr>
                                                <tr>
                                                    <td>Final dividend</td>
                                                    <td>4.88%</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* Common shares and based on the closing price of the day before the dividend record date</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Dividend History</h4>
                                        <div class="section-summary">( Unit : KRW 1 million )</div>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 741px;" class="col-w-2">
                                            <caption>The table provides dividend history information and consists of dividend base date, dividend payment date, common stock, and preferred stock.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">Dividend record date</th>
                                                    <th scope="col">Dividend payment date</th>
                                                    <th scope="col">Common Share</th>
                                                    <th scope="col">Preferred Share</th>
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
                                    <p class="comment design1">* Following the amendment of the Articles of Incorporation at the 70th Annual General Meeting of Shareholders, the dividend record date will be set after the dividend announcement starting from 2023.</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Treasury Stock Buyback and Retirement</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 560px;" class="col-w-3">
                                            <caption>This table provides information on the retirement of treasury stocks and consists of dividend base date, dividend payment date, common stock, and preferred stock.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">Date</th>
                                                    <th scope="col">Treasury Stock Buyback / Retirement</th>
                                                    <th scope="col">No. of shares</th>
                                                    <th scope="col">Total (Unit : KRW 1 million)</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>2024.03.05</td>
                                                    <td>Treasury Stock Retirement</td>
                                                    <td>14,500,363</td>
                                                    <td>77,387</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.04.05</td>
                                                    <td>Treasury Stock Retirement</td>
                                                    <td>12,409,382</td>
                                                    <td>69,703</td>
                                                </tr>
                                                <tr>
                                                    <td>2023.03.14 ~ 2023.09.21</td>
                                                    <td>Treasury Stock Buyback</td>
                                                    <td>19,962,158</td>
                                                    <td>100,430</td>
                                                </tr>
                                                <tr>
                                                    <td>2020.03.05 ~ 2020.06.04</td>
                                                    <td>Treasury Stock Buyback</td>
                                                    <td>22,000,000</td>
                                                    <td>112,756</td>
                                                </tr>
                                                <tr>
                                                    <td>2017.08.11 ~ 2017.10.24</td>
                                                    <td>Treasury Stock Buyback</td>
                                                    <td>7,622,000</td>
                                                    <td>53,342</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* As of March. 31. 2025</p>
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