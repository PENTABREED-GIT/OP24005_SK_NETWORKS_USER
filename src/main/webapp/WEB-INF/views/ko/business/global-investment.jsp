<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-27
  Time: 오후 6:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="ntUtil" uri="tld/NTUtil.tld" %>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>글로벌 투자 &lt; Business &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
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

<body class="kr">
<%@ include file="/WEB-INF/views/ko/include/body-header-inc.jsp" %>
<div id="wrap">
    <%@ include file="/WEB-INF/views/ko/include/navigation-inc.jsp" %>
    <header class="light" id="header">
        <%@ include file="/WEB-INF/views/ko/include/gnb-header-inc.jsp" %>
    </header>
    <div class="main business globalInvestment" id="main">
        <div class="main-inner">
            <div class="local design2">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Business</span></li>
                            <li class="data-item"><span class="item-text">글로벌 투자</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">글로벌 네트워크와<br>포트폴리오 관리 역량을 바탕으로<br> 미래 가능성에 투자합니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h2 class="local-title">글로벌 투자</h2>
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
                    <div class="content-head blind">글로벌 투자 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case3 type1 core">
                            <div class="section-wrap">
                                <div class="article intro">
                                    <div class="article-wrap">
                                        <div class="article-body">
                                            <h3 class="title">미래 성장 영역 중심 <span class="text-bundle">글로벌 투자</span></h3>
                                            <p class="para case1">
                                                글로벌 투자를 통해 미래 성장 동력을 발굴하고,<br class="mo-only">보유 중인 사업 모델을 업그레이드하고 있습니다.<br>
                                                주요 투자 영역은 AI·Web 3·Sustainability 이며,<br>미래 유망 성장 영역 투자를 통해<br class='mo-only'> 기업가치를 지속적으로 강화할 계획입니다.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <jsp:include page="/WEB-INF/views/ko/business/achievement-inc.jsp" flush="true" >
                                    <jsp:param name="pageTitle" value="global-investment"/>
                                </jsp:include>
                                <div class="article hico">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <div class="info-wrap">
                                                <h4 class="title">Hicosystem</h4>
                                                <p class="para">하이코시스템은 SK네트웍스 주도로 <br class="mo-only">Early Stage 투자 관련 전세계 이해관계자들과 함께 구축한 이너서클 네트워크입니다.</p>
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
                                                            <span class="accent color10">226</span>명
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <em class="title">Investor</em>
                                                        </div>
                                                        <div class="board-body">
                                                            <span class="accent color10">167</span>명
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="board-item">
                                                    <div class="board-wrap">
                                                        <div class="board-head">
                                                            <em class="title">Advisor</em>
                                                        </div>
                                                        <div class="board-body">
                                                            <span class="accent color10">48</span>명
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="comment design1">* '24년 12월 기준</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="article history">
                                    <div class="article-wrap">
                                        <div class="article-head">
                                            <h4 class="title">History</h4>
                                            <p class="para">
                                                유연한 글로벌 대응으로 시장을 리딩하겠습니다.<br>
                                                전 세계를 무대로 활약하는 SK네트웍스를 만나보세요.
                                            </p>
                                        </div>
                                        <div class="article-body">
                                            <ul class="history-list">
                                                <li class="history-item">
                                                    <span class="date">2018. 3</span>
                                                    <p class="para">첫 투자 집행</p>
                                                </li>
                                                <li class="history-item">
                                                    <span class="date">2020. 5</span>
                                                    <p class="para">Hico Capital 설립<span class="note">(미국 현지 법인)</span></p>
                                                </li>
                                                <li class="history-item">
                                                    <span class="date">2021. 11</span>
                                                    <p class="para">펀드 II 런칭</p>
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
                                                미래를 향한 <br class="mo-only">새로운 가능성을 열어가는<br>
                                                SK네트웍스의 투자 포트폴리오 
                                            </h4>
                                            <div class="data-display investment">
                                                <div class="data-list">
                                                    <button type="button" class="data-item active" id="all" onclick="filterButton('all');">
                                                        <span class="data-head">
                                                            <strong class="data-name">전체 투자</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">36</span>건
                                                        </span>
                                                    </button>
                                                    <button type="button" class="data-item" id="direct" onclick="filterButton('direct');">
                                                        <span class="data-head">
                                                            <strong class="data-name">직접투자</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">15</span>건
                                                        </span>
                                                    </button>
                                                    <button type="button" class="data-item" id="fund" onclick="filterButton('fund');">
                                                        <span class="data-head">
                                                            <strong class="data-name">*펀드투자</strong>
                                                        </span>
                                                        <span class="data-body">
                                                            <span class="accent">21</span>건
                                                        </span>
                                                    </button>
                                                </div>
                                                <div class="data-aside">
                                                    <p class="comment design1">
                                                        * SoftBank Future Innovation FundⅢ, DCVC Bio FundⅡ, Kindred Ventures FundⅡ등
                                                        <br>
                                                        * Contact : 
                                                        <a href="mailto:rurumie@sk.com" class="mail">
                                                            안윤궐 (ykahn@sk.com)
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
                                                                    <label for="local" class="blind">지역 선택</label>
                                                                    <select name="local" id="local" onchange="filterList()">
                                                                        <option value="all">지역 전체</option>
                                                                        <option value="domestic">국내</option>
                                                                        <option value="overseas">해외</option>
                                                                    </select>
                                                                    <div class="arrow"><span class="blind">닫힘</span></div>
                                                                </div>
                                                            </div>
                                                            <div class="form-item">
                                                                <div class="form select design1 case1 type1">
                                                                    <label for="investment" class="blind">유형 선택</label>
                                                                    <select name="investment" id="investment" onchange="filterListAndButtonSync()">
                                                                        <option value="all">유형 전체</option>
                                                                        <option value="direct">직접투자</option>
                                                                        <option value="fund">펀드투자</option>
                                                                    </select>
                                                                    <div class="arrow"><span class="blind">닫힘</span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="data-body">
                                                    <ul class="data-list portfolio-list">
                                                        <li class="data-item">
                                                            <a href="https://www.kurly.com/introduce" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-kurly.svg" alt="마켓컬리 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Kurly</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">국내 최초 새벽배송 등 물류 혁신을 시행한 신선식품 전문 온라인 유통기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.mymusictaste.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-mymusictaste.svg" alt="MyMusicTaste 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">MyMusicTaste</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">수요 데이터를 기반으로 아티스트 공연을 기획하는 콘서트 메이킹 플랫폼</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://portone.io/korea/ko" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-portone.svg" alt="PortOne Holdings 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">PortOne Holdings</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">온라인 통합 결제 솔루션 &lsquo;PortOne&rsquo;을 운영하는 핀테크 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">싱가포르</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://standard.ai/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-standardai.svg" alt="Standard AI 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Standard AI</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">인공지능(AI) 기반의 무인 결제 솔루션 제공 업체</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.mycoworks.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-mycoworks.svg" alt="MycoWorks 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">MycoWorks</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">버섯 균사체를 활용하여 친환경 대체 가죽을 생산하는 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://lviscorp.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-lvis.svg" alt="LVIS 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">LVIS</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">뇌질환(뇌전증, 치매 등) 관련 진단 및 치료 솔루션 제공</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">임지영 (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://sabantoag.com/staging/9256/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-sabanto.svg" alt="Sabanto 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Sabanto</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">트랙터 무인 자동화 솔루션 개발 및 제공 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">임지영 (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://humane.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-humane.svg" alt="Humane 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Humane Inc.</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">AI 기반 차세대 디바이스 및 소프트웨어 플랫폼</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.source.ag/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-source.svg" alt="Source 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Source.ag</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">AI 적용 스마트팜 솔루션 개발업체</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">네덜란드</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="http://kpartners.co.kr/wordpress/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-kpartners.svg" alt="컴퍼니케이 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">컴퍼니케이고성장펀드</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">혁신성장 산업 중 Healthcare, AI 분야 중심 투자</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">컴퍼니케이파트너스</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SBVA Future Innovation Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">아시아 지역내 AI, IoT, Robotics등 ICT 분야 중심 투자</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">Softbank Venture Asia</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bass.vc/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-bass.svg" alt="베이스 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">베이스디스트링벤처투자조합</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">우수 창업자 네트워크를 기반으로 Customer Service 분야 투자에 강점</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">베이스인베스트먼트</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SVA Venture Fund II</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">버킷플레이스(「오늘의집」 운영사 ) 프로젝트 펀드</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">SoftBank Ventures Asia</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.dcvc.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-dcvc.svg" alt="DCVC 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">DCVC Bio Fund Ⅱ, DCVC Bio Fund Ⅲ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Life Science(Healthcare, Bio, MediTech)분야 전문 VC</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">DCVC</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://kindredventures.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-kindred.svg" alt="Kindred 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Kindred Ventures Fund Ⅱ, Kindred Ventures Fund Ⅲ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">Coinbase, Blue Bottle Coffee, Uber 등 혁신기업들에 대한 성공적인 투자 Record 보유</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">Kindred Ventures</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">임지영 (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.e14.vc/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-e14.svg" alt="E14 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">E14 2020 Fund, E14 Fund 3</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">MIT Media Lab(메사추세츠 공과대학교 연구소) 연계 펀드로 AI, Fintech 분야 중심 투자</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">E14</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">임지영 (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bbv.io/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-bbv.svg" alt="Blue Bear Ventures 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Blue Bear Ventures Fund Ⅱ</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">UC Berkeley 포함 미국 서부지역 대학 및 연구소 연계 펀드(Bio, ESG 분야 강점)                                                                        </p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">미국</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">Blue Bear Ventures</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:chloe.l@sk.com" class="mail">임지영 (chloe.l@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.goldengate.vc/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-goldengate.svg" alt="Golden Gate 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">Golden Gate Ventures Fund IV</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">동남아시아 고성장 영역 Early Stage 중심 투자</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">싱가포르</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">운용사</span>
                                                                        <em class="label-data">Golden Gate Ventures Fund Management</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.hashed.com/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-hashed.png" alt="해시드 벤처투자조합 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">해시드 벤처투자조합 2호, 3호</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">블록체인과 가상자산의 미래를 개척하는 창업자들을 발굴, 지원 및 투자하는 글로벌 얼리스테이지 벤처 펀드</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:ykahn@sk.com" class="mail">안윤궐 (ykahn@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://blockodyssey.io/ko/about-us" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-blockodyssey.png" alt="블록오디세이 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">블록오디세이</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">B2B/B2G 비즈니스 혁신을 위한 블록체인 기술 컨설팅과 맞춤형 인프라 구축 및 솔루션 개발 서비스 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:rurumie@sk.com" class="mail">송해인 (rurumie@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://bmsmile.com/index.html" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-bmsmile.png" alt="비엠스마일 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">비엠스마일</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">국내 유일 수직계열화된 Pet 용품 사업 및 디자인IP 전문 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:mj@sk.com" class="mail">김민준 (mj@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.sbvacorp.com/ko/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-sbva.png" alt="SBVA Alpha Intelligence Fund 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">SBVA Alpha Intelligence Fund</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">글로벌 인공지능(AI), 딥테크 분야 초기 기업 투자 중심 벤처 펀드</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">펀드투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:mj@sk.com" class="mail">김민준 (mj@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="data-item">
                                                            <a href="https://www.upstage.ai/" target="_blank" class="portfolio-figure" title="새창 열기">
                                                                <img src="/assets/images/business/logo-upstage.png" alt="업스테이지 브랜드 로고">
                                                            </a>
                                                            <div class="portfolio-info">
                                                                <div class="portfolio-head">
                                                                    <strong class="portfolio-name">업스테이지</strong>
                                                                </div>
                                                                <div class="portfolio-body">
                                                                    <p class="para">대형언어모델(LLM) ‘Solar LLM’과 Document AI 기술을 기반으로 기업 맞춤형 AI 모델과 솔루션을 제공하는 글로벌 기업</p>
                                                                </div>
                                                                <div class="portfolio-aside">
                                                                    <span class="label">
                                                                        <span class="label-name">지역</span>
                                                                        <em class="label-data region">한국</em>
                                                                    </span>
                                                                    <span class="label break">
                                                                        <span class="label-name">유형</span>
                                                                        <em class="label-data investment">직접투자</em>
                                                                    </span>
                                                                    <span class="label">
                                                                        <span class="label-name">담당자</span>
                                                                        <em class="label-data">
                                                                            <a href="mailto:rurumie@sk.com" class="mail">송해인 (rurumie@sk.com)</a>
                                                                        </em>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="data-aside">
                                                    <p class="comment design1">
                                                        * 포트폴리오 공개가능 범위 내 표기
                                                        <br>
                                                        * ’24년 6월 기준
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
                                                <img src="/assets/images/logo/logo-c1-e.svg" alt="SK networks 로고 이미지">
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">사업제안·고객문의가 필요하신가요?</p>
                                            </div>
                                            <div class="banner-footer">
                                                <span class="summary">SK네트웍스는 여러분의 소중한 제안을 기다리고 있습니다.</span>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/global/sk-inquiry-form">
                                                    <span class="btn-text">문의하기</span>
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
                                                <a href="/pr/news-room/${item.uid}" class="post-item">
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
                                                                <p class="post-caption"><c:out value="${item.businessAreaNameKo}"/></p>
                                                                <p class="post-subject"><c:out value="${item.title}"/></p>
                                                                <p class="post-summary"><c:out value="${ntUtil:toBr(ntUtil:removeHtml(item.content))}"/></p>
                                                            </div>
                                                            <p class="post-date" title="등록일"><c:out value="${item.regDate}"/></p>
                                                        </div>
                                                    </div>
                                                </a>
                                                <c:set var="businessName" value="${item.businessAreaNameKo}"/>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="section-util btn-display align3">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color2 ar-icon-plus-bg" href="/pr/news-room?currentPage=1&searchWord=<c:out value="${businessName}"/>"><span class="btn-text">더보기</span></a>
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
        <%@ include file="/WEB-INF/views/ko/include/footer-inc.jsp" %>
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
                (regionFilterValue === 'domestic' && region === '국내') ||
                (regionFilterValue === 'domestic' && region === '한국') ||
                (regionFilterValue === 'overseas' && region !== '국내');

            let investmentMatch = (investmentFilterValue === 'all') ||
                (activeButtonId === 'all') ||
                (investmentFilterValue === 'direct' && investment === '직접투자') ||
                (activeButtonId === 'direct' && investment === '직접투자') ||
                (investmentFilterValue === 'fund' && investment === '펀드투자') ||
                (activeButtonId === 'fund' && investment === '펀드투자');

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