<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>브랜드 &lt; PR &lt; SK Networks</title>
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
    <div class="main pr brand" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">PR</span></li>
                        <li class="data-item"><span class="item-text">브랜드</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">브랜드</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">브랜드 페이지</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design4 case2 type1 brand-ci">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">CI의 의미</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">로고마크는 SK네트웍스의 제품, 서비스 및 모든 것을 대표하는 가장 중요한 Identity 요소로서 신뢰, 품질, 선두를 보증합니다.<br> SK네트웍스 로고마크는 공식적인 상징으로서 어떤 경우라도 형태가 변형되어서는 안되며 인쇄물, 프로모션 물 등 여러 매체에 사용되어 SK네트웍스의 기업 및 브랜드 이미지 전달에 중요한 역할을 하는 요소입니다.</p>
                                    <div class="section-figure">
                                        <img src="/assets/images/pr/brand-sk-logo.png" alt="sk 네트웍스 로고">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design2 type1 regulation-util">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">공간 규정</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="btn-display design1 case3 align1">
                                        <div class="btn-area">
                                            <a class="btn design3 case1 type1 color1 ar-icon-download-bg" href="/upload/public/data/ko/pr/SK_Networks_CI_AI.zip"><span class="btn-text">AI 다운로드</span></a>
                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/pr/SK_Networks_CI_JPG.zip"><span class="btn-text">JPG 다운로드</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section spatial-regulation">
                            <div class="section-wrap">
                                <div class="section-info">
                                    <div class="board-list design9 case1 type1">
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-subject">
                                                    <span class="board-name">공간규정 A</span>
                                                </div>
                                                <div class="board-figure">
                                                    <img src="/assets/images/pr/brand-ci-img-01.png" alt="SK 네트웍스 로고마크 공간규정 A 관련 이미지 - 시그니춰 특성 유지를 위해 SK로고 내 글자 사이즈를 기준으로 0.5x의 여백을 필요로 합니다.">
                                                </div>
                                                <p class="board-info">
                                                    SK CI 적용시 반드시 공간규정에 따른 충분한 공간을 확보해야 합니다.<br> 워드마크 ‘K’의 높이를 X라고 가정할 때, X를 기준으로 사방에 0.5X만큼의 공간이 확보되어야 합니다.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="board-item">
                                            <div class="board-wrap">
                                                <div class="board-subject">
                                                    <span class="board-name">공간규정 B</span>
                                                </div>
                                                <div class="board-figure">
                                                    <img src="/assets/images/pr/brand-ci-img-02.png" alt="SK 네트웍스 로고마크 공간규정 B 관련이미지 - 시그니춰 가독성 확보가 필요한 경우 위해 SK로고 내 글자 사이즈를 기준으로 0.25x의 여백만 줄 수도 있습니다.">
                                                </div>
                                                <p class="board-info">
                                                    디지털 매체, 옥외광고 등 가독성 확보가 중요한 매체에서 공간의 제약으로 인해 가독성 확보가 어려울 경우에 한해서 공간 규정 B를 적용할 수 있습니다.<br> 워드마크의 ‘K’의 높이를 X라고 가정할 때, X를 기준으로 사방에 0.25X만큼의 공간 확보가 필요합니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 color-regulation">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">색상규정</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">SK의 색상은 주요 색상과 보조 색상으로 구성되어 있습니다. SK의 주요 색상인 SK Red와 SK Orange는 SK를 대표하는 색상입니다.<br> 특히, 지속적인 동일 색상의 사용은 SK의 이미지 구축에 중요한 역할을 하므로 색상 활용 기준을 준수해야 합니다.</p>
                                    <div class="data-display design1 case1 type1">
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-subject">주요 색상</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-display sk-color">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #EA002C;">
                                                                            <em class="item-subject">SK Red</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">186C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">0 / 100 / 81 / 4</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">234 / 0 / 44</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#EA002C</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #F47725;">
                                                                            <em class="item-subject">SK Orange</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">158C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">0 / 66 / 91 / 4</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">255 / 122 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#F47725</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-subject">보조 색상</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <div class="data-display sk-color">
                                                            <ul class="data-list">
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #FBBC05;">
                                                                            <em class="item-subject">SK Yellow</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">7408C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">0 / 20 / 100 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">251 / 188 / 5</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#FBBC05</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #B3CF0A;">
                                                                            <em class="item-subject">SK Green</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">2292C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">43 / 0 / 100 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">155 / 207 / 10</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#B3CF0A</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #009A93;">
                                                                            <em class="item-subject">SK Teal</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">3275C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">100 / 0 / 50 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">0 / 154 / 147</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#009A93</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #0072C6;">
                                                                            <em class="item-subject">SK Blue</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">300C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">100 / 50 / 0 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">0 / 114 / 198</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#0072C6</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #0E306D;">
                                                                            <em class="item-subject">SK Navy</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">288C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">100 / 79 / 0 / 37</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">14 / 48 / 109</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#0E306D</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #68127A;">
                                                                            <em class="item-subject">SK Purple</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">526C</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">75 / 100 / 0 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">104 / 33 / 122</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#68127A</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #fff; border-color: #27272A;">
                                                                            <em class="item-subject accent color5">SK White</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">White</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">0 / 0 / 0 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">255 / 255 / 255</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#FFFFFF</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="data-item">
                                                                    <div class="item-wrap">
                                                                        <div class="item-head" style="background-color: #000; border-color: #27272A;">
                                                                            <em class="item-subject">SK Black</em>
                                                                        </div>
                                                                        <div class="item-body">
                                                                            <ul class="color-list">
                                                                                <li class="list-item">
                                                                                    <span class="head">PANTONE</span>
                                                                                    <span class="body">Black</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">CMYK</span>
                                                                                    <span class="body">0 / 0 / 0 / 100</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">RGB</span>
                                                                                    <span class="body">0 / 0 / 0</span>
                                                                                </li>
                                                                                <li class="list-item">
                                                                                    <span class="head">HEX</span>
                                                                                    <span class="body">#000000</span>
                                                                                </li>
                                                                            </ul>
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
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 color-criteria">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">배경 색상 활용 기준</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">SK CI를 컬러로 표현할 때는 백색 배경에 적용하는 것이 원칙이나, SK CI의 이미지 표현이 잘 드러나는 범위 내에서 다양한 배경색을 활용할 수 있습니다.<br> 시각적으로 가시성이 낮거나, 피로도를 느끼게 하는 조합의 사용을 지양하며, 본 페이지의 예시를 참고하여 활용합니다.</p>
                                    <div class="data-display design1 case2 type1 align3">
                                        <div class="data-list">
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-subject">무채색 배경 색상 활용 기준</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <img src="/assets/images/pr/brand-gray-img.jpg" alt="Full Color 30%~70% 사용불가, White 0%~20% 사용불가, Black 70%~사용불가">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="data-item">
                                                <div class="data-wrap">
                                                    <div class="data-head">
                                                        <em class="data-subject">보조 색상</em>
                                                    </div>
                                                    <div class="data-body">
                                                        <img src="/assets/images/pr/brand-summary-img.jpg" alt="예시 그래프 이미지입니다. 자세한 설명은 하단 내용을 참고하세요.">
                                                        <table class="blind">
                                                            <caption>이 표는 보조 색상 가로축 로고 컬러, 세로축 배경컬러 별 색상 활용 예시 정보를 제공합니다.</caption>
                                                            <thead>
                                                            <tr>
                                                                <th scope="col"></th>
                                                                <th scope="col">Full Color</th>
                                                                <th scope="col">Sk Red</th>
                                                                <th scope="col">SK Orange</th>
                                                                <th scope="col">SK Yellow</th>
                                                                <th scope="col">SK Green</th>
                                                                <th scope="col">Sk Teal</th>
                                                                <th scope="col">SK Blue</th>
                                                                <th scope="col">SK Navy</th>
                                                                <th scope="col">SK Purple</th>
                                                                <th scope="col">White</th>
                                                                <th scope="col">Black</th>
                                                            </tr>
                                                            </thead>
                                                            <tbody>
                                                            <tr>
                                                                <th scope="row">SK Red</th>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Orange</th>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Yellow</th>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Green</th>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Teal</th>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Blue</th>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Navy</th>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Purple</th>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td></td>
                                                                <td></td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK White</th>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                                <td>가능</td>
                                                            </tr>
                                                            <tr>
                                                                <th scope="row">SK Black</th>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td>가능</td>
                                                                <td></td>
                                                            </tr>
                                                            </tbody>
                                                        </table>
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