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
    <title>Stock Prices &lt; Stocks &lt; IR &lt; SK Networks</title>
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
    <div class="main ir stock-info price-info" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">IR</span></li>
                        <li class="data-item"><span class="item-text">Stocks</span></li>
                        <li class="data-item"><span class="item-text">Stock Prices</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Stock Prices</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Stock Prices</div>
                    <div class="content-body">
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Information on Stock Issuance</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="t-display design1 case1 type1 align3 scroll">
                                        <table style="min-width: 918px;" class="col-w-2">
                                            <caption>This table provides information on the issuance of shares and consists of the total number of shares issued, the total number of shares burned, the number of shares issued, and the status of treasury stocks.</caption>
                                            <colgroup>
                                                <col class="col1">
                                                <col class="col2">
                                                <col class="col3">
                                                <col class="col4">
                                            </colgroup>
                                            <thead>
                                                <tr>
                                                    <th scope="col">Total Number of Shares Issued</th>
                                                    <th scope="col">Total Number of Shares Cancelled</th>
                                                    <th scope="col">Shares Outstanding</th>
                                                    <th scope="col">Treasury Stock</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>248,187,647</td>
                                                    <td>26,909,745</td>
                                                    <td>221,277,902</td>
                                                    <td>27,345,276</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <p class="comment design1">* As of March 31, 2025</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Shareholder Structure</h4>
                                    </div>
                                </div>
                                <div class="section-body chart-display design2 case1">
                                    <div class="chart-info">
                                        <div class="mark design1 case1 type1 al-square-color1"><span class="mark-text">SK Inc.</span></div>
                                        <div class="mark design1 case1 type1 al-square-color2"><span class="mark-text">Affiliated person</span></div>
                                        <div class="mark design1 case1 type1 al-square-color3"><span class="mark-text">Treasury stock</span></div>
                                        <div class="mark design1 case1 type1 al-square-color4"><span class="mark-text">National Pension Service</span></div>
                                        <div class="mark design1 case1 type1 al-square-color7"><span class="mark-text">Others</span></div>
                                    </div>
                                    <ul class="chart-list">
                                        <li class="chart-item">
                                            <div class="chart-diagram">
                                                <img src="/assets/images/ir/diagram1.png" alt="This is the image of shareholders in 2023. Please refer to the details below for more information." class="pc-only">
                                                <img src="/assets/images/ir/diagram1-mo.png" alt="This is the image of shareholders in 2023. Please refer to the details below for more information." class="mo-only">
                                            </div>
                                            <div class="chart-body">
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 505px;" class="col-w-1">
                                                        <caption>This table provides shareholder status information and consists of classification, number of shares, and share ratio.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Shareholder’s Name</th>
                                                                <th scope="col">Number of Shares</th>
                                                                <th scope="col">Ratio</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK Inc.</td>
                                                                <td>97,142,856</td>
                                                                <td>43.90%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Affiliated person</td>
                                                                <td>2,756,079</td>
                                                                <td>1.25%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Treasury stock</td>
                                                                <td>27,345,276</td>
                                                                <td>12.36%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>National Pension Service</td>
                                                                <td>12,021,020</td>
                                                                <td>5.43%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Others</td>
                                                                <td>82,012,671</td>
                                                                <td>37.06%</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">* As of March 31, 2025 / Common Share</p>
                                            </div>
                                        </li>
                                        <!-- <li class="chart-item">
                                            <div class="chart-diagram">
                                                <img src="/assets/images/ir/diagram2.png" alt="This is the image of shareholders in 2022. Please refer to the details below for more information." class="pc-only">
                                                <img src="/assets/images/ir/diagram2-mo.png" alt="This is the image of shareholders in 2022. Please refer to the details below for more information." class="mo-only">
                                            </div>
                                            <div class="chart-body">
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 506px;" class="col-w-1">
                                                        <caption>This table provides shareholder status information and consists of classification, number of shares, and share ratio.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Shareholder’s Name</th>
                                                                <th scope="col">Number of Shares</th>
                                                                <th scope="col">Ratio</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK Inc.</td>
                                                                <td>97,142,856</td>
                                                                <td>43.90%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Affiliated person</td>
                                                                <td>9,670,733</td>
                                                                <td>4.1%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Treasury stock</td>
                                                                <td>29,545,493</td>
                                                                <td>12.5%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>National Pension Service</td>
                                                                <td>13,106,086</td>
                                                                <td>5.6%</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Others</td>
                                                                <td>98,722,479</td>
                                                                <td>41.9%</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">* As of December 31, 2022 / Common Share</p>
                                            </div>
                                        </li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case1 type1 shareholder-status">
                            <iframe title="SK네트웍스 보통주, 시세 차트 정보" src="https://ir.gsifn.io/sknetworks/ir2_current.html?koreng=2" allowfullscreen></iframe>
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