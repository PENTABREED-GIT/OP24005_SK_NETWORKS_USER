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
    <title>구성원 행복 &lt; 사회 &lt; Sustainability &lt; SK Networks</title>
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
            Tab();
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
    <div class="main esg member" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-head design5" data-local-animation="case-2">
                    <div class="local-info">
                        <ul class="data-list breadcrumb design1 case2 dark">
                            <li class="data-item"><span class="item-text">Home</span></li>
                            <li class="data-item"><span class="item-text">Sustainability</span></li>
                            <li class="data-item"><span class="item-text">사회</span></li>
                            <li class="data-item"><span class="item-text">구성원 행복</span></li>
                        </ul>
                    </div>
                    <div class="local-subject">
                        <h2 class="local-name">지속가능한 사회를 위한<br>
                            경영을 하겠습니다.</h2>
                    </div>
                    <div class="local-aside">
                        <div class="local-wrap">
                            <h3 class="local-title">구성원 행복</h3>
                        </div>
                    </div>
                    <div class="local-figure">
                        <img src="/assets/images/sustainability/bg-local-head-esg-society.jpg" alt="">
                    </div>
                    <div class="local-util">
                        <p class="scroll-guide">Scroll Down</p>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">구성원 행복</div>
                    <div class="content-info">
                    </div>
                    <div class="content-body">
                        <div class="section design1 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <div class="tab-display design1 case1 type1">
                                        <div class="swiper tab-wrap">
                                            <ul class="swiper-wrapper tab-list" role="tablist">
                                                <li id="tab1" class="swiper-slide tab-item" aria-controls="tab-panel1">
                                                    <button role="tab" class="tab-text">인권 보호</button>
                                                </li>
                                                <li id="tab2" class="swiper-slide tab-item" aria-controls="tab-panel2">
                                                    <button role="tab" class="tab-text">인재 육성 및 관리</button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="panel-display design1 case1">
                                        <div class="panel-list">
                                            <!-- tab1 -->
                                            <div id="tab-panel1" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">인권 보호</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK네트웍스는 경영 활동의 궁극적인 목적을 ‘구성원 행복’으로 정의하고, 구성원은 경영 활동의 주체로서 다양한 이해관계자의 지속적인 행복을 추구하고 있습니다. UN 등 인권 및 노동 관련 국제기구에서 요구하는 원칙에 기반하여 아래와 같이 ‘SK네트웍스 인권정책’을 제정하고, 이를 인권 및 노동과 관련된 모든 정책에 반영하고 있습니다. 또한 CEO 포함 각 자회사 대표 및 C-Level 임원이 참여하는 전사ESG추진위원회에서 인권 경영에 대한 필요성 및 인권 실사 결과 보고를 통한 향후 로드맵 논의 등 조직의 인권 이슈를 주기적으로 보고/논의합니다.
                                                                    </p>
                                                                </div>
                                                                <div class="section-util">
                                                                    <div class="btn-display design1 align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/사회/구성원 행복/인권경영선언문.jpg"><span class="btn-text">인권경영선언문 다운로드</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case3 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">SK네트웍스 인권 정책</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="data-display design3 case1 type1">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">임직원들의 인권을 존중합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 모든 임직원이 가지는 기본적 인권을 확인하고 이를 보장하도록 적극 노력합니다. 만일 회사가 폭언 · 폭행 뿐만 아니라 성희롱, 직장 내 괴롭힘 등 비인격적인 행위를 확인할 경우, 사내 규정에 의해 조치합니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">차별을 하지 않습니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 임직원의 성별, 나이, 출신 국가, 인종, 종교, 혼인, 임신 또는 출산 등의 사유로 합리적인 이유 없이 채용 또는 임금, 승격 등의 근로 조건을 다르게 하거나 그 밖에 불리한 조치를 하지 않습니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">최저임금 이상의 급여를 적기에 지급합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 각 국가에서 정한 노동관계법에 따라 최저임금 이상의 급여를 적기에 지급하고 이에 대한 급여명세서를 제공하고 있습니다. 또한 연장·야간·휴일 근로가 발생할 경우, 각 법령에서 요구하는 수당을 지급하고 있습니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">강제노동을 금지합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 폭행, 협박, 감금, 그 밖에 신체·정신상의 자유를 부당하게 구속하는 수단으로 임직원의 자유 의사에 어긋나는 노동을 강요하지 않습니다. 또한 회사는 강제노동이 발생하지 않도록 국제적으로 인정하는 신분증 원본 일체의 양도를 금지하고 있으며, 퇴직의 자유도 보장합니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">근로시간 및 휴무 규정을 준수합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 노동관계법에서 정한 근로시간, 연장·야간·휴일근로, 휴게시간, 휴무 규정을 준수하고 있으며, 이행 여부를 정기적으로 확인하고 있습니다. 또한 임직원이 근로시간 이외에 초과근무를 하였을 시에는 오프타임 휴가 등을 부여하도록 조치하고 있습니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">아동 근로자를 채용하지 않습니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 각 국가에서 지정하는 최저 고용 연령을 준수함과 동시에 만 18세 미만의 청소년을 고용하지 않도록 채용 프로세스를 운영하고 있습니다. 또한 회사는 만 18세 미만의 청소년 고용 여부를 주기적으로 점검하고 있으며, 만일 이를 확인할 경우 생산에 직접적인 업무뿐만 아니라 도덕상 또는 보건상 유해 · 위험한 업무를 부여하지 않도록 조치하고 야간 근무, 휴일 근무 및 초과 근무가 발생하지 않도록 관리합니다 . 인턴 혹은 실습 등을 운영할 경우에는 각 국가의 관련 법령을 준수하는지 지속적으로 확인합니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">결사의 자유를 보장합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 노동관계법에서 규정한 단결권, 단체교섭권 및 단체행동권을 보장하고 있으며, 노동조합 가입 및 활동을 이유로 부당한 처우를 하지 않습니다. 이는 결사의 자유로써, 평화로운 집회에 참여할 자유뿐만 아니라 참여하지 않을 자유도 보장합니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">온/오프라인 고충처리 프로세스를 운영하고 있습니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 윤리경영 제보, 사내 고충 상담 프로그램 등을 통하여 임직원의 고충을 365일 확인하고 있습니다. 만일 임직원의 고충이 확인되면, 사내 정책에 따라 적의 처리하고 있으며, 필요에 따라 제보자 보호 정책을 시행하고 있습니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                            <li class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-subject">
                                                                                            <p class="tit">연 1회 인권 보호 여부를 점검합니다.</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <p class="para">회사는 UNGC(유엔글로벌콤팩트) 의 가이드에 따라 정책을 적절하게 운영하고 있는지 연 1회 자체 점검합니다. 만일 일부 미흡사항을 확인할 경우, 즉시 조치하고 있습니다.</p>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">인권보호 목표 및 달성 Roadmap</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스는 구성원의 인권을 보호하기 위한 인권 경영 체계를 구축해 나가고 있습니다.</p>
                                                                    <div class="data-display roadmap case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2023</em>
                                                                                            <p class="para">인권 경영 시스템 구축</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case2 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">구성원 인권 실사 진행</li>
                                                                                                <li class="data-item">인권 영향 평가/리스크 진단</li>
                                                                                                <li class="data-item">인권 리스크 진단 결과를 통한 취약점 진단 및 개선</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2025</em>
                                                                                            <p class="para">인권 경영 외부 확대</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권 경영 성과 공개</li>
                                                                                                <li class="data-item">그룹 멤버사, 파트너사 및 국내외 인권 기구와의<br> 인권 정책, 경영방침 교류, 공감대 확산</li>
                                                                                                <li class="data-item">인권 정책∙경영 대외 인정</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2027</em>
                                                                                            <p class="para">인권 경영 고도화</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권 경영 시스템의 글로벌 공급망 확대</li>
                                                                                                <li class="data-item">파트너사 인권 정책/실사 체계 정립 지원</li>
                                                                                                <li class="data-item">글로벌 BP 수준으로 인권 정책 심화/발전</li>
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
                                                        <div class="section design4 case3 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="data-display design2 case4 type1">
                                                                        <ul class="data-list">
                                                                            <li class="data-item">
                                                                                <div class="item-wrap">
                                                                                    <div class="item-head">
                                                                                        <p class="item-subject">인권 실사 프로세스 </p>
                                                                                    </div>
                                                                                    <div class="item-util">
                                                                                        <div class="btn-display">
                                                                                            <a class="btn design3 case3 type1 color6 ar-icon-arrow-right-up2" href="/upload/public/data/ko/sustainability/사회/구성원 행복/SKN_인권영향평가 체크리스트 항목_Kor_230327.pdf"><span class="btn-text">인권 실사 체크리스트</span></a>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body process">
                                                                    <div class="post-list design5 case1 type1">
                                                                        <div class="post-item">
                                                                            <div class="post-wrap">
                                                                                <div class="post-figure">
                                                                                    <img src="/assets/images/sustainability/member-process.svg" alt="인권정책선언 및 내재화, 인권영향평가, 인권정책선언 수립 및 이행, 모니터링 및 공시, 고충메커니즘 운영" class="pc-only">
                                                                                    <img src="/assets/images/sustainability/member-process-mo.png" alt="인권정책선언 및 내재화, 인권영향평가, 인권정책선언 수립 및 이행, 모니터링 및 공시, 고충메커니즘 운영" class="mo-only">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="data-display design1 case1 type2">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">구성원 인권 인식 수준 조사</li>
                                                                                                <li class="data-item">구성원/이해관계자 인권 경영 인식 수준/우선순위 파악</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권침해 이슈 분석</li>
                                                                                                <li class="data-item">조직 내/외부 사례분석</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권 영향평가 설계</li>
                                                                                                <li class="data-item">분석 결과 토대로 한 인권영향평가 지표 설정</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권 영향평가 실시</li>
                                                                                                <li class="data-item">내부 업무 담당자 자체 평가(서베이 등)</li>
                                                                                                <li class="data-item">외부 전문 위원 현장 실사</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type7">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">인권 경영 개선 도출</li>
                                                                                                <li class="data-item">인권영향평가 결과 보고서</li>
                                                                                                <li class="data-item">외부 전문 위원 현장 실사</li>
                                                                                                <li class="data-item">인권경영 추진 방향 제시</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="section-aside">
                                                                    <div class="data-display design1 case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-body">
                                                                                        <p class="para">인권 경영과 관련된 개선 과제를 도출, 개선 계획 수립을 위해 2022년 SK네트웍스는 인권영향평가를 실시하였습니다. 이 과정에서 구성원 대상 설문조사, 체크리스트를 바탕으로 한 자가 진단 및 제3자 검증 기관을 통한 리스크 진단이 이루어졌습니다. 평가 결과에 따라 인권 선언을 우선 과제로 선정하고, 전사ESG추진위원회의 검토 및 승인을 통해 2022년 9월 인권 선언을 실시하고 전 구성원 대상 전자 서명을 통해 구성원의 Commitment를 확보하였습니다.</p>
                                                                                        <p class="para">또한 인권 경영 실행력을 제고하기 위해 Roadmap을 수립하고, 인권영향평가 결과 도출된 이슈들을 분석하여 단계적으로 개선 중입니다. 그 결과 구성원들은 경영 활동의 주체로서 인권 경영에 대한 높은 의식 수준을 바탕으로 인권 경영에 참여하고 있습니다. 2023년 시행한 구성원 대상 인권실태 조사에 따르면 회사의 인권 보장 수준에 대해 구성원의 81%가 우수하다고 인식하고 있으며, 부정응답률은 3%로 전년(5%) 대비 하락하였습니다. 또한 업무 수행과정에서 인권을 고려한다는 응답이 93%로 매우 높은 수준으로 나타났으며, 타기업 대비 조직 내 인권 보장 수준에 대해서도 전년비 3% 상승한 82%의 구성원이 우수한 편으로 인식하고 있었습니다.<br> SK네트웍스는 향후에도 정기적인 인권영향평가 실행을 통해 인권 리스크를 점검하고 이슈별 지속적인 개선활동을 통해 인권경영체계를 고도화해 나가겠습니다.</p>
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
                                            <!-- tab2 -->
                                            <div id="tab-panel2" class="panel-item" role="tabpanel">
                                                <div class="panel-wrap">
                                                    <div class="panel-head">
                                                    </div>
                                                    <div class="panel-body">
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">인재 육성 및 관리 정책</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">
                                                                        SK네트웍스는 인재 육성 및 관리를 위해 일·가정 양립, 일하는 방식의 혁신, 역량 육성 체계 구축 등 여러 분야에 걸쳐 다양한 제도를 마련하여 모든 구성원이 회사 및 가정 생활의 안정을 이루고, 보다 의욕적으로 일할 수 있는 근무 환경을 조성하고자 합니다.<br>
                                                                        이사회는 인재 채용과 육성에 관련된 전략적인 안건을 심의합니다. 전략∙ESG위원회는 구성원의 인권을 포함한 주요 정책과 활동을 검토하고 있으며, 노사위원회는 노동조합을 대표하여 노동관계법에 따른 구성원의 결사의 자유를 보장하고 회사와의 합의를 도모합니다. 이러한 과정에서 경영지원본부장은 인재 관리와 육성을 체계적으로 책임지며, 매년 경영층에게 CEO를 포함한 인재 육성 전략과 주요 이슈를 보고하여 경영진의 역할을 강화하고 있습니다.
                                                                        이를 통해 경영진은 인재육성에 대한 책임을 명확히 인지하고, 그에 따른 조치를 취할 수 있도록 하고 있습니다.
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case3 type1 balance-roadmap">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">일과 삶의 균형 Roadmap</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <div class="data-display roadmap case1 type1">
                                                                        <div class="data-list">
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2023</em>
                                                                                            <p class="para">일과 삶의 균형<br>지원 영역 확대 및 고도화</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case2 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">일과 삶의 균형 관련 구성원 설문 시행 및 개선</li>
                                                                                                <li class="data-item">개인과 회사의 동시 성장을 고려한 Self-Design <br>Cop 개선</li>
                                                                                                <li class="data-item">건강관리 Program 도입</li>
                                                                                                <li class="data-item">업무형태/시간/장소 유연화 통한 근무 환경 <br>Upgrade</li>
                                                                                                <li class="data-item">가족친화기업 인증</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2025</em>
                                                                                            <p class="para">일과 삶의 균형<br>구성원 주도 문화 정착</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">구성원 주도 Self-Design을 통한 일하는 방식의 혁신 문화 정착</li>
                                                                                                <li class="data-item">구성원 소통/피드백 플랫폼 化</li>
                                                                                                <li class="data-item">구성원 Refresh 제도 개선</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="data-item">
                                                                                <div class="data-wrap">
                                                                                    <div class="data-head">
                                                                                        <div class="data-head-area">
                                                                                            <em class="data-subject">2027</em>
                                                                                            <p class="para">건강하고 행복한<br>사업장 구축</p>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="data-body">
                                                                                        <div class="bullet-display design1 case1 type1">
                                                                                            <ul class="data-list">
                                                                                                <li class="data-item">구성원 소통/피드백 플랫폼 고도화</li>
                                                                                                <li class="data-item">일과 삶의 균형을 위한 C-Level 단위 상시 협의체 운영</li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="btn-display design1 align3">
                                                                        <div class="btn-area">
                                                                            <a class="btn design3 case1 type1 color2 ar-icon-download-bg" href="/upload/public/data/ko/sustainability/사회/구성원 행복/SKN_구성원 대상 일과 삶의 균형을 위한 복지 프로그램.pdf"><span class="btn-text">구성원 복지 제도 다운로드</span></a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">일ㆍ가정 양립</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스는 일과 가정의 양립을 위하여 다양한 제도를 마련하고 있습니다.</p>
                                                                    <div class="board-list design3 case2 type1">
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">임신기&amp;출산 </em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">임신기 근로시간 단축, 출산휴가, 임신기 정기건강진단</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">육아</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">육아휴직, 육아기 근로시간 단축</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">기타</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">가족돌봄휴가, 난임치료휴가, 난임휴직, 보건휴가</p>
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
                                                        <div class="section design1 case2 type1">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">일하는 방식의 혁신</h4>
                                                                    </div>
                                                                </div>
                                                                <div class="section-body">
                                                                    <p class="para">SK네트웍스는 일하는 시간과 공간을 구성원이 선택할 수 있도록 제도적으로 지원하고 있습니다.</p>
                                                                    <div class="board-list design3 case2 type1">
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">일하는 시간의 변화</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">선택적 근로시간제 (유연근무제)</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="board-item">
                                                                            <div class="board-wrap">
                                                                                <div class="data-display design1 case3 type3">
                                                                                    <div class="data-list">
                                                                                        <div class="data-item">
                                                                                            <div class="data-wrap">
                                                                                                <div class="data-head">
                                                                                                    <em class="data-subject">일하는 공간의 변화</em>
                                                                                                </div>
                                                                                                <div class="data-body">
                                                                                                    <p class="para">Telework (재택근무 등)</p>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="t-display design1 case1 type1 align3">
                                                                        <p class="comment design3">* 유연근무제 참여 임직원 수</p>
                                                                        <table>
                                                                            <caption>이 표는 유연근무제 참여 임직원 수의 정보를 제공하며 2021년, 2022년, 2023년으로 구성되어 있습니다.</caption>
                                                                            <colgroup>
                                                                                <col>
                                                                                <col>
                                                                                <col>
                                                                            </colgroup>
                                                                            <thead>
                                                                                <tr>
                                                                                    <th scope="col">2021</th>
                                                                                    <th scope="col">2022</th>
                                                                                    <th scope="col">2023</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>3,084명(72.6%)</td>
                                                                                    <td>2,663명(61.8%)</td>
                                                                                    <td>2,711명(67%)</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="section design2 type1 family-friendly">
                                                            <div class="section-wrap">
                                                                <div class="section-head">
                                                                    <div class="section-subject">
                                                                        <h4 class="section-name">외부 인증: 가족 친화 기업</h4>
                                                                        <p class="section-summary">SK네트웍스는 구성원 채용, 평가 및 승진의 인사 운영부터 육아휴직과 직장 어린이집 등 일·가정 양립 프로그램까지 여성이 지속적으로 근무할 수 있는 기업 문화를 조성하기 위해 노력하고 있습니다. 2019년에는 자녀출산 및 양육 지원, 유연 근무제도, 가족친화기업 문화 조성 등 가족친화 제도를 모범적으로 운영하고 있는 기업에 대해 여성가족부에서 부여하는 가족친화기업 인증을 획득하였습니다.</p>
                                                                    </div>
                                                                </div>
                                                                <div class="section-figure">
                                                                    <img src="/assets/images/sustainability/esg-family-friendly-logo.png" alt="가족친화 우수기업 로고">
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