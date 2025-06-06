<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-06-28
  Time: 오후 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>기후변화 &lt; 환경 &lt; Sustainability &lt; SK Networks</title>
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
    <div class="main esg climate-change" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">환경</span></li>
                            <li class="data-item"><span class="item-text">기후변화</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">지속가능한 지구를 위한<br>
                            경영을 하겠습니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">기후변화</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-natural.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">기후변화 페이지</div>
                    <div class="content-body">
                        <div class="section design1 case2 type1 climate">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">기후변화 거버넌스 체계</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <p class="para">SK네트웍스는 LPG 사업 양도(2017), 석유제품 도매사업 양도(2017년), 호주 석탄 사업 철수(2019년), 석유제품 소매사업 양도(2020년 3월) 등을 이사회에서 의결함으로써 기후변화에 미치는 영향을 감축하는 방향으로 비즈니스 포트폴리오를 조정해 왔습니다.</p>
                                    <p class="para">2021년 3월, 기후변화를 포함한 환경 관련 이슈에 적극적으로 대응하고자 이사회 의결로 CEO와 사외이사 5인으로 구성된 '전략ㆍESG위원회'를 신설하였으며, 2022년 5월부터는 이사회 전원이 전략ㆍESG위원회에 참여하고 있습니다.</p>
                                    <p class="comment design1">* 2021년 신설 당시 명칭은 ‘ESG경영위원회’였으며, 2024년 8월 ‘전략ㆍESG위원회’로 명칭 변경</p>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1 governance">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">기후변화 Governance*</h4>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/esg-diagram2.svg" alt="SV추진 조직 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only" style="max-width: 1098px;">
                                                    <img src="/assets/images/sustainability/esg-diagram2-mo.png" alt="SV추진 조직 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." class="mo-only" style="min-width: 512px;">
                                                </div>
                                                <div class="blind">
                                                    <em>BOD</em>
                                                    <ul>
                                                        <li>전략∙ESG위원회</li>
                                                        <li>CEO
                                                            <ul>
                                                                <li>경영지원본부장
                                                                    <ul>
                                                                        <li>SV밋업(meet up)</li>
                                                                        <li>전사ESG추진위원회</li>
                                                                    </ul>
                                                                </li>
                                                                <li>기획재무실</li>
                                                                <li>
                                                                    ESG경영팀
                                                                    <ul>
                                                                        <li>환경 CoE</li>
                                                                    </ul>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <p class="comment design1">* 2025년 조직도 기준</p>
                                    </div>
                                    <div class="data-display">
                                        <div class="data-list">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table class="col-w-1">
                                                    <caption>이 표는 기후변화 Governance정보를 제공하며 위상, 조직명, 구성, 구성원, 역할, 2023년 개최현황으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 12%;">
                                                        <col style="width: 15%;">
                                                        <col style="width: auto">
                                                        <col style="width: auto">
                                                        <col style="width: 12%;">
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">위상</th>
                                                            <th scope="col">조직명</th>
                                                            <th scope="col">구성*</th>
                                                            <th scope="col">역할</th>
                                                            <th scope="col">2024년<br>개최현황</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>이사회 내<br>위원회</td>
                                                            <td>전략ㆍESG위원회</td>
                                                            <td class="align1">이사회 멤버<br> - 사내이사 2인, 기타비상무이사 1인, 사외이사 5인</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">환경, 사회적 가치 및 회사의 거버넌스와 관련 전략 및 주요사항 검토/분석으로 이사회 주요 의사결정 사항 사전 심의</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td>13회</td>
                                                        </tr>
                                                        <tr>
                                                            <td>전사 경영 층 회의체</td>
                                                            <td>전사 ESG 추진위원회</td>
                                                            <td class="align1">CEO, 사업총괄사장, 경영지원본부장(위원장), 기획재무실장, 회계실장, 기업문화실장, 감사실장, 지속경영실장, 자회사 대표 및 BU장</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG 전략 실행력 강화</li>
                                                                        <li class="data-item">BM 전략(자회사 포함)과 ESG 방향성 연계</li>
                                                                        <li class="data-item">ESG 경영 활동 점검 및 논의</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td>6회</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="3">실무진</td>
                                                            <td>SV밋업</td>
                                                            <td class="align1">경영지원본부장, 기업문화실장, 사업별(자회사 포함)SV/ESG 담당 임원/팀장/실무자, 전략팀원, SV추진팀</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">사업별 SV 중점 추진과제 및 진행 현황 공유</li>
                                                                        <li class="data-item">SV/ESG 트랜드 공유 및 대응방안 논의</li>
                                                                        <li class="data-item">이해관계자 참여 진행사항 공유</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td>6회</td>
                                                        </tr>
                                                        <tr>
                                                            <td>환경CoE**</td>
                                                            <td class="align1">사업별(자회사 포함) SV/ESG 담당 실무자, SV추진팀</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">Net Zero 2040 추진(감축방안 도출) 데이터 측정/분석</li>
                                                                        <li class="data-item">사업별 환경경영체계 내재화 및 전문성 확보</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td>5회</td>
                                                        </tr>
                                                        <tr>
                                                            <td>SV추진팀</td>
                                                            <td class="align1"></td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">Net Zero 2040 추진 실무 조직</li>
                                                                        <li class="data-item">국내외 환경 관련 이니셔티브 참여/운영</li>
                                                                        <li class="data-item">환경 데이터 측정/분석</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                            <td>-</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <p class="comment design1">* 2024년 조직 기준<br> ** CoE(Committee of Experts) 전문가 위원회</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">전략ㆍESG위원회 논의 현황</h4>
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
                                                                        <label for="level-sel-manage" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-manage">
                                                                            <option value="0" selected hidden disabled>년도 선택</option>
                                                                            <option value="2024">2024</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
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
                                        <!-- ESG경영위원회 2024 -->
                                        <div class="esg-inform esg-manage esg-option2024">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 1020px;">
                                                    <caption>이 표는 2024년 전략ㆍESG위원회 논의 현황 정보를 제공하며 회차, 개최일자, 주요안건, 세부내용으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 10%;">
                                                        <col style="width: 14%;">
                                                        <col style="width: 34%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최일자</th>
                                                            <th scope="col">주요 안건</th>
                                                            <th scope="col">세부내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>4월</td>
                                                            <td class="align1">FY2023년 지속가능경영보고서 발간 계획 보고</td>
                                                            <td class="align1">중대성 평가 결과 (기후변화 대응 중대이슈 선정) 등</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //ESG경영위원회 2024 -->
                                        <!-- ESG경영위원회 2023 -->
                                        <div class="esg-inform esg-manage esg-option2023 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 1020px;">
                                                    <caption>이 표는 2023년 전략ㆍESG위원회 논의 현황 정보를 제공하며 회차, 개최일자, 주요안건, 세부내용으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 10%;">
                                                        <col style="width: 14%;">
                                                        <col style="width: 34%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최일자</th>
                                                            <th scope="col">주요 안건</th>
                                                            <th scope="col">세부내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>03월09일</td>
                                                            <td class="align1">2023년 경영계획 승인의 건</td>
                                                            <td class="align1">Net Zero 2040 실행력 강화(SBTi 목표 승인 등)</td>
                                                        </tr>
                                                        <tr>
                                                            <td rowspan="2">6</td>
                                                            <td rowspan="2">09월18일</td>
                                                            <td class="align1">‘2022 지속가능경영보고서’ 발간 보고</td>
                                                            <td class="align1">중대 이슈, 사업별 ESG 성과 사례, Global 기후 공시 대응력 강화 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="align1">그룹 ESG 핵심지표 ’23년 2Q 성과</td>
                                                            <td class="align1">Net Zero 추진현황 (’23년 1,2Q 감축 이행 실적, ’22년 Scope 3 배출량 등)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>8</td>
                                                            <td>12월11일</td>
                                                            <td class="align1">SK일렉링크(주) 증자 참여의 건 등</td>
                                                            <td class="align1">EV충전 인프라 확대를 통한 온실가스 저감에 기여</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2023 -->
                                        <!-- ESG경영위원회 2022 -->
                                        <div class="esg-inform esg-manage esg-option2022 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 1020px;">
                                                    <caption>이 표는 2022년 전략ㆍESG위원회 논의 현황 정보를 제공하며 회차, 개최일자, 주요안건, 세부내용으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 10%;">
                                                        <col style="width: 14%;">
                                                        <col style="width: 34%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최일자</th>
                                                            <th scope="col">주요 안건</th>
                                                            <th scope="col">세부내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>03월08일</td>
                                                            <td class="align1">2022년 경영계획 승인의 건</td>
                                                            <td class="align1">Net Zero 2040 실행력 강화, SBTi 참여 등</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>04월28일</td>
                                                            <td class="align1">‘2022 지속가능경영보고서’ 발간 보고</td>
                                                            <td class="align1">온실가스 배출량 및 ESG 핵심지표 반영</td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>08월19일</td>
                                                            <td class="align1">전기자동차 충전사업 투자 승인의 건</td>
                                                            <td class="align1">EV충전 인프라 확대를 통한 온실가스 저감에 기여</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2022 -->
                                        <!-- ESG경영위원회 2021 -->
                                        <div class="esg-inform esg-manage esg-option2021 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 1020px;">
                                                    <caption>이 표는 2021년 전략ㆍESG위원회 논의 현황 정보를 제공하며 회차, 개최일자, 주요안건, 세부내용으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 10%;">
                                                        <col style="width: 14%;">
                                                        <col style="width: 34%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최일자</th>
                                                            <th scope="col">주요 안건</th>
                                                            <th scope="col">세부내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>06월18일</td>
                                                            <td class="align1">SK네트웍스의 과거와 현재,<br> Value_up방향성 Workshop</td>
                                                            <td class="align1">Net Zero 2040 추진(案)</td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>07월29일</td>
                                                            <td class="align1">민팃사업부 현물출자의 건</td>
                                                            <td class="align1">순환경제 구축을 통한 환경적 가치 창출 확대</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //ESG 등급 2021 -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case2 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">전사ESG추진위원회 논의 현황</h4>
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
                                                                        <label for="level-sel-propel" class="blind">년도 선택</label>
                                                                        <select name="name" id="level-sel-propel">
                                                                            <option value="0" selected hidden disabled>년도 선택</option>
                                                                            <option value="2024">2024</option>
                                                                            <option value="2023">2023</option>
                                                                            <option value="2022">2022</option>
                                                                            <option value="2021">2021</option>
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
                                        <!-- 전사ESG추진위원회 2024 -->
                                        <div class="esg-inform esg-propel esg-option2024">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 610px;">
                                                    <caption>이 표는 2024년 전사ESG추진위원회 논의 현황 정보를 제공하며 회차, 개최월, 주요내용 으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 11%;">
                                                        <col style="width: 13.75%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최월</th>
                                                            <th scope="col">주요 내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>02월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">24년 Net Zero 세부 추진 계획</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>04월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">Net Zero 시나리오 업데이트</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>08월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">그룹 Net Zero 이행 지원 협의체 논의 안건 공유<br> - 협의체 운영 계획, WG(직접감축, RE100, 탄소배출권) 운영 계획</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>10월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">그룹 Net Zero 이행 지원 협의체 논의 안건 공유<br> - 그룹 Net Zero 관리 시스템 구축 등</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>5</td>
                                                            <td>12월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">그룹 Net Zero 이행 지원 협의체 논의 안건 공유<br> - WG '24년 리뷰 및 향후 계획, 그룹 상쇄 배출권 활용 Guideline 등</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //전사ESG추진위원회 2024 -->
                                        <!-- 전사ESG추진위원회 2023 -->
                                        <div class="esg-inform esg-propel esg-option2023 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 610px;">
                                                    <caption>이 표는 2023년 전사ESG추진위원회 논의 현황 정보를 제공하며 회차, 개최월, 주요내용 으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 11%;">
                                                        <col style="width: 13.75%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최월</th>
                                                            <th scope="col">주요 내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>02월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">자회사 ESG핵심지표 관리방안</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>04월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">내부탄소가격제도 소개 및 적용방안</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>06월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">협력사 ESG 관리방안</li>
                                                                        <li class="data-item">‘22년 SV화폐화 측정</li>
                                                                        <li class="data-item">그룹ESG핵심지표 1Q 성과</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>08월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG 평가와 기업가치 연관성</li>
                                                                        <li class="data-item">기후변화에 따른 물리적 Risk 분석</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>5</td>
                                                            <td>11월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">그룹/자회사 ESG 핵심지표 2023년 성과 전망</li>
                                                                        <li class="data-item">투자 프로세스 ESG 통합 방안</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //전사ESG추진위원회 2023 -->
                                        <!-- 전사ESG추진위원회 2022 -->
                                        <div class="esg-inform esg-propel esg-option2022 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 610px;">
                                                    <caption>이 표는 2022년 전사ESG추진위원회 논의 현황 정보를 제공하며 회차, 개최월, 주요내용 으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 11%;">
                                                        <col style="width: 13.75%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최월</th>
                                                            <th scope="col">주요 내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>01월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">SBTi 가입 추진 계획</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>02월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG 주요 동향 – MSCI ’22년 10대 ESG Trend, BlackRock 연례 서한, 탄소중립기본법 소개</li>
                                                                        <li class="data-item">ESG 과제 조직별 KPI 수립(탄소 배출량 감축)</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>3</td>
                                                            <td>03월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG 주요 동향 – EU 지속가능성 실사법 초안, EU 재생에너지 확보 가속화, 신정부 탄소중립 정책 방향</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>4</td>
                                                            <td>04월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG 주요 동향 – SEC 기후공시 의무화, IFRS-ISSB 지속가능성 공시기준 초안, EU 탄소국경조정제도(CBAM) 수정안 등</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>5</td>
                                                            <td>05월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">협력사 ESG 개선 지원 프로그램</li>
                                                                        <li class="data-item">ESG 주요 동향 – KSSB 지속가능성 공시 기준 정책 제언, 미래 먹거리로 주목받는 대체식품 등</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>6</td>
                                                            <td>06월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">워커힐 ESG 전략과제 진행 현황 (폐기물 감축 및 재활용률 제고 방안)</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>7</td>
                                                            <td>07월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG Signpost – 그룹핵심지표, 탄소 배출량 감축, EV 전환</li>
                                                                        <li class="data-item">한국 TCFD Alliance 참여 현황</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>8</td>
                                                            <td>08월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG Signpost – 그룹 핵심지표, 탄소 배출량 감축, EV 전환</li>
                                                                        <li class="data-item">ESG 주요 동향 – 물 재무평가 이니셔티브(VWFI) 출범, Global 전기차 충전소 합종연횡, 美 인플레이션 감축법 시행, 최고의 기후 투자는 대체 단백질 투자</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>9</td>
                                                            <td>09월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG Signpost – 그룹 핵심지표, 탄소 배출량 감축, EV 전환</li>
                                                                        <li class="data-item">그룹ESG핵심지표 2Q 성과</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>10</td>
                                                            <td>10월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG Signpost – 그룹 핵심지표, 탄소 배출량 감축, EV 전환</li>
                                                                        <li class="data-item">그룹ESG핵심지표 개선 방안</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>11</td>
                                                            <td>11월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">ESG Signpost - 그룹 핵심지표, 탄소 배출량 감축, EV 전환</li>
                                                                        <li class="data-item">ESG 주요 동향 - 삼성전자 RE100 가입, COP27 개막</li>
                                                                        <li class="data-item">’22년 그룹ESG핵심지표 성과 Report 공유</li>
                                                                        <li class="data-item">[외부강연] 변화하는 세계와 Global Perspective</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //전사ESG추진위원회 2022 -->
                                        <!-- 전사ESG추진위원회 2021 -->
                                        <div class="esg-inform esg-propel esg-option2021 blind">
                                            <div class="t-display design1 case1 type1 align3 scroll">
                                                <table style="min-width: 610px;">
                                                    <caption>이 표는 2021년 전사ESG추진위원회 논의 현황 정보를 제공하며 회차, 개최월, 주요내용 으로 구성되어 있습니다.</caption>
                                                    <colgroup>
                                                        <col style="width: 11%;">
                                                        <col style="width: 13.75%;">
                                                        <col>
                                                    </colgroup>
                                                    <thead>
                                                        <tr>
                                                            <th scope="col">회차</th>
                                                            <th scope="col">개최월</th>
                                                            <th scope="col">주요 내용</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>1</td>
                                                            <td>08월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">글로벌 이니셔티브 가입 (SBTi, ZWTL, EV100, WWF PACT 소개 및 참여 논의)</li>
                                                                        <li class="data-item">EU 탄소국경조정메커니즘 소개 및 대응 방안</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>2</td>
                                                            <td>09월</td>
                                                            <td class="align1">
                                                                <div class="bullet-display design1 case1 type2">
                                                                    <ul class="data-list">
                                                                        <li class="data-item">그룹ESG핵심지표 2Q 성과</li>
                                                                        <li class="data-item">SK네트웍스 환경 컨설팅 결과 공유</li>
                                                                    </ul>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <!-- //전사ESG추진위원회 2022 -->
                                    </div>
                                    <div class="banner design2 case2 type2">
                                        <div class="banner-wrap">
                                            <div class="banner-head">
                                                <picture>
                                                    <source media="(max-width: 1023px)" srcset="/assets/images/logo/logo-c1-e.svg">
                                                    <source media="(max-width: 1920px)" srcset="/assets/images/logo/logo-w-e.svg">
                                                    <img src="/assets/images/logo/logo-w-e.svg" alt="SK networks 로고 이미지">
                                                </picture>
                                            </div>
                                            <div class="banner-body">
                                                <p class="para">기후변화에 대한 보다 자세한 내용은 <br class="pc-only">지속가능경영보고서 내 TCFD 관련 페이지에서 확인하실 수 있습니다.</p>
                                            </div>
                                            <div class="banner-util">
                                                <a class="btn design3 case1 type1 color2 ar-icon-arrow-right2-bg" href="/upload/public/data/ko/sustainability/환경/TCFD_SK networks_2023 Sustainability Report_(Kor).pdf">
                                                    <span class="btn-text">TCFD 보고서 다운로드</span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case4 type1 net-zero">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">Net Zero 2040</h4>
                                        <p class="section-summary">SK네트웍스는 2021년 6월 Net Zero 2040 선언 후 2022년 9월 SBTi에 가입 후 목표를 제출했으며, 검증을 거쳐 2023년 8월 단기목표와 Net Zero 목표를 승인 받았습니다. 이를 통해 기후변화 대응 및 환경 문제 해결을 진정성 있게 추진하고자 합니다.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <p class="post-subject">
                                                        온실가스 배출량* 및<br class="mo-only"> Net Zero 2040 시나리오
                                                    </p>
                                                </div>
                                                <div class="post-aside">
                                                    <p class="path">감축 경로**</p>
                                                    <p class="unit">(단위: 천tCO2eq)</p>
                                                </div>
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/esg-netzero-pc.png" alt="온실가스 배출량 및 Net Zero 2040 시나리오 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                    <img src="/assets/images/sustainability/esg-netzero-mo.png" alt="온실가스 배출량 및 Net Zero 2040 시나리오 이미지입니다. 자세한 설명은 하단 내용을 참고하세요." style="min-width: 685px;" class="mo-only">
                                                </div>
                                                <div class="blind">
                                                    <strong>온실가스 배출량* 및 Net Zero 2040 시나리오 (단위: 천tCO2eq)</strong>
                                                    <ul>
                                                        <li>2021년 - 45.6</li>
                                                        <li>2022년 - 45.6 / 시장기반 배출량 42.1</li>
                                                        <li>2023년 - 43.7 / 시장기반 배출량 41.5</li>
                                                        <li>2024년 - 43.2</li>
                                                        <li>2025년 - 41.3</li>
                                                        <li>2031년 - 24.5(2021년 대비 46.2% 감소)</li>
                                                        <li>2035년 - 13.6</li>
                                                        <li>2040년 - 2.5(2021년 대비 95% 감소)</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="comment design1">
                                        * SK네트웍스 및 자/손회사 포함 총 8개사 기준<br>
                                        ** Scope 1, 2 배출량(Scope 3 제외), 2021/2022/2023년은 실적<br>
                                        *** 시장기반 배출량
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="section csr-cont">
                            <div class="data-display design1 case1 type4">
                                <div class="data-list">
                                    <div class="data-item">
                                        <div class="data-wrap">
                                            <div class="data-head">
                                                <em class="data-subject">대상회사: 총 8개 사(자손회사 포함)</em>
                                            </div>
                                            <div class="data-body">
                                                <p class="para">- SK네트웍스, SK네트웍스서비스, SK매직, SK매직서비스, SK렌터카, SK렌터카서비스, 민팃, 카티니</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-item">
                                        <div class="data-wrap">
                                            <div class="data-head">
                                                <em class="data-subject">SBTi 1.5℃ 시나리오 기준 적용 (매년 4.2% 이상 감축)</em>
                                            </div>
                                            <div class="data-body">
                                                <p class="para">
                                                    - 기준연도 : 2021년<br>
                                                    - 2022 ~ 31년 연평균 4.2% 감축, 2032 ~ 40년 연평균 6.4% 감축<br>
                                                    - 2022년 9월 SBTi에 참여하고, 단기 목표 및 Net Zero 목표 제출 후 승인 완료
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="data-item">
                                        <div class="data-wrap">
                                            <div class="data-head">
                                                <em class="data-subject accent color8">연료 전환, 업무용 차량 전기차 전환, 에너지 효율 개선/시설 투자, 재생에너지 사용 및 신규 Tech 개발 등 다양한 방안을 통해 온실가스 감축 전략을 실행</em>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="section design1 case4 type1">
                            <div class="section-wrap">
                                <div class="section-head">
                                    <div class="section-subject">
                                        <h4 class="section-name">재생 에너지 전환 달성 계획</h4>
                                        <p class="section-summary">2040년까지 재생 에너지 100% 전환을 목표로 하며 REC구매, PPA, 태양광 에너지 사용 등을 기반으로 한 중장기 로드맵을 수립하였습니다.<br class="pc-only"> 2023년 SK네트웍스는 주요 사업장 내 설치한 태양광 설비를 활용한 에너지 소비, 녹색프리미엄 구매 등의 활동을 통해 재생에너지 달성 계획을 이행 중입니다.</p>
                                    </div>
                                </div>
                                <div class="section-body">
                                    <div class="post-list design5 case1 type1">
                                        <div class="post-item">
                                            <div class="post-wrap">
                                                <div class="post-head">
                                                    <p class="post-subject">
                                                        2040 RE100 Roadmap
                                                    </p>
                                                </div>
                                                <div class="post-figure">
                                                    <img src="/assets/images/sustainability/esg-re100-pc.svg" alt="2040 RE100 Roadmap 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." class="pc-only">
                                                    <img src="/assets/images/sustainability/esg-re100-mo.png" alt="2040 RE100 Roadmap 이미지 입니다. 자세한 설명은 하단 내용을 참고하세요." style="min-width: 697px;" class="mo-only">
                                                </div>
                                                <div class="blind">
                                                    <strong>2040 RE100 Roadmap</strong>
                                                    <ul>
                                                        <li>2022년(실적) - 10% (녹색프리미엄, 태양광)</li>
                                                        <li>2025년 - 23% (녹색프리미엄, 태양광)</li>
                                                        <li>2030년 - 41% (PPA, 태양광)</li>
                                                        <li>2035년 - 77% (PPA, 태양광)</li>
                                                        <li>2040년 - 100% (PPA, 태양광)</li>
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

    addSelectChangeListener('level-sel-manage', 'esg-manage');
    addSelectChangeListener('level-sel-propel', 'esg-propel');
</script>
</body>

</html>