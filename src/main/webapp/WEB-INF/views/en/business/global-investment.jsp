<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Global Investment &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", () => {
            Tab();
            localAnimations_Case02();

            const investmentItems = document.querySelectorAll(".investment .data-item")
            investmentItems.forEach(item => {
                item.addEventListener("click", () => {
                    const investmentItemActive = document.querySelector(".investment .data-item.active")
                    investmentItemActive.classList.remove("active")
                    item.classList.add("active")
                })
            });
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
    <div class="main business globalInvestment" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">Global Investment</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">Leveraging global networks and <br>portfolio management capabilities, <br>we invest in future possibilities.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">Global Investment</h2>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/business/bg-local-head-business-globalInvestment.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head blind">Global Investment</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-body">
                                            <h3 class="title">Future Growth-Focused Global Investment</h3>
                                            <p class="para case1">
                                                Through our global investments, we are uncovering growth drivers and upgrading our existing business models. Our key investment areas include AI, Web 3, and Sustainability. We aim to continuously enhance corporate value by investing in promising growth domains for the future.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/en/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="global-investment"/>
                                </jsp:include>
                                <div class="article hico">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <div class="info-wrap">
                                                <h4 class="title">Hicosystem</h4>
                                                <p class="para">Hicosystem is an inner circle network developed with early stage investment partners worldwide. It is driven by SK Networks.</p>
                                            </div>
                                            <div class="figure-wrap">
                                                <img src="/assets/images/business/figure-hico-hyper.svg" alt="Hyper - 하이코 파트너 기반 선순환 투자 생태계" class="hyper">
                                                <img src="/assets/images/business/figure-hico-intel.svg" alt="intelligence - 하이코 파트너 기반 선순환 투자 생태계" class="intel">
                                                <img src="/assets/images/business/figure-hico-eco.svg" alt="Ecosystem - 하이코 파트너 기반 선순환 투자 생태계" class="eco">
                                            </div>
                                        </div>
                                        <div class="article-body">
                                            <div class="board-list hico">
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <em class="title">Startup Founder</em>
                                                        </div>
                                                        <div class="board-body">
                                                            <span class="accent color10">261</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <em class="title">Investor</em>
                                                        </div>
                                                        <div class="board-body">
                                                            <span class="accent color10">199</span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <em class="title">Advisor</em>
                                                        </div>
                                                        <div class="board-body">
                                                            <span class="accent color10">54</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="comment design1">* as of June 30th, 2025</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="article history">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h4 class="title">History</h4>
                                            <p class="para">
                                                SK Networks will lead the Global Market with Agile Strategies.<br>
                                                Discover SK Networks’ Worldwide Presence.
                                            </p>
                                        </div>
                                        <div class="article-body">
                                            <ul class="history-list">
                                                <li class="history-item">
                                                    <span class="date">March 2018</span>
                                                    <p class="para">First investment</p>
                                                </li>
                                                <li class="history-item">
                                                    <span class="date">May 2020</span>
                                                    <p class="para">SK Networks<br> Americas LLC<br> established<span class="note">(a subsidiary in U.S.)</span></p>
                                                </li>
                                                <li class="history-item">
                                                    <span class="date">November 2021</span>
                                                    <p class="para">Fund Ⅱ launched</p>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 portfolio">
                            <div class="section-wrap">
                                <div class="article">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h4 class="title">
                                                SK Networks’ Investment Portfolio<br>
                                                Opening New Possibilities for the Future
                                            </h4>
                                            <div class="data-display investment">
                                                <div class="data-list">
                                                    <button type="button" id="all" class="data-item active" onclick="filterButton('all');">
                                                        <span class="data-head">
                                                            <strong class="data-name">All</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">37</span>
                                                        </span>
                                                    </button>
                                                    <button type="button" id="direct" class="data-item" onclick="filterButton('direct');">
                                                        <span class="data-head">
                                                            <strong class="data-name">direct investment</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">15</span>
                                                        </span>
                                                    </button>
                                                    <button type="button" id="fund" class="data-item" onclick="filterButton('fund');">
                                                        <span class="data-head">
                                                            <strong class="data-name">*fund investment</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">22</span>
                                                        </span> 
                                                    </button>
                                                </div>
                                                <div class="data-aside">
                                                    <p class="comment design1">
                                                        * SoftBank Future Innovation FundⅢ, DCVC Bio FundⅡ, Kindred Ventures FundⅡ
                                                        <br>
                                                        * Contact : 
                                                        <a href="mailto:rurumie@sk.com" class="mail">
                                                            Choi, Dae-young (djohnchoi@sk.com)
                                                        </a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="article-body">
                                            <div class="data-display portfolio">
                                                <div class="data-util">
                                                    <div class="submit-form design1 case2 align2">
                                                        <div class="form-list">
                                                            <div class="form-item">
                                                                <div class="form select design1 case1 type1">
                                                                    <label for="local" class="blind">Nation</label>
                                                                    <select name="local" id="local" onchange="filterList()">
                                                                        <option value="all">All</option>
                                                                        <option value="domestic">Domestic</option>
                                                                        <option value="overseas">Overseas</option>
                                                                    </select>
                                                                    <div class="arrow"><span class="blind">Close</span></div>
                                                                </div>
                                                            </div>
                                                            <div class="form-item">
                                                                <div class="form select design1 case1 type1">
                                                                    <label for="investment" class="blind">Type</label>
                                                                    <select name="investment" id="investment" onchange="filterListAndButtonSync()">
                                                                        <option value="all">All</option>
                                                                        <option value="direct">direct investment</option>
                                                                        <option value="fund">fund investment</option>
                                                                    </select>
                                                                    <div class="arrow"><span class="blind">Close</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="data-body">
                                                    <ul class="data-list portfolio-list">
                                                        <li class="data-item">
                                                            <a href="https://www.kurly.com/introduce" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-kurly.svg" alt="Kurly">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Kurly</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">An online distributor specializing in fresh food delivery as one of the first innovators of logistics systems in Korea</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:yeonhong@sk.com" class="mail">Su, Yan-hong (yeonhong@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.mymusictaste.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-mymusictaste.svg" alt="MyMusicTaste">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">MyMusicTaste</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">K-pop live music concert promotion and commerce platform based on demand</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://portone.io/korea/ko" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-portone.svg" alt="PortOne Holdings">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">PortOne Holdings</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A fintech company that develops infrastructure technologies to create an efficient digital economy, namely “PortOne,” a B2B online payment solution</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Singapore</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:seungsoo.lee@sk.com" class="mail">Lee, Seung-soo (seungsoo.lee@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://standard.ai/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-standardai.svg" alt="Standard AI">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Standard AI</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">AI-Powered autonomous checkout solution provider.</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.mycoworks.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-mycoworks.svg" alt="MycoWorks">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">MycoWorks</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A bio-tech company that creates vegan leather derived from mycelia</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://lviscorp.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-lvis.svg" alt="LVIS">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">LVIS</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Developer of brain network analysis tools designed for neurological disorders.</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://sabantoag.com/staging/9256/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-sabanto.svg" alt="Sabanto">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Sabanto</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Farming-as-a-service company that develops tractor automation solutions</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://humane.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-humane.svg" alt="Humane">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Humane Inc.</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">AI-powered consumer device and software platform for the next era of personal mobile computing</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.source.ag/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-source.svg" alt="Source">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Source.ag</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A Dutch AgTech start up which empowers growers globally with AI</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Netherlands</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="http://kpartners.co.kr/wordpress/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-kpartners.svg" alt="Company K Partners">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Company K High Growth Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Korean venture capital focusing on investments in innovative industries, especially healthcare and AI</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">Company K Partners</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:seungsoo.lee@sk.com" class="mail">Lee, Seung-soo (seungsoo.lee@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SBVA Future Innovation Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Investing in ICT in Asia, covering AI, IoT, and robotics</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">Softbank Venture Asia</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:djohnchoi@sk.com" class="mail">Choi, Dae-young (djohnchoi@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bass.vc/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-bass.svg" alt="BASS Investment">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">BASS D _ Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Having competitive edge in customer service domain investments, empowered by extensive network with promising entrepreneurs</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">BASS D _ Fund</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SVA Venture Fund II</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">SBVA Venture Fund Ⅱ</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">SoftBank Ventures Asia</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:djohnchoi@sk.com" class="mail">Choi, Dae-young (djohnchoi@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.dcvc.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-dcvc.svg" alt="DCVC">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">DCVC Bio Fund Ⅱ, DCVC Bio Fund Ⅲ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Venture capital specialized in life sciences, such as healthcare, biotech, and medtech</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">DCVC Bio</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://kindredventures.com/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-kindred.svg" alt="Kindred">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Kindred Ventures Fund Ⅱ, Kindred Ventures Fund Ⅲ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Venture capital with successful track record of investments in innovative businesses such as Coinbase, Blue Bottle Coffee, and Uber.</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">Kindred</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.e14.vc/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-e14.svg" alt="E14">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">E14 2020 Fund, E14 Fund 3</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">An early stage venture capital firm from and for the MIT/Media Lab startup community</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">E14</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bbv.io/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-bbv.svg" alt="Blue Bear Ventures">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Blue Bear Ventures Fund Ⅱ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Early stage venture capital focused on deep tech innovations from top-tier universities including UC Berkeley.</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">USA</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">Blue Bear Ventures</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">Lim, Ji-Young (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.goldengate.vc/" target="_blank" title="Opens in a new window." class="portfolio-figure">
                                                                <img src="/assets/images/business/logo-goldengate.svg" alt="Golden Gate">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Golden Gate Ventures Fund IV</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A venture capital firm that invests in early-stage companies in Southeast Asia</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Singapore</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Investment Manager</span>
                                                                        <em class="label-data">Golden Gate Ventures Fund Management</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:seungsoo.lee@sk.com" class="mail">Lee, Seung-soo (seungsoo.lee@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.hashed.com/" target="_blank" class="portfolio-figure" title="Opens in a new window.">
                                                                <img src="/assets/images/business/logo-hashed.png" alt="Hashed Venture">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Hashed Venture Fund II, III</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A global, early-stage venture fund focused on backing founders who are pioneering the future of blockchain and cryptocurrency</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://blockodyssey.io/ko/about-us" target="_blank" class="portfolio-figure" title="Opens in a new window.">
                                                                <img src="/assets/images/business/logo-blockodyssey.png" alt="Block Odyssey">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Block Odyssey</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A development and services company encompassing blockchain technology consulting, customized infrastructure, and solutions for B2B/B2G business innovation</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:wonho@sk.com" class="mail">Song, Won-ho (wonho@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bmsmile.com/index.html" target="_blank" class="portfolio-figure" title="Opens in a new window.">
                                                                <img src="/assets/images/business/logo-bmsmile.png" alt="BMSMILE">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">BMSMILE</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">The only vertically integrated pet supplies business and specialized design IP company in South Korea</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:djohnchoi@sk.com" class="mail">Choi, Dae-young (djohnchoi@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" class="portfolio-figure" title="Opens in a new window.">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA Alpha Intelligence Fund">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SBVA Alpha Intelligence Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A venture fund focused on early-stage investments in global AI and deep-tech sectors</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">fund investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:djohnchoi@sk.com" class="mail">Choi, Dae-young (djohnchoi@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.upstage.ai/" target="_blank" class="portfolio-figure" title="Opens in a new window.">
                                                                <img src="/assets/images/business/logo-upstage.png" alt="Upstage">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Upstage</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">A global company that provides customized AI models and solutions for enterprises based on Solar LLM (large language model) and Document AI technology</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">Nation</span>
                                                                        <em class="label-data region">Korea</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">Type</span>
                                                                        <em class="label-data investment">direct investment</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">Person in charge</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:yeonhong@sk.com" class="mail">Su, Yan-hong (yeonhong@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="data-aside">
                                                    <p class="comment design1">
                                                        * Excluding portfolios that are not allowed to be disclosed.
                                                        <br>
                                                        * As of June 2025
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case3 type1 banner-section">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="banner design1 case1 type1">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks Logo Image">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">Interested in a business proposals or <br class="pc-only">have customer inquiries</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK Networks welcome your valuable suggestions and inquires.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/${LANG}/global/sk-inquiry-form">
                                                    <span class="btn-text">Go to Inquiry</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${not empty pressList}">
                            <div class="section design1 case3 type1 press">
                                <div class="section-wrap">
                                    <div class="section-head">
                                        <div class="section-subject">
                                            <h4 class="section-name">PRESS NOW</h4>
                                        </div>
                                    </div>
                                    <div class="section-body">
                                        <div class="post-list design2 case1 type1">
                                            <c:forEach items="${pressList}" var="item" varStatus="status">
                                                <a href="/${LANG}/pr/news-room/${item.uid}" class="post-item">
                                                    <div class="post-wrap">
                                                        <div class="post-figure">
                                                            <c:choose>
                                                                <c:when test="${not empty item.addedFile}">
                                                                    <img src="<c:out value="${item.addedFile}"/>" alt="<c:out value="${item.description}"/>">
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <img src="/upload/public/press/newsroom/Default-thumbnail.png" alt="press now 썸네일 이미지">
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                        <div class="post-inform">
                                                            <div class="post-head">
                                                                <p class="post-caption"><c:out value="${item.businessAreaNameEn}"/></p>
                                                                <p class="post-subject"><c:out value="${item.title}"/></p>
                                                                <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                            </div>
                                                            <p class="post-date" title="date of registration"><c:out value="${item.regDate}"/></p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <c:set var="businessName" value="${item.businessAreaNameEn}"/>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="section-util btn-display align3">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="/${LANG}/pr/news-room?currentPage=1&searchWord=<c:out value="${businessName}"/>"><span class="btn-text">View more</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:if>
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

<script>
    function filterListAndButtonSync() {
        // Select box 값 가져오기
        let investmentFilterValue = document.getElementById('investment').value;

        // 해당 값에 맞는 filterButton 활성화
        document.querySelectorAll('.data-item').forEach(button => {
            button.classList.remove('active');
            if (button.id === investmentFilterValue) {
                button.classList.add('active');
            }
        });

        // 기존 filterList 함수 호출
        filterList();
    }

    function filterList() {
        let activeButtonId = document.querySelector('.data-item.active')?.id || 'all';
        let regionFilterValue = document.getElementById('local').value;
        let investmentFilterValue = document.getElementById('investment').value;
        let items = document.querySelectorAll('ul.portfolio-list .data-item');

        items.forEach(item => {
            const region = item.querySelector('.label-data.region').innerText.trim();
            const investment = item.querySelector('.label-data.investment').innerText.trim();

            let regionMatch = (regionFilterValue === 'all') ||
                (regionFilterValue === 'domestic' && region === 'Korea') ||
                (regionFilterValue === 'overseas' && region !== 'Korea');

            let investmentMatch = (investmentFilterValue === 'all') ||
                (activeButtonId === 'all') ||
                (investmentFilterValue === 'direct' && investment === 'direct investment') ||
                (activeButtonId === 'direct' && investment === 'direct investment') ||
                (investmentFilterValue === 'fund' && investment === 'fund investment') ||
                (activeButtonId === 'fund' && investment === 'fund investment');

            if (regionMatch && investmentMatch) {
                item.style.display = '';
            } else {
                item.style.display = 'none';
            }
        });
    }
    function filterButton(type) {
        // 모든 버튼의 active 클래스 제거
        document.querySelectorAll('.data-item').forEach(button => {
            button.classList.remove('active');
        });

        // 클릭한 버튼에 active 클래스 추가
        document.getElementById(type).classList.add('active');

        // select box 값 변경
        document.getElementById('investment').value = type;

        // 리스트 필터링
        filterList();
    }
</script>