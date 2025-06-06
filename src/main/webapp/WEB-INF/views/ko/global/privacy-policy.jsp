<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/ko/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <title>개인정보 처리방침 &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/ko/include/page-header-inc.jsp" %>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            frontCommon.Html.reset();
        });
    </script>

    <script src="/assets/js/lenis.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            Accordion();

            // 현재 url hash값 반환 (# 제거)
            const id = window.location.hash.substring(1);
            if (id && !document.querySelector('.content-body.active')) {
                activateContentBody('ver-info-2-4'); //맨 처음 노출되어야 하는 버전 ID
            } else if (!id) {
                activateContentBody('ver-info-2-4');
            }

            // bootstrap
            var scrollSpy = new bootstrap.ScrollSpy(document.body, {
                target: '.content-body.active .anchor-display'
            });

            document.querySelectorAll('.anchor-display a[href^="#"]').forEach(anchor => {
                anchor.addEventListener('click', function (e) {
                    e.preventDefault();
                    const targetId = this.getAttribute('href').substring(1);
                    const targetElement = document.getElementById(targetId);

                    if (targetElement) {
                        history.pushState(null, null, ' '); // URL 변경 방지
                        targetElement.scrollIntoView({
                            behavior: 'smooth'
                        });

                        const accordionItem = targetElement.closest('.accordion-item');
                        if (accordionItem) {
                            const bodyPanel = accordionItem.querySelector('.accordion-body');
                            const headBtn = accordionItem.querySelector('.btn');

                            if (headBtn) {
                                const currentAriaLabel = headBtn.getAttribute('title');
                                headBtn.setAttribute('title', currentAriaLabel === '열기' ? '닫기' : '열기');
                                headBtn.focus();
                            }

                            if (bodyPanel) {
                                if (accordionItem.classList.contains("active")) {
                                    accordionItem.classList.remove("active");
                                    bodyPanel.style.height = 0;
                                } else {
                                    accordionItem.classList.add("active");
                                    bodyPanel.style.height = bodyPanel.scrollHeight + "px";
                                }
                            }
                        }
                    }
                });
            });

            function activateContentBody(id) {
                document.querySelectorAll('.content-body').forEach(body => {
                    if (body.classList.contains(id)) {
                        body.classList.add('active');
                    } else {
                        body.classList.remove('active');
                    }
                });
            }

            document.querySelectorAll('.accordion-util select').forEach(select => {
                select.addEventListener('change', function () {
                    const selectedOption = this.options[this.selectedIndex];
                    const id = selectedOption.getAttribute('value');

                    if (id) {
                        // 활성화할 content-body 설정
                        activateContentBody(id);

                        // 활성화된 .content-body 내부의 첫 번째 a, button 요소에 포커스
                        const activeContentBody = document.querySelector('.content-body.active');
                        if (activeContentBody) {
                            const firstFocusableElement = activeContentBody.querySelector('a, button');
                            if (firstFocusableElement) {
                                firstFocusableElement.focus();
                            }
                        }

                        // ScrollSpy 초기화
                        var scrollSpy = new bootstrap.ScrollSpy(document.body, {
                            target: '.content-body.active .anchor-display'
                        });

                        // 상단으로 스크롤
                        window.scrollTo({
                            top: 0,
                            behavior: 'auto'
                        });
                    }
                });
            })
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
    <div class="main etc personal-info" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">개인정보처리방침</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">개인정보처리방침</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">개인정보처리방침 페이지</div>
                    <!-- v2.4 : S -->
                    <div class="content-body ver-info-2-4">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-4-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-2-4-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 열람 가능하도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있으며 , 이에 따른 지속적인 개선을 위하여 필요한 절차를 규정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지에 게시하여 이용자들이 확인 가능하도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 개인정보처리방침을 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 보유기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                        <tr>
                                                            <th colspan="2" scope="col">구분</th>
                                                            <th scope="col">수집항목</th>
                                                            <th scope="col">이용목적</th>
                                                            <th scope="col">
                                                                <span class="accent case5 underline scale1">보유기간</span>
                                                            </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td>필수</td>
                                                            <td>고객문의, 사업제안</td>
                                                            <td>성명 / 이메일 주소</td>
                                                            <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                            <td class="accent case5 color7 underline scale1">1년 보유 후 파기</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br> - 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용 목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 관리 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 600px;">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용, 이용기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col style="width:33.333%">
                                                            <col style="width:33.333%">
                                                            <col style="width:33.333%">
                                                        </colgroup>
                                                        <thead>
                                                        <tr>
                                                            <th scope="col">수탁자</th>
                                                            <th scope="col">처리 위탁 업무 내용</th>
                                                            <th scope="col">
                                                                <span class="accent case5 underline scale1">이용기간</span>
                                                            </th>
                                                        </tr>
                                                        </thead>
                                                        <tbody>
                                                        <tr>
                                                            <td>
                                                                <span id="oldTd">SK 주식회사<br>C&amp;C(재수탁사:한국 마이크로소프트)</span>
                                                                <span id="newTd" style="display: none">SK 주식회사<br> AX (재수탁사: 한국 마이크로소프트)</span>
                                                            </td>
                                                            <td>전산시스템 유지 관리, 데이터 보관(국내)</td>
                                                            <td rowspan="3" class="accent case5 underline scale1">위탁계약 해지 시까지</td>
                                                        </tr>
                                                        <tr>
                                                            <td>펜타브리드</td>
                                                            <td>홈페이지 운영 관리</td>
                                                        </tr>
                                                        <tr>
                                                            <td>SK university (mySUNI)</td>
                                                            <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자의 개인정보를 처리, 보유하며, 이용 목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다. 다만, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의거하여 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 『전자상거래 등에서의 소비자 보호에 관한 법률』, 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 그 외의 개인정보를 포함한 기록물, 인쇄물, 서면 등은 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키(cookie)'를 사용하지 않습니다. '쿠키(cookie)'는 HTTP 서버에서 이용자의 브라우저로 보내는 작은 데이터 조각으로서 이용자의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키(cookie)'는 브라우저 종료 시 만료됩니다.</p>
                                                <p class="para accent case4">
                                                    - 쿠키의 설치·운영 및 거부 : 사용자는 쿠키 저장을 다음과 같이 거부할 수 있습니다.<br>
                                                    예1) 웹브라우저(Chrome) 우측 상단의 [설정] → [개인정보 및 보안] → [사이트 설정] → [쿠키 및 사이트 데이터] → 쿠키 차단 설정<br>
                                                    예2) 웹브라우저(Edge) 우측 상단의 [설정] → [쿠키 및 사이트 권한] → 쿠키 및 저장된 데이터 → 쿠키 차단 설정<br>
                                                    예3) 웹브라우저(Internet Explorer) 상단의 [도구] → [인터넷 옵션] → 개인정보 메뉴의 [고급] → 쿠키 차단 설정<br>
                                                    예4) - Safari: 환경 설정 → ‘크로스 사이트 추적 방지’ 및 ‘모든 쿠키 차단’<br>
                                                    - 이 외에도 Firefox, Opera 등 주요 인터넷 웹 브라우저들도 쿠키 삭제 기능을 제공하고 있습니다.
                                                </p>
                                                <p class="para accent case4">- 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득한 비밀정보 또는 이용자가 제공한 개인정보를 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 아니합니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우 </li>
                                                </ul>
                                                <p class="para">회사는 위 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보에 대한 열람을 요청 할 수 있으며, 정정하거나 삭제 요청할 수 있습니다. 삭제 요청은 “14. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">개인정보 열람 및 처리정지 요청 시 당사는 법률에 특별한 규정이 있는 등의 경우에는 처리정지 요청을 거부할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 1회 이상 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 전송 시 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 진행하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단을 하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제나 성실한 답변을 받을 권리가 있으며, 본 사이트는 이용자의 의견을 소중하게 생각합니다. 이용자의 원활한 의사소통을 위해 회사의 홈페이지에서 고객상담실을 운영하고 있습니다. 문의 및 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.police.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 필요한 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.
                                                    개인정보 보호 관련하여 이용자에게 고지한 사항에 반하는 사고가 발생하는 경우에는 개인정보 보호책임자가 모든 책임을 감수합니다. 그러나 개인정보 보호법 등 관련 법령에서 규정하는 기술적인 조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 구조의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 또는 이용자 가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임을 지지 아니합니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며, 개인정보 관련 문의사항에 신속하고 성실하게 답변 드리겠습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 노현규<br>
                                                    직책 : 실장<br>
                                                    소속부서 : 정보보호실
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 신가은<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-0958<br>
                                                    이메일 : <a href="mailto:shingaeun@sk.com" title="개인정보 보호담당자 신가은 매니저 메일보내기">shingaeun@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-4-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-4-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-4-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2025년 3월 31일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v2.4<br> 개인정보처리방침 게시일자 : 2025.04.03</p>
                                </div>
                            </div>
                        </div>
                        <!-- //accordion : E -->
                    </div>
                    <!-- //v2.4 : E -->
                    <!-- v2.3 : S -->
                    <div class="content-body ver-info-2-3">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-3-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-2-3-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 열람 가능하도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있으며 , 이에 따른 지속적인 개선을 위하여 필요한 절차를 규정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지에 게시하여 이용자들이 확인 가능하도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 개인정보처리방침을 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 보유기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br> - 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용 목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 관리 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 600px;">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용, 이용기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col style="width:33.333%">
                                                            <col style="width:33.333%">
                                                            <col style="width:33.333%">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                                <th scope="col">이용기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사<br>C&amp;C(재수탁사:한국 마이크로소프트)</td>
                                                                <td>전산시스템 유지 관리, 데이터 보관(국내)</td>
                                                                <td rowspan="3">위탁계약 해지 시까지</td>
                                                            </tr>
                                                            <tr>
                                                                <td>펜타브리드</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자의 개인정보를 처리, 보유하며, 이용 목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다. 다만, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의거하여 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 『전자상거래 등에서의 소비자 보호에 관한 법률』, 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 그 외의 개인정보를 포함한 기록물, 인쇄물, 서면 등은 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키(cookie)'를 사용하지 않습니다. '쿠키(cookie)'는 HTTP 서버에서 이용자의 브라우저로 보내는 작은 데이터 조각으로서 이용자의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키(cookie)'는 브라우저 종료 시 만료됩니다.</p>
                                                <p class="para accent case4">
                                                    - 쿠키의 설치·운영 및 거부 : 사용자는 쿠키 저장을 다음과 같이 거부할 수 있습니다.<br>
                                                    예1) 웹브라우저(Chrome) 우측 상단의 [설정] → [개인정보 및 보안] → [사이트 설정] → [쿠키 및 사이트 데이터] → 쿠키 차단 설정<br>
                                                    예2) 웹브라우저(Edge) 우측 상단의 [설정] → [쿠키 및 사이트 권한] → 쿠키 및 저장된 데이터 → 쿠키 차단 설정<br>
                                                    예3) 웹브라우저(Internet Explorer) 상단의 [도구] → [인터넷 옵션] → 개인정보 메뉴의 [고급] → 쿠키 차단 설정
                                                </p>
                                                <p class="para accent case4">- 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득한 비밀정보 또는 이용자가 제공한 개인정보를 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 아니합니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우 </li>
                                                </ul>
                                                <p class="para">회사는 위 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보에 대한 열람을 요청 할 수 있으며, 정정하거나 삭제 요청할 수 있습니다. 삭제 요청은 “14. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">개인정보 열람 및 처리정지 요청 시 당사는 법률에 특별한 규정이 있는 등의 경우에는 처리정지 요청을 거부할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 1회 이상 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 전송 시 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 진행하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단을 하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제나 성실한 답변을 받을 권리가 있으며, 본 사이트는 이용자의 의견을 소중하게 생각합니다. 이용자의 원활한 의사소통을 위해 회사의 홈페이지에서 고객상담실을 운영하고 있습니다. 문의 및 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 필요한 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.
                                                    개인정보 보호 관련하여 이용자에게 고지한 사항에 반하는 사고가 발생하는 경우에는 개인정보 보호책임자가 모든 책임을 감수합니다. 그러나 개인정보 보호법 등 관련 법령에서 규정하는 기술적인 조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 구조의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 또는 이용자 가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임을 지지 아니합니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며, 개인정보 관련 문의사항에 신속하고 성실하게 답변 드리겠습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 노현규<br>
                                                    직책 : 실장<br>
                                                    소속부서 : 정보보호실
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 신가은<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-0958<br>
                                                    이메일 : <a href="mailto:shingaeun@sk.com" title="개인정보 보호담당자 신가은 매니저 메일보내기">shingaeun@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-3-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-3-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-3-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2024년 9월 10일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v2.3<br> 개인정보처리방침 게시일자 : 2024.09.10</p>
                                </div>
                            </div>
                        </div>
                        <!-- //accordion : E -->
                    </div>
                    <!-- //v2.3 : E -->
                    <!-- v2.2 : S -->
                    <div class="content-body ver-info-2-2">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-2-2-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 열람 가능하도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있으며 , 이에 따른 지속적인 개선을 위하여 필요한 절차를 규정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지에 게시하여 이용자들이 확인 가능하도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 개인정보처리방침을 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 보유기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">보유기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br> - 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용 목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 관리 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>전산시스템 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>펜타브리드</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자의 개인정보를 처리, 보유하며, 이용 목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다. 다만, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의거하여 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 『전자상거래 등에서의 소비자 보호에 관한 법률』, 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 그 외의 개인정보를 포함한 기록물, 인쇄물, 서면 등은 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키(cookie)'를 사용하지 않습니다. '쿠키(cookie)'는 HTTP 서버에서 이용자의 브라우저로 보내는 작은 데이터 조각으로서 이용자의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키(cookie)'는 브라우저 종료 시 만료됩니다.</p>
                                                <p class="para accent case4">
                                                    - 쿠키의 설치·운영 및 거부 : 사용자는 쿠키 저장을 다음과 같이 거부할 수 있습니다.<br>
                                                    예1) 웹브라우저(Chrome) 우측 상단의 [설정] → [개인정보 및 보안] → [사이트 설정] → [쿠키 및 사이트 데이터] → 쿠키 차단 설정<br>
                                                    예2) 웹브라우저(Edge) 우측 상단의 [설정] → [쿠키 및 사이트 권한] → 쿠키 및 저장된 데이터 → 쿠키 차단 설정<br>
                                                    예3) 웹브라우저(Internet Explorer) 상단의 [도구] → [인터넷 옵션] → 개인정보 메뉴의 [고급] → 쿠키 차단 설정
                                                </p>
                                                <p class="para accent case4">- 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득한 비밀정보 또는 이용자가 제공한 개인정보를 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 아니합니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우 </li>
                                                </ul>
                                                <p class="para">회사는 위 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보에 대한 열람을 요청 할 수 있으며, 정정하거나 삭제 요청할 수 있습니다. 삭제 요청은 “14. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">개인정보 열람 및 처리정지 요청 시 당사는 법률에 특별한 규정이 있는 등의 경우에는 처리정지 요청을 거부할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 1회 이상 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보 및 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 진행하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단을 하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제나 성실한 답변을 받을 권리가 있으며, 본 사이트는 이용자의 의견을 소중하게 생각합니다. 이용자의 원활한 의사소통을 위해 회사의 홈페이지에서 고객상담실을 운영하고 있습니다. 문의 및 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 필요한 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.
                                                    개인정보 보호 관련하여 이용자에게 고지한 사항에 반하는 사고가 발생하는 경우에는 개인정보 보호책임자가 모든 책임을 감수합니다. 그러나 개인정보 보호법 등 관련 법령에서 규정하는 기술적인 조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 구조의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 또는 이용자 가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임을 지지 아니합니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며, 개인정보 관련 문의사항에 신속하고 성실하게 답변 드리겠습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 노현규<br>
                                                    직책 : 실장<br>
                                                    소속부서 : 정보보호실
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 신가은<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-0958<br>
                                                    이메일 : <a href="mailto:shingaeun@sk.com" title="개인정보 보호담당자 신가은 매니저 메일보내기">shingaeun@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-2-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2024년 5월 7일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v2.2<br> 개인정보처리방침 게시일자 : 2024.05.07</p>
                                </div>
                            </div>
                        </div>
                        <!-- //accordion : E -->
                    </div>
                    <!-- //v2.2 : E -->
                    <!-- v2.1 : S -->
                    <div class="content-body ver-info-2-1">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-1-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-2-1-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 열람 가능하도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있으며 , 이에 따른 지속적인 개선을 위하여 필요한 절차를 규정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지에 게시하여 이용자들이 확인 가능하도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 개인정보처리방침을 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 관리 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>전산시스템 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령에 의거하여 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 『전자상거래 등에서의 소비자 보호에 관한 법률』, 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 그 외의 개인정보를 포함한 기록물, 인쇄물, 서면 등은 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키(cookie)'를 사용하지 않습니다. '쿠키(cookie)'는 HTTP 서버에서 이용자의 브라우저로 보내는 작은 데이터 조각으로서 이용자의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키(cookie)'는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득한 비밀정보 또는 이용자가 제공한 개인정보를 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 아니합니다</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우 </li>
                                                </ul>
                                                <p class="para">회사는 위 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보에 대한 열람을 요청 할 수 있으며, 정정하거나 삭제 요청할 수 있습니다. 삭제 요청은 “14. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">개인정보 열람 및 처리정지 요청 시 당사는 법률에 특별한 규정이 있는 등의 경우에는 처리정지 요청을 거부할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">
                                                    본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보 보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 1회 이상 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보 및 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신 및 점검을 진행하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단을 하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제나 성실한 답변을 받을 권리가 있으며, 본 사이트는 이용자의 의견을 소중하게 생각합니다. 이용자의 원활한 의사소통을 위해 회사의 홈페이지에서 고객상담실을 운영하고 있습니다. 문의 및 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 필요한 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다.<br>
                                                    개인정보 보호 관련하여 이용자에게 고지한 사항에 반하는 사고가 발생하는 경우에는 개인정보 보호책임자가 모든 책임을 감수합니다. 그러나 개인정보 보호법 등 관련 법령에서 규정하는 기술적인 조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 구조의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 또는 이용자 가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임을 지지 아니합니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며, 개인정보 관련 문의사항에 신속하고 성실하게 답변 드리겠습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 서옥형<br>
                                                    직책 : 센터장<br>
                                                    소속부서 : 정보보호센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 배지환<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-4153<br>
                                                    이메일 : <a href="mailto:jihwan@sk.com" title="개인정보 보호담당자 배지환 매니저 메일보내기">jihwan@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-1-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-1-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-1-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2023년 04월 17일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v2.1<br>개인정보처리방침 게시일자 : 2024.05.07</p>
                                </div>
                            </div>
                        </div>
                        <!-- //accordion : E -->
                    </div>
                    <!-- //v2.1 : E -->
                    <!-- v2.0 : S -->
                    <div class="content-body ver-info-2-0">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-0-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-2-0-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만 전자상거래 등에서의 소비자 보호에 관한 법률 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 『전자상거래 등에서의 소비자 보호에 관한 법률』, 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 이용자가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “14. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보 보호책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 최재극<br>
                                                    직책 : 센터장<br>
                                                    소속부서 : 정보보호센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 윤순영<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-4176<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보 보호담당자 윤순영 매니저 메일보내기">darktep@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-0-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-2-0-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-0-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2022년 03월 22일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">
                                        개인정보처리방침 버전번호 : v2.0<br> 개인정보처리방침 게시일자 : 2023.04.17
                                    </p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v2.0 : E -->
                    <!-- v1.9 : S -->
                    <div class="content-body ver-info-1-9">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link5"><span class="link-text">5. 개인정보 수탁업체 및 위탁업무 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link10"><span class="link-text">10. 이용자의 권리 및 행사 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link13"><span class="link-text">13. 이용자의 의견 수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-9-link15"><span class="link-text">15. 개인정보처리방침의 변경에 따른 고지</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-9-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 주소 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자에 대한 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 수탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드 디스크 드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 이용자가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont10">
                                                <span class="btn-text">10. 이용자의 권리 및 행사 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보 보호책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 취급자의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 취급자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 취급자에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont13">
                                                <span class="btn-text">13. 이용자의 의견 수렴 및 불만 처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 아래 기관에 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    개인정보분쟁조정위원회 : (국번없이) 1833-6972 (https://www.kopico.go.kr)<br>
                                                    개인정보침해신고센터 : (국번없이) 118 (https://privacy.kisa.or.kr)<br>
                                                    대검찰청 사이버수사과 : (국번없이) 1301 (https://www.spo.go.kr)<br>
                                                    경찰청 사이버수사국 : (국번없이) 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보 보호책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 최재극<br>
                                                    직책 : 센터장<br>
                                                    소속부서 : 정보보호센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 윤순영<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-4176<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보 보호담당자 윤순영 매니저 메일보내기">darktep@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-9-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-9-cont15">
                                                <span class="btn-text">15. 개인정보처리방침의 변경에 따른 고지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-9-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2021년 11월 15일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">
                                        개인정보처리방침 버전번호 : v1.9<br> 개인정보처리방침 게시일자 : 2022.03.22
                                    </p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.9 : E -->
                    <!-- v1.8 : S -->
                    <div class="content-body ver-info-1-8">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link5"><span class="link-text">5. 개인정보 위탁업체 및 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-8-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-8-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일 주소</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont5">
                                                <span class="btn-text">5. 개인정보 수탁업체 및 위탁업무 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 위탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 수탁업체 및 위탁업무 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보보호 책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 처리인력의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 처리자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 처리인력에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 1년 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 침해신고센터 (한국인터넷진흥원 운영)</span><br>
                                                    소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                                    홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank" title="개인정보 침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">118</span><br>
                                                    주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 분쟁조정위원회</span><br>
                                                    소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                                    홈페이지 : <a href="http://www.kopico.go.kr" target="_blank" title="개인정보 분쟁조정위원회 바로가기 (새창 열기)">http://www.kopico.go.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">1833-6972</span><br>
                                                    주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 사이버수사과</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1301</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 사이버범죄수사단 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버안전국</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://cyberbureau.police.go.kr" target="_blank" title="경찰청 사이버안전국 바로가기 (새창 열기)">http://cyberbureau.police.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보보호 책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 최재극<br>
                                                    직책 : 센터장<br>
                                                    소속부서 : 정보보호센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 윤순영<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-4176<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보 보호담당자 윤순영 매니저 메일보내기">darktep@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-8-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-8-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-8-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2021년 09월 24일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">
                                        개인정보처리방침 버전번호 : v1.8<br> 개인정보처리방침 게시일자 : 2021.11.15
                                    </p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.8 : E -->
                    <!-- v1.7 : S -->
                    <div class="content-body ver-info-1-7">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link5"><span class="link-text">5. 개인정보 위탁업체 및 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-7-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-7-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont5">
                                                <span class="btn-text">5. 개인정보 위탁업체 및 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 위탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 위탁업체 및 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.</p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 처리인력의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 처리자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 처리인력에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 침해신고센터 (한국인터넷진흥원 운영)</span><br>
                                                    소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                                    홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank" title="개인정보 침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">118</span><br>
                                                    주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 분쟁조정위원회</span><br>
                                                    소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                                    홈페이지 : <a href="http://www.kopico.go.kr" target="_blank" title="개인정보 분쟁조정위원회 바로가기 (새창 열기)">http://www.kopico.go.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">1833-6972</span><br>
                                                    주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 사이버수사과</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1301</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 사이버범죄수사단 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버안전국</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://cyberbureau.police.go.kr" target="_blank" title="경찰청 사이버안전국 바로가기 (새창 열기)">http://cyberbureau.police.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호책임자</span><br>
                                                    성명 : 최재극<br>
                                                    직책 : 센터장<br>
                                                    소속부서 : 정보보호센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 보호담당자</span><br>
                                                    성명 : 윤순영<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-4176<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보 보호담당자 윤순영 매니저 메일보내기">darktep@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-7-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-7-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-7-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2021년 07월 07일에 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">
                                        개인정보처리방침 버전번호 : v1.7<br> 개인정보처리방침 게시일자 : 2021.09.24
                                    </p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.7 : E -->
                    <!-- v1.6 : S -->
                    <div class="content-body ver-info-1-6">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link5"><span class="link-text">5. 개인정보 위탁업체 및 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link14"><span class="link-text">14. 개인정보 보호책임자 및 보호담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-6-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-6-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.
                                                </p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont5">
                                                <span class="btn-text">5. 개인정보 위탁업체 및 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 위탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 위탁업체 및 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>임직원 교육/시험 및 고용보험 환급업무</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.
                                                </p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.
                                                    그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 처리인력의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 처리자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 처리인력에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 침해신고센터 (한국인터넷진흥원 운영)</span><br>
                                                    소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                                    홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank" title="개인정보 침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">118</span><br>
                                                    주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 분쟁조정위원회</span><br>
                                                    소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                                    홈페이지 : <a href="http://www.kopico.go.kr" target="_blank" title="개인정보 분쟁조정위원회 바로가기 (새창 열기)">http://www.kopico.go.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">1833-6972</span><br>
                                                    주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 사이버수사과</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1301</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 사이버범죄수사단 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버안전국</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://cyberbureau.police.go.kr" target="_blank" title="경찰청 사이버안전국 바로가기 (새창 열기)">http://cyberbureau.police.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont14">
                                                <span class="btn-text">14. 개인정보 보호책임자 및 보호담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 처리하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 장세찬<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : 홍보팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 이선<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-2735<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보관리 담당자 이선 매니저 메일보내기">sunny.lee@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-6-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-6-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-6-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2018년 2월 09일 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.6<br> 개인정보처리방침 게시일자 : 2021.07.07</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.6 : E -->
                    <!-- v1.5 : S -->
                    <div class="content-body ver-info-1-5">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link5"><span class="link-text">5. 개인정보 위탁업체 및 내용</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link7"><span class="link-text">7. 개인정보 자동수집 장치의 설치,<br class="mo-only"> 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link14"><span class="link-text">14. 개인정보 관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-5-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-5-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                                <p class="para">회사는 개인정보보호법에 근거하여 아래와 같이 개인정보를 수집하고 이용합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;" class="col-w-1">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 구분, 수집항목, 이용목적, 이용 및 보유 기간으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                            <col class="col3">
                                                            <col class="col4">
                                                            <col class="col5">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">구분</th>
                                                                <th scope="col">수집항목</th>
                                                                <th scope="col">이용목적</th>
                                                                <th scope="col">이용 및 보유 기간</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>필수</td>
                                                                <td>고객문의, 사업제안</td>
                                                                <td>성명 / 이메일</td>
                                                                <td>서비스 이용에 따른 본인 식별 / 문의사항에 대한 회신</td>
                                                                <td rowspan="2" class="accent color7">1년 보유 후 파기</td>
                                                            </tr>
                                                            <tr>
                                                                <td>선택</td>
                                                                <td>고객문의</td>
                                                                <td>연락처</td>
                                                                <td>문의사항에 대한 회신</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * 서비스 이용과정에서 다음과 같은 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br>- 접속 IP 정보
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont5">
                                                <span class="btn-text">5. 개인정보 위탁업체 및 내용</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 서비스의 유지 및 관리를 위하여 전문용역 업체에 일부 업무를 위탁운영하고 있습니다. 위탁을 받은 업체는 위탁을 받은 목적을 벗어나서 개인정보를 이용할 수 없습니다. 또한, 회사는 이러한 위탁업체에 대하여 해당 개인정보가 위법하게 이용되지 않도록 정기적인 감시와 감독을 실시합니다. 회사는 업무의 일부를 위탁하는 경우 이용자에게 미리 그 사실을 고지합니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>이 표는 개인정보 위탁업체 및 내용을 제공하며 수탁자, 처리 위탁 업무 내용으로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">수탁자</th>
                                                                <th scope="col">처리 위탁 업무 내용</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>SK 주식회사 C&amp;C</td>
                                                                <td>정보전산 처리 및 유지 관리</td>
                                                            </tr>
                                                            <tr>
                                                                <td>재단법인 행복ICT</td>
                                                                <td>홈페이지 운영 관리</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont7">
                                                <span class="btn-text">7. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.
                                                </p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.
                                                    그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont12">
                                                <span class="btn-text">12. 개인정보의 안전성 확보조치</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보보호법에 제 29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 취하고 있습니다.</p>
                                                <p class="para">가. 개인정보 처리인력의 최소화<br>
                                                    개인정보 보호를 위해 개인정보 처리자에 대한 권한을 최소화하고 있습니다.</p>
                                                <p class="para">나. 개인정보 처리인력에 대한 정기적 교육 시행<br>
                                                    개인정보 보호에 대한 인식 제고를 위해 연 2회 정기적인 교육을 시행하고 있습니다.</p>
                                                <p class="para">다. 내부 점검 정기적 시행<br>
                                                    개인정보의 처리 관련 안전성 확보를 위해 정기적으로 자체 점검을 실시하고 있습니다.</p>
                                                <p class="para">라. 내부 관리계획의 수립 및 시행<br>
                                                    개인정보의 안전한 처리 및 관리를 위해 내부관리계획을 수립하여 시행하고 있습니다.</p>
                                                <p class="para">마. 개인정보의 암호화<br>
                                                    이용자의 개인정보는 비밀번호는 암호화되어 저장/관리되고 있으며, 전송 시에도 별도의 보안기능을 사용하여 안전하게 관리하고 있습니다.</p>
                                                <p class="para">바. 해킹 등에 대비한 기술적 대책<br>
                                                    회사는 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신/점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적, 물리적으로 감시 및 차단하고 있습니다.</p>
                                                <p class="para">사. 개인정보에 대한 접근 제한<br>
                                                    개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여, 변경, 말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p>
                                                <p class="para">아. 접속기록의 보관 및 위변조 방지<br>
                                                    개인정보 처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능을 사용하고 있습니다.</p>
                                                <p class="para">자. 문서보안을 위한 잠금장치 사용<br>
                                                    개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</p>
                                                <p class="para">차. 비인가자에 대한 출입 통제<br>
                                                    개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</p>
                                                <p class="para">카. 재해, 재난 대비 안전조치<br>
                                                    천재지변을 비롯한 재해, 재난 발생에 대비하여 위기대응 매뉴얼 등 대응절차를 마련하고 점검하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 침해신고센터 (한국인터넷진흥원 운영)</span><br>
                                                    소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                                    홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank" title="개인정보 침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">118</span><br>
                                                    주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 분쟁조정위원회</span><br>
                                                    소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                                    홈페이지 : <a href="http://www.kopico.go.kr" target="_blank" title="개인정보 분쟁조정위원회 바로가기 (새창 열기)">http://www.kopico.go.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">1833-6972</span><br>
                                                    주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 사이버범죄수사단</span><br>
                                                    전화 : (국번없이) <span class="accent case7">02-3480-3573</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 사이버범죄수사단 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버안전국</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://cyberbureau.police.go.kr" target="_blank" title="경찰청 사이버안전국 바로가기 (새창 열기)">http://cyberbureau.police.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont14">
                                                <span class="btn-text">14. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 노영조<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : CPR팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 이선<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-2735<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보관리 담당자 이선 매니저 메일보내기">sunny.lee@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-5-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-5-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-5-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2018년 1월 4일 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.5<br> 개인정보처리방침 게시일자 : 2018.02.09</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.5 : E -->
                    <!-- v1.4 : S -->
                    <div class="content-body ver-info-1-4">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link5"><span class="link-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link6"><span class="link-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link7"><span class="link-text">7. 개인정보의 목적 외 사용 및 제 3자에 대한 제공 및 위탁</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link12"><span class="link-text">12. 개인정보의 안전성 확보조치</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link14"><span class="link-text">14. 개인정보 관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-4-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-4-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 500px;" class="col-w-3">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 고객문의, 서비스 이용 과정에서 생성 및 수집되는 정보로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col style="width: 37%;">
                                                            <col style="width: auto;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">고객문의</th>
                                                                <th scope="col">서비스 이용 과정에서 생성, 수집되는 정보</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>성명, 이메일, 연락처</td>
                                                                <td>서비스 이용기록, 접속 로그, 접속 IP 정보</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="para">즉, 회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」 버튼, 「동의하지 않음」 버튼)를 마련하여 이용자가 「동의함」 버튼을 클릭하는 경우 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont5">
                                                <span class="btn-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont6">
                                                <span class="btn-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.
                                                </p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont7">
                                                <span class="btn-text">7. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 "3. 개인정보의 수집 목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다.
                                                </p>
                                                <p class="para">다만, 보다 나은 서비스 제공을 위하여 이용자의 개인정보를 제휴사에게 제공할 수 있으며, 이 때에는 사전에 이용자에게 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호, 관리되는지에 대해 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.</p>
                                                <p class="para">회사는 이용자의 개인정보를 제 3자에게 위탁하지 않는 것이 원칙이나, 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 위탁업무 목적, 위탁처리 되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.
                                                    그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont12">
                                                <span class="btn-text">12. 개인정보의 안정성 확보</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조, 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보는 파일 및 전송 데이터를 암호화하여 혹시 발생할 수 있는 사고 시라도 회원님의 개인정보가 유출 되지 않도록 관리되고 있습니다.</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 방화벽과 침입탐지시스템을 통하여 보호되며 24시간 감시를 통하여 외부로부터의 위협에 대해 관리되고 있습니다.</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 자동으로 갱신되는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해로부터 보호되고 있습니다.</li>
                                                </ul>
                                                <p class="para">또한 회사는 이용자의 개인정보를 취급함에 있어 다음과 같은 관리적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다.</li>
                                                    <li class="order-item">임직원이 업무를 함에 있어 이용자의 개인정보를 보호하기 위해 지켜야 할 사내규정을 마련하여 엄격하게 준수하고 있습니다.</li>
                                                    <li class="order-item">임직원이 이용자의 개인정보를 취급하기 이전에 서약서를 통하여 이용자의 개인정보에 대한 정보유출을 사전에 방지하고 사내규정에 대한 이행사항 및 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 역량을 강화하기 위하여 정기적인 교육프로그램을 개발/운영하고 개인정보보호교육을 실시하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 인식을 제고하기 위하여 부정기적인 캠페인을 시행합니다.</li>
                                                    <li class="order-item">그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 침해신고센터 (한국인터넷진흥원 운영)</span><br>
                                                    소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                                    홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank" title="개인정보 침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">118</span><br>
                                                    주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보 분쟁조정위원회</span><br>
                                                    소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                                    홈페이지 : <a href="http://www.kopico.go.kr" target="_blank" title="개인정보 분쟁조정위원회 바로가기 (새창 열기)">http://www.kopico.go.kr</a><br>
                                                    전화 : (국번없이) <span class="accent case7">1833-6972</span><br>
                                                    주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 사이버범죄수사단</span><br>
                                                    전화 : <span class="accent case7">02-3480-3573</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 사이버범죄수사단 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버안전국</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://cyberbureau.police.go.kr" target="_blank" title="경찰청 사이버안전국 바로가기 (새창 열기)">http://cyberbureau.police.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont14">
                                                <span class="btn-text">14. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 노영조<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : CPR팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 이선<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-2735<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보관리 담당자 이선 매니저 메일보내기">sunny.lee@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-4-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-4-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-4-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2017년 12월 06일 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.4<br> 개인정보처리방침 게시일자 : 2018.01.04</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.4 : E -->
                    <!-- v1.3 : S -->
                    <div class="content-body ver-info-1-3">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보처리방침(이하 “본 방침”)을 제정하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link5"><span class="link-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link6"><span class="link-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link7"><span class="link-text">7. 개인정보의 목적 외 사용 및 제 3자에 대한 제공 및 위탁</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link12"><span class="link-text">12. 개인정보의 안정성 확보</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link14"><span class="link-text">14. 개인정보 관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-3-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-3-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 500px;">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 고객문의, 서비스 이용 과정에서 생성 및 수집되는 정보로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col style="width: 37%;">
                                                            <col style="width: auto;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">고객문의</th>
                                                                <th scope="col">서비스 이용 과정에서 생성, 수집되는 정보</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>성명, 이메일, 연락처</td>
                                                                <td>서비스 이용기록, 접속 로그, 접속 IP 정보</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="para">회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」버튼, 「동의하지 않음」버튼)를 마련하여, 이용자가 「동의함」버튼을 클릭하는 경우, 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont5">
                                                <span class="btn-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont6">
                                                <span class="btn-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.
                                                </p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont7">
                                                <span class="btn-text">7. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 "3. 개인정보의 수집 목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다.
                                                </p>
                                                <p class="para">다만, 보다 나은 서비스 제공을 위하여 이용자의 개인정보를 제휴사에게 제공할 수 있으며, 이 때에는 사전에 이용자에게 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호, 관리되는지에 대해 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.</p>
                                                <p class="para">회사는 이용자의 개인정보를 제 3자에게 위탁하지 않는 것이 원칙이나, 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 위탁업무 목적, 위탁처리 되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.
                                                    그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont12">
                                                <span class="btn-text">12. 개인정보의 안정성 확보</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조, 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보는 파일 및 전송 데이터를 암호화하여 혹시 발생할 수 있는 사고 시라도 회원님의 개인정보가 유출 되지 않도록 관리되고 있습니다.</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 방화벽과 침입탐지시스템을 통하여 보호되며 24시간 감시를 통하여 외부로부터의 위협에 대해 관리되고 있습니다.</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 자동으로 갱신되는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해로부터 보호되고 있습니다.</li>
                                                </ul>
                                                <p class="para">또한 회사는 이용자의 개인정보를 취급함에 있어 다음과 같은 관리적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다.</li>
                                                    <li class="order-item">임직원이 업무를 함에 있어 이용자의 개인정보를 보호하기 위해 지켜야 할 사내규정을 마련하여 엄격하게 준수하고 있습니다.</li>
                                                    <li class="order-item">임직원이 이용자의 개인정보를 취급하기 이전에 서약서를 통하여 이용자의 개인정보에 대한 정보유출을 사전에 방지하고 사내규정에 대한 이행사항 및 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 역량을 강화하기 위하여 정기적인 교육프로그램을 개발/운영하고 개인정보보호교육을 실시하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 인식을 제고하기 위하여 부정기적인 캠페인을 시행합니다.</li>
                                                    <li class="order-item">그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">한국인터넷진흥원 개인정보침해신고센터</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1336</span><br>
                                                    URL : <a href="http://privacy.kisa.or.kr/kor/main.jsp" target="_blank" title="한국인터넷진흥원 개인정보침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr/kor/main.jsp</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 첨단범죄수사과</span><br>
                                                    전화 : <span class="accent case7">02-3480-2000</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 첨단범죄수사과 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버수사국 (경찰청 민원콜센터)</span><br>
                                                    전화 : (국번없이) <span class="accent case7">182</span><br>
                                                    URL : <a href="http://www.cyber.go.kr" target="_blank" title="경찰청 사이버수사국 (경찰청 민원콜센터) 바로가기 (새창 열기)">http://www.cyber.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont14">
                                                <span class="btn-text">14. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 노영조<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : CPR팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 이선<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-2735<br>
                                                    이메일 : <a href="mailto:sunny.lee@sk.com" title="개인정보관리 담당자 이선 매니저 메일보내기">sunny.lee@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-3-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-3-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-3-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2017년 10월 17일 개정되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.3<br>개인정보처리방침 게시일자 : 2017.12.06</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.3 : E -->
                    <!-- v1.2 : S -->
                    <div class="content-body ver-info-1-2">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자의 개인정보보호를 매우 중요시하며, 이용자가 에스케이네트웍스주식회사 홈페이지서비스 (이하 "본 사이트"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『개인정보보호법』, 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관련 법규를 준수하기 위해 개인정보 처리방침(이하 “본 방침”)을 제정 하고 이를 준수하고 있습니다.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link2"><span class="link-text">2. 수집하는 개인정보 항목 및 수집 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link3"><span class="link-text">3. 개인정보의 수집 및 이용목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link5"><span class="link-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link6"><span class="link-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link7"><span class="link-text">7. 개인정보의 목적 외 사용 및 제 3자에 대한 제공 및 위탁</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link8"><span class="link-text">8. 비밀유지</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link9"><span class="link-text">9. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link10"><span class="link-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link11"><span class="link-text">11. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link12"><span class="link-text">12. 개인정보의 안정성 확보</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link13"><span class="link-text">13. 의견수렴 및 불만 처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link14"><span class="link-text">14. 개인정보 관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-2-link15"><span class="link-text">15. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-2-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 본 방침을 통하여 이용자가 제공하는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드리며, 홈페이지 첫 화면에 공개함으로써 이용자가 본 방침을 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 본 방침은 관련 법률 및 지침의 변경, 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 본 방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 본 사이트 방문 시 수시로 확인하여 주시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont2">
                                                <span class="btn-text">2. 수집하는 개인정보 항목 및 수집 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 회사 홈페이지 서비스는 별도의 개인정보 등록절차 없이 자유롭게 접근할 수 있습니다. 다만, 다음의 서비스는 보다 향상된 양질의 서비스를 제공하기 위하여 최소한의 개인정보를 처리하고 있습니다.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 500px;">
                                                        <caption>이 표는 수집하는 개인정보 항목 및 수집 방법을 제공하며 고객문의, 서비스 이용 과정에서 생성 및 수집되는 정보로 구성되어 있습니다.</caption>
                                                        <colgroup>
                                                            <col style="width: 37%;">
                                                            <col style="width: auto;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">고객문의</th>
                                                                <th scope="col">서비스 이용 과정에서 생성, 수집되는 정보</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>성명, 이메일, 연락처</td>
                                                                <td>서비스 이용기록, 접속 로그, 접속 IP 정보</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="para">회사는 이용자의 개인정보를 수집하기 위하여 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명, 이메일 입력 시 개인정보 수집 및 이용에 관한 동의여부를 선택할 수 있는 장치 (「동의함」버튼, 「동의하지 않음」버튼)를 마련하여, 이용자가 「동의함」버튼을 클릭하는 경우, 개인정보 수집 및 이용에 대하여 동의한 것으로 봅니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont3">
                                                <span class="btn-text">3. 개인정보의 수집 및 이용목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 수집한 개인정보를 고객 상담 및 사업 제안 시 본인 확인 및 신속한 대응의 목적으로만 이용하며, 이용목적이 변경되는 경우 관련 법규에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont5">
                                                <span class="btn-text">5. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자가 고객 상담이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성되는 등 이용자의 개인정보가 불필요하게 되었을 때에는 지체없이 개인정보를 파기합니다.<br> 다만, 상법 등 관련 법령의 규정에 의거하여, 거래 관련 권리 의무 관계의 확인 등을 목적으로 다음과 같이 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont6">
                                                <span class="btn-text">6. 개인정보 자동수집 장치의 설치, 운영 및 거부에 관한 사항</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다.
                                                </p>
                                                <p class="para">이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont7">
                                                <span class="btn-text">7. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 "3. 개인정보의 수집 목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다.
                                                </p>
                                                <p class="para">다만, 보다 나은 서비스 제공을 위하여 이용자의 개인정보를 제휴사에게 제공할 수 있으며, 이 때에는 사전에 이용자에게 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호, 관리되는지에 대해 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다.</p>
                                                <p class="para">회사는 이용자의 개인정보를 제 3자에게 위탁하지 않는 것이 원칙이나, 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 위탁업무 목적, 위탁처리 되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont8">
                                                <span class="btn-text">8. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">이용자와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">이용자가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont9">
                                                <span class="btn-text">9. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다.</p>
                                                <p class="para">본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont10">
                                                <span class="btn-text">10. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">이용자는 언제든지 본 사이트에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다.</p>
                                                <p class="para">이용자가 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다.</p>
                                                <p class="para">잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont11">
                                                <span class="btn-text">11. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다.
                                                    그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다.
                                                    다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다.
                                                    그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont12">
                                                <span class="btn-text">12. 개인정보의 안정성 확보</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조, 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보는 파일 및 전송 데이터를 암호화하여 혹시 발생할 수 있는 사고 시라도 회원님의 개인정보가 유출 되지 않도록 관리되고 있습니다.</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 방화벽과 침입탐지시스템을 통하여 보호되며 24시간 감시를 통하여 외부로부터의 위협에 대해 관리되고 있습니다.</li>
                                                    <li class="order-item">이용자의 개인정보를 저장하고 처리하는 시스템은 자동으로 갱신되는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해로부터 보호되고 있습니다.</li>
                                                </ul>
                                                <p class="para">또한 회사는 이용자의 개인정보를 취급함에 있어 다음과 같은 관리적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">이용자의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다.</li>
                                                    <li class="order-item">임직원이 업무를 함에 있어 이용자의 개인정보를 보호하기 위해 지켜야 할 사내규정을 마련하여 엄격하게 준수하고 있습니다.</li>
                                                    <li class="order-item">임직원이 이용자의 개인정보를 취급하기 이전에 서약서를 통하여 이용자의 개인정보에 대한 정보유출을 사전에 방지하고 사내규정에 대한 이행사항 및 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 역량을 강화하기 위하여 정기적인 교육프로그램을 개발/운영하고 개인정보보호교육을 실시하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 인식을 제고하기 위하여 부정기적인 캠페인을 시행합니다.</li>
                                                    <li class="order-item">그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 이용자에게 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont13">
                                                <span class="btn-text">13. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자의 의견을 소중하게 생각하며, 이용자는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 이용자와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 첨단범죄수사과, 경찰청 사이버수사국 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">한국인터넷진흥원 개인정보침해신고센터</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1336</span><br>
                                                    URL : <a href="http://privacy.kisa.or.kr/kor/main.jsp" target="_blank" title="한국인터넷진흥원 개인정보침해신고센터 바로가기 (새창 열기)">http://privacy.kisa.or.kr/kor/main.jsp</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 첨단범죄수사과</span><br>
                                                    전화 : <span class="accent case7">02-3480-2000</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 첨단범죄수사과 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버수사국</span><br>
                                                    전화 : <span class="accent case7">02-393-9112</span><br>
                                                    URL : <a href="http://www.netan.go.kr" target="_blank" title="경찰청 사이버수사국 (경찰청 민원콜센터) 바로가기 (새창 열기)">http://www.netan.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont14">
                                                <span class="btn-text">14. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 임진택<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : 기업문화본부 홍보팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 송원호<br>
                                                    직책 : 매니저<br>
                                                    연락처 070-7800-2735<br>
                                                    이메일 : <a href="mailto:wonho@sk.com" title="개인정보관리 담당자 송원호 매니저 메일보내기">wonho@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-2-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-2-cont15">
                                                <span class="btn-text">15. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-2-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2015년 12월 22일 개정 되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.2<br> 개인정보처리방침 게시일자 : 2017.10.17</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.2 : E -->
                    <!-- v1.1 : S -->
                    <div class="content-body ver-info-1-1">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 서비스 (이하 "에스케이네트웍스주식회사 홈페이지"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『전기통신사업법』, 『통신비밀보호법』 등 모든 관련 법규를 준수하기 위해 [에스케이네트웍스주식회사 홈페이지 개인정보취급방침]을 제정 하고 이를 준수하고 있습니다.
                                    </p>
                                    <p class="para">회사는 개인정보취급방침을 홈페이지 첫 화면 및 주민등록번호와 성명을 입력할 때 이용자들이 언제나 용이하게 보실 수 있도록 조치하고 있습니다. [에스케이네트웍스주식회사 홈페이지 개인정보취급방침]은 관련 법률 및 지침의 변경과 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 개인정보취급방침의 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 개인정보 취급방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 사이트 방문 시 수시로 확인하여 주시기 바랍니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link2"><span class="link-text">2. 개인정보 수집에 대한 동의</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link3"><span class="link-text">3. 개인정보의 처리 목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link5"><span class="link-text">5. 개인정보의 수집항목 및 수집방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link7"><span class="link-text">7. 쿠키 (cookie) 의 사용 목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link8"><span class="link-text">8. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link9"><span class="link-text">9. 비밀유지</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link10"><span class="link-text">10. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link11"><span class="link-text">11. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link12"><span class="link-text">12. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link13"><span class="link-text">13. 개인정보의 안정성 확보</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link14"><span class="link-text">14. 의견수렴 및 불만처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link15"><span class="link-text">15. 개인정보관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-1-link16"><span class="link-text">16. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-1-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 생년월일 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다)를 말합니다. 회사는 귀하의 개인정보보호를 매우 중요시하며, 『정보통신망이용촉진및정보보호에관한법률』상의 개인정보보호규정 및 정보통신부가 제정한 『개인정보보호지침』을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다. 회사는 개인정보취급방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 회사는 개인정보취급방침의 지속적인 개선을 위하여 개인정보취급방침을 개정하는데 필요한 절차를 정하고 있으며, 개인정보취급방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 이용자가 쉽게 알아볼 수 있도록 하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont2">
                                                <span class="btn-text">2. 개인정보 수집에 대한 동의</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보취급방침 및 이용약관을 마련하여 이를 고지하고, 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명과 이메일을 입력 시 개인정보취급방침 및 이용약관에 대해 동의여부를 선택할 수 있는 장치 (「동의함」버튼, 「동의하지 않음」버튼)를 마련하여, 이용자가 회원가입을 완료하거나 「동의함」버튼을 클릭하는 경우, 본 사이트의 개인정보취급방침 및 이용약관의 내용을 확인하고 개인정보 수집에 대하여 동의한 것으로 봅니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont3">
                                                <span class="btn-text">3. 개인정보의 처리 목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 에스케이네트웍스 홈페이지 서비스는 별도의 개인정보 등록 없이 언제든지 사용할 수 있습니다. 그러나 회사는 보다 더 향상된 양질의 서비스를 제공하기 위하여 필요한 최소한의 범위 내에서 이용자 개인의 정보를 처리하고 있습니다. 에스케이네트웍스 홈페이지에서 진행하는 각종 상담이나 제안에서 회사는 개인정보 입력을 요청할 수 있습니다. 그러나, 회사는 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 가급적 처리하지 않으며 부득이하게 처리해야 할 경우 이용자들의 별도의 사전동의를 반드시 구합니다. 또한, 회사는 이용자의 사전동의 없이는 이용자의 개인정보를 함부로 공개하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont5">
                                                <span class="btn-text">5. 개인정보의 수집항목 및 수집방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 별도의 개인정보 등록 절차 없이 컨텐츠에 자유롭게 접근할 수 있습니다. 다만, 고객상담실 및 사업제안과 관련된 컨텐츠를 이용하는 경우에 한하여 신청자에 관한 개인정보를 일부 수집하고 있습니다. 회사가 수집하는 개인정보는 다음과 같으며, 고객상담실 및 사업제안을 이용한 경우 본인 확인 및 신속한 고객대응을 위해서 아래와 같은 개인정보를 수집하고 있습니다.</p>
                                                <p class="para accent case4">- 성명, 이메일</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">이용자가 고객상담실이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 회사는 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성된 경우 위 개인정보를 파기합니다. 상법 등 관련법령의 규정에 의한 경우와 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 목적으로 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">파기절차 및 방법은 다음과 같습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">파기절차</span><br>
                                                    회원님이 고객 상담실 이용 및 사업제안 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 파기됩니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">파기방법</span><br>
                                                    전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont7">
                                                <span class="btn-text">7. 쿠키 (cookie) 의 사용 목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다. 이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont8">
                                                <span class="btn-text">8. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 "3. 개인정보의 수집 목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다. 다만, 보다 나은 서비스 제공을 위하여 이용자의 개인정보를 제휴사에게 제공할 수 있으며, 이 때에는 사전에 이용자에게 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호?관리되는지에 대해 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다. 회사는 귀하의 개인정보를 제 3자에게 위탁하지 않는 것이 원칙이나, 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 위탁업무 목적, 위탁처리 되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont9">
                                                <span class="btn-text">9. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">귀하와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">귀하가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont10">
                                                <span class="btn-text">10. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont11">
                                                <span class="btn-text">11. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">이용자 및 법정대리인은 언제든지 SK네트웍스 홈페이지에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다. 이용자 및 법정대리인이 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다. 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont12">
                                                <span class="btn-text">12. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 귀하의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont13">
                                                <span class="btn-text">13. 개인정보의 안정성 확보</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 회원님의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조, 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">회원님의 개인정보는 파일 및 전송 데이터를 암호화하여 혹시 발생할 수 있는 사고 시라도 회원님의 개인정보가 유출되지 않도록 관리되고 있습니다.</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">회원님의 개인정보를 저장하고 처리하는 시스템은 방화벽과 침입탐지시스템을 통하여 보호되며 24시간 감시를 통하여 외부로부터의 위협에 대해 관리되고 있습니다.</li>
                                                    <li class="order-item">회원님의 개인정보를 저장하고 처리하는 시스템은 자동으로 갱신되는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해로부터 보호되고 있습니다.</li>
                                                </ul>
                                                <p class="para">또한 회사는 회원님의 개인정보를 취급함에 있어 다음과 같은 관리적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">회원님의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다.</li>
                                                    <li class="order-item">임직원이 업무를 함에 있어 회원님의 개인정보를 보호하기 위해 지켜야 할 사내규정을 마련하여 엄격하게 준수하고 있습니다.</li>
                                                    <li class="order-item">임직원이 회원님의 개인정보를 취급하기 이전에 서약서를 통하여 회원님의 개인정보에 대한 정보유출을 사전에 방지하고 사내규정에 대한 이행사항 및 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 역량을 강화하기 위하여 정기적인 교육프로그램을 개발/운영하고 개인정보보호교육을 실시하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 인식을 제고하기 위하여 부정기적인 캠페인을 시행합니다.</li>
                                                    <li class="order-item">그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 회원님께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                                                </ul>
                                                <p class="para">하지만 이와 더불어 개인정보의 보안관리에는 회원님 본인의 노력도 매우 중요합니다. 오직 ID(고유번호)와 Password(비밀번호)를 알고 있는 본인에게만 개인정보에 접근할 수 있는 권한이 있으며, Password(비밀번호)를 유지하고 관리할 책임 역시도 본인에게 있습니다. 반드시 본인만이 알 수 있는 내용으로 Password(비밀번호)를 구성해야 하며, 주민번호의 일부 또는 전화번호 등 타인이 쉽게 도용 할 수 있는 Password(비밀번호)의 사용을 지양해야 합니다. 또한 공동으로 사용하는 PC에서 저희 서비스에 접속하여 로그온 한 상태에서 다른 사이트로 이동할 경우, 혹은 서비스 이용을 종료하였을 경우에는 반드시 해당 브라우저를 종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 ID(고유번호), Password(비밀번호)가 포함된 회원님의 정보가 타인에게 손쉽게 유출될 위험이 있습니다. 회사는 회원님 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont14">
                                                <span class="btn-text">14. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 귀하의 의견을 소중하게 생각하며, 귀하는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 귀하와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">한국인터넷진흥원 개인정보침해신고센터</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1336</span><br>
                                                    URL : <a href="http://www.1336.or.kr" target="_blank" title="한국인터넷진흥원 개인정보침해신고센터 바로가기 (새창 열기)">http://www.1336.or.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 첨단범죄수사과</span><br>
                                                    전화 : <span class="accent case7">02-3480-2000</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 첨단범죄수사과 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버테러대응센터</span><br>
                                                    전화 : <span class="accent case7">02-393-9112</span><br>
                                                    URL : <a href="http://www.netan.go.kr" target="_blank" title="경찰청 사이버테러대응센터 바로가기 (새창 열기)">http://www.netan.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont15">
                                                <span class="btn-text">15. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 임진택<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : 경영지원부문 홍보팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 고힘찬<br>
                                                    직책 : 대리<br>
                                                    연락처 070-2270-3378<br>
                                                    이메일 : <a href="mailto:himchan@sk.com" title="개인정보관리 담당자 고힘찬 대리 메일보내기">himchan@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-1-link16">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-1-cont16">
                                                <span class="btn-text">16. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-1-cont16">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정되었으며, 2009년 06월 08일 개정 되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.1<br> 개인정보처리방침 게시일자 : 2015.12.22</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.1 : E -->
                    <!-- v1.0 : S -->
                    <div class="content-body ver-info-1-0">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">에스케이네트웍스주식회사(이하 "회사"라 한다)는 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 서비스 (이하 "에스케이네트웍스주식회사 홈페이지"라 한다)를 이용함과 동시에 온라인 상에서 회사에 제공한 개인정보가 보호받을 수 있도록 최선을 다하고 있습니다. 이에 회사는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』, 『전기통신사업법』, 『통신비밀보호법』 등 모든 관련 법규를 준수하기 위해 [에스케이네트웍스주식회사 홈페이지 개인정보취급방침]을 제정 하고 이를 준수하고 있습니다.
                                    </p>
                                    <p class="para">회사는 개인정보취급방침을 홈페이지 첫 화면 및 주민등록번호와 성명을 입력할 때 이용자들이 언제나 용이하게 보실 수 있도록 조치하고 있습니다. [에스케이네트웍스주식회사 홈페이지 개인정보취급방침]은 관련 법률 및 지침의 변경과 회사 내부 운영방침의 변경 등으로 인하여 수시로 변경될 수 있고, 이에 따른 개인정보취급방침의 지속적인 개선을 위하여 필요한 절차를 정하고 있습니다. 개인정보취급방침을 개정하는 경우 회사는 그 변경사항에 대해 즉시 홈페이지를 통하여 게시하여 이용자들이 확인할 수 있도록 하고 있습니다. 이용자들께서는 사이트 방문 시 수시로 확인하여 주시기 바랍니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link1"><span class="link-text">1. 총칙</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link2"><span class="link-text">2. 개인정보 수집에 대한 동의</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link3"><span class="link-text">3. 개인정보의 처리 목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link4"><span class="link-text">4. 만 14세 미만 아동의 개인정보보호</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link5"><span class="link-text">5. 개인정보의 수집항목 및 수집방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link6"><span class="link-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link7"><span class="link-text">7. 쿠키 (cookie) 의 사용 목적</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link8"><span class="link-text">8. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link9"><span class="link-text">9. 비밀유지</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link10"><span class="link-text">10. 링크사이트</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link11"><span class="link-text">11. 개인정보의 열람, 갱신, 수정 및 동의 철회</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link12"><span class="link-text">12. 게시물</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link13"><span class="link-text">13. 개인정보의 안정성 확보</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link14"><span class="link-text">14. 의견수렴 및 불만처리</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link15"><span class="link-text">15. 개인정보관리책임자 및 담당자</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-1-0-link16"><span class="link-text">16. 고지의 의무</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- //anchor : E -->
                        <!-- accordion : S -->
                        <div class="section accordion-display design2 case1 type1">
                            <div class="accordion-list">
                                <div class="accordion-item" id="ver-1-0-link1">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont1">
                                                <span class="btn-text">1. 총칙</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">개인정보란 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 생년월일 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함합니다)를 말합니다. 회사는 귀하의 개인정보보호를 매우 중요시하며, 『정보통신망이용촉진및정보보호에관한법률』상의 개인정보보호규정 및 정보통신부가 제정한 『개인정보보호지침』을 준수하고 있습니다. 회사는 개인정보취급방침을 통하여 귀하께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려 드립니다. 회사는 개인정보취급방침을 홈페이지 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다. 회사는 개인정보취급방침의 지속적인 개선을 위하여 개인정보취급방침을 개정하는데 필요한 절차를 정하고 있으며, 개인정보취급방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 이용자가 쉽게 알아볼 수 있도록 하고 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont2">
                                                <span class="btn-text">2. 개인정보 수집에 대한 동의</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 개인정보취급방침 및 이용약관을 마련하여 이를 고지하고, 별도의 동의 절차를 마련하고 있습니다. 회사는 이용자가 성명과 이메일을 입력 시 개인정보취급방침 및 이용약관에 대해 동의여부를 선택할 수 있는 장치 (「동의함」버튼, 「동의하지 않음」버튼)를 마련하여, 이용자가 회원가입을 완료하거나 「동의함」버튼을 클릭하는 경우, 본 사이트의 개인정보취급방침 및 이용약관의 내용을 확인하고 개인정보 수집에 대하여 동의한 것으로 봅니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont3">
                                                <span class="btn-text">3. 개인정보의 처리 목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">대부분의 에스케이네트웍스 홈페이지 서비스는 별도의 개인정보 등록 없이 언제든지 사용할 수 있습니다. 그러나 회사는 보다 더 향상된 양질의 서비스를 제공하기 위하여 필요한 최소한의 범위 내에서 이용자 개인의 정보를 처리하고 있습니다. 에스케이네트웍스 홈페이지에서 진행하는 각종 상담이나 제안에서 회사는 개인정보 입력을 요청할 수 있습니다. 그러나, 회사는 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 가급적 처리하지 않으며 부득이하게 처리해야 할 경우 이용자들의 별도의 사전동의를 반드시 구합니다. 또한, 회사는 이용자의 사전동의 없이는 이용자의 개인정보를 함부로 공개하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont4">
                                                <span class="btn-text">4. 만 14세 미만 아동의 개인정보보호</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만 14세 이상만 가능하도록 하여 아동의 개인정보를 수집하지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont5">
                                                <span class="btn-text">5. 개인정보의 수집항목 및 수집방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 별도의 개인정보 등록 절차 없이 컨텐츠에 자유롭게 접근할 수 있습니다. 다만, 고객상담실 및 사업제안과 관련된 컨텐츠를 이용하는 경우에 한하여 신청자에 관한 개인정보를 일부 수집하고 있습니다. 회사가 수집하는 개인정보는 다음과 같으며, 고객상담실 및 사업제안을 이용한 경우 본인 확인 및 신속한 고객대응을 위해서 아래와 같은 개인정보를 수집하고 있습니다.</p>
                                                <p class="para accent case4">- 성명, 이메일</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link6">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont6">
                                                <span class="btn-text">6. 개인정보의 처리, 보유기간 및 파기 방법</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">이용자가 고객상담실이나 사업제안 등 회사에서 제공하는 서비스를 이용하는 동안 회사는 이용자들의 개인정보를 처리, 보유하며, 이용목적이 달성된 경우 위 개인정보를 파기합니다. 상법 등 관련법령의 규정에 의한 경우와 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 목적으로 일정기간 개인정보를 보유할 수 있습니다.</p>
                                                <p class="para accent case4">- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</p>
                                                <p class="para">파기절차 및 방법은 다음과 같습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">파기절차</span><br>
                                                    회원님이 고객 상담실 이용 및 사업제안 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 파기됩니다.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">파기방법</span><br>
                                                    전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다. 개인정보를 담은 종이는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont7">
                                                <span class="btn-text">7. 쿠키 (cookie) 의 사용 목적</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 '쿠키 (cookie)' 를 사용하지 않습니다. '쿠키 (cookie)' 는 HTTP 서버에서 사용자의 브라우저에 보내는 조그마한 데이터 꾸러미로서 회원의 컴퓨터 하드드라이브에 저장됩니다. 이용자는 브라우저 옵션을 조정하여 모든 쿠키를 받아들이거나, 쿠키가 설치될 때 통지를 보내도록 하거나, 아니면 모든 쿠키를 거부할 수 있습니다. '쿠키 (cookie)' 는 브라우저 종료 시 만료됩니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont8">
                                                <span class="btn-text">8. 개인정보의 목적 외 사용 및 제3자에 대한 제공 및 위탁</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 이용자의 개인정보를 "3. 개인정보의 수집 목적 및 이용목적"에서 고지한 범위 내에서 사용하며, 동 범위를 초과하여 이용하거나 타인 또는 타기업ㆍ기관에 제공하지 않습니다. 다만, 보다 나은 서비스 제공을 위하여 이용자의 개인정보를 제휴사에게 제공할 수 있으며, 이 때에는 사전에 이용자에게 제휴사가 누구인지, 제공 또는 공유되는 개인정보항목이 무엇인지, 왜 그러한 개인정보가 제공되거나 공유되어야 하는지, 그리고 언제까지 어떻게 보호?관리되는지에 대해 동의를 구할 것입니다. 제휴관계에 변화가 있거나 제휴관계가 종결될 때도 같은 절차에 의하여 고지하거나 동의를 구합니다. 회사는 귀하의 개인정보를 제 3자에게 위탁하지 않는 것이 원칙이나, 원활한 업무 처리를 위해 이용자의 개인정보를 위탁 처리할 경우 반드시 사전에 위탁처리 업체명과 위탁 처리되는 개인정보의 범위, 위탁업무 목적, 위탁처리 되는 과정, 위탁관계 유지기간 등에 대해 상세하게 고지합니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont9">
                                                <span class="btn-text">9. 비밀유지</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 직무상 취득하게 되었거나, 귀하가 제공한 개인 관련 정보의 내용을 누설하지 아니하며, 비밀을 유지하기 위하여 적절한 조치를 취할 것입니다. 다만, 다음 각 호의 경우에는 그러하지 않습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">본 사이트에 제공되기 전에 이미 일반에 공개된 정보</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">본 사이트가 제3자로부터 적법하게 취득한 정보</li>
                                                    <li class="order-item">귀하와 상관없이 본 사이트가 독자적으로 개발한 정보</li>
                                                    <li class="order-item">귀하가 서면으로 공개를 승인한 정보</li>
                                                    <li class="order-item">기타 관계법령에서 허용하는 경우</li>
                                                </ul>
                                                <p class="para">예외 사항의 경우에도 본래의 수집 목적 및 이용목적에 반하여 무분별하게 정보가 제공되지 않도록 최대한 노력하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont10">
                                                <span class="btn-text">10. 링크사이트</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자에게 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 본 사이트는 외부 사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는 서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 본 사이트 홈페이지에 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 옮겨갈 경우 해당 사이트의 개인정보처리방침은 본 사이트와 무관하므로 새로 방문한 사이트의 정책을 검토해 보시기 바랍니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont11">
                                                <span class="btn-text">11. 개인정보의 열람, 갱신, 수정 및 동의 철회</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">이용자 및 법정대리인은 언제든지 SK네트웍스 홈페이지에 등록되어 있는 자신의 개인정보를 정정하거나 삭제 요청할 수 있으며, 삭제 요청은 “15. 개인정보관리책임자 및 담당자”에서 정한 자에게 전화 또는 이메일로 할 수 있습니다. 이용자 및 법정대리인이 개인정보의 오류에 대한 정정을 요청한 경우, 정정을 완료하기 전까지 당해 개인정보를 처리 또는 제공하지 않습니다. 잘못된 개인정보를 제3자에게 이미 제공한 경우에는 정정 처리결과를 제3자에게 지체 없이 통지하여 정정하도록 조치하겠습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont12">
                                                <span class="btn-text">12. 게시물</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 귀하의 게시물을 소중하게 생각하며 변조, 훼손, 삭제되지 않도록 최선을 다하여 보호합니다. 그러나 다음의 경우는 그러하지 아니합니다.</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">스팸(spam)성 게시물 (예 : 행운의 편지, 8억 메일, 특정 사이트 광고 등)</li>
                                                        <li class="data-item">타인을 비방할 목적으로 허위 사실을 유포하여 타인의 명예를 훼손하는 글</li>
                                                        <li class="data-item">동의 없는 타인의 신상공개, 본 사이트의 저작권, 제3자의 저작권 등 권리를 침해하는 내용</li>
                                                        <li class="data-item">기타 게시판 주제와 다른 내용의 게시물</li>
                                                    </ul>
                                                </div>
                                                <p class="para">본 사이트는 바람직한 게시판 문화를 활성화하기 위하여 동의 없는 타인의 신상 공개시 특정부분을 삭제하거나 기호 등으로 수정하여 게시할 수 있습니다. 다른 주제의 게시판으로 이동 가능한 내용일 경우 해당 게시물에 이동 경로를 밝혀 오해가 없도록 하고 있습니다. 그 외의 경우 명시적 또는 개별적인 경고 후 삭제 조치할 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont13">
                                                <span class="btn-text">13. 개인정보의 안정성 확보</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">회사는 회원님의 개인정보를 취급함에 있어 개인정보가 분실, 도난, 누출, 변조, 또는 훼손되지 않도록 안전성 확보를 위하여 다음과 같은 기술적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">회원님의 개인정보는 파일 및 전송 데이터를 암호화하여 혹시 발생할 수 있는 사고 시라도 회원님의 개인정보가 유출되지 않도록 관리되고 있습니다.</li>
                                                    <li class="order-item">본 사이트의 행위에 의하지 아니하고 공개된 정보</li>
                                                    <li class="order-item">회원님의 개인정보를 저장하고 처리하는 시스템은 방화벽과 침입탐지시스템을 통하여 보호되며 24시간 감시를 통하여 외부로부터의 위협에 대해 관리되고 있습니다.</li>
                                                    <li class="order-item">회원님의 개인정보를 저장하고 처리하는 시스템은 자동으로 갱신되는 백신프로그램을 이용하여 컴퓨터 바이러스에 의한 피해로부터 보호되고 있습니다.</li>
                                                </ul>
                                                <p class="para">또한 회사는 회원님의 개인정보를 취급함에 있어 다음과 같은 관리적 대책을 강구하고 있습니다.</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">회원님의 개인정보에 대한 접근권한을 최소한의 인원으로 제한하고 있습니다.</li>
                                                    <li class="order-item">임직원이 업무를 함에 있어 회원님의 개인정보를 보호하기 위해 지켜야 할 사내규정을 마련하여 엄격하게 준수하고 있습니다.</li>
                                                    <li class="order-item">임직원이 회원님의 개인정보를 취급하기 이전에 서약서를 통하여 회원님의 개인정보에 대한 정보유출을 사전에 방지하고 사내규정에 대한 이행사항 및 준수여부를 감시하기 위한 내부절차를 마련하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 역량을 강화하기 위하여 정기적인 교육프로그램을 개발/운영하고 개인정보보호교육을 실시하고 있습니다.</li>
                                                    <li class="order-item">임직원의 개인정보보호 인식을 제고하기 위하여 부정기적인 캠페인을 시행합니다.</li>
                                                    <li class="order-item">그 외 내부 관리자의 실수나 기술관리 상의 사고로 인해 개인정보의 상실, 유출, 변조, 훼손이 유발될 경우 즉각 회원님께 사실을 알리고 적절한 대책과 보상을 강구할 것입니다.</li>
                                                </ul>
                                                <p class="para">하지만 이와 더불어 개인정보의 보안관리에는 회원님 본인의 노력도 매우 중요합니다. 오직 ID(고유번호)와 Password(비밀번호)를 알고 있는 본인에게만 개인정보에 접근할 수 있는 권한이 있으며, Password(비밀번호)를 유지하고 관리할 책임 역시도 본인에게 있습니다. 반드시 본인만이 알 수 있는 내용으로 Password(비밀번호)를 구성해야 하며, 주민번호의 일부 또는 전화번호 등 타인이 쉽게 도용 할 수 있는 Password(비밀번호)의 사용을 지양해야 합니다. 또한 공동으로 사용하는 PC에서 저희 서비스에 접속하여 로그온 한 상태에서 다른 사이트로 이동할 경우, 혹은 서비스 이용을 종료하였을 경우에는 반드시 해당 브라우저를 종료하시기 바랍니다. 그렇지 않을 경우, 해당 브라우저를 통해 ID(고유번호), Password(비밀번호)가 포함된 회원님의 정보가 타인에게 손쉽게 유출될 위험이 있습니다. 회사는 회원님 개인의 실수나 기본적인 인터넷의 위험성 때문에 일어나는 일들에 대해 책임을 지지 않습니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont14">
                                                <span class="btn-text">14. 의견수렴 및 불만처리</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 귀하의 의견을 소중하게 생각하며, 귀하는 의문사항으로부터 언제나 성실한 답변을 받을 권리가 있습니다. 본 사이트는 귀하와의 원활한 의사소통을 위해 회사의 홈페이지 내에 고객상담실을 운영하고 있습니다. 상담은 접수 후 24시간 이내에 성실하게 답변 드리겠습니다. 다만, 근무시간 이후 또는 주말 및 공휴일에는 익일 처리하는 것을 원칙으로 합니다. 기타 개인정보에 관한 문의 및 상담이 필요한 경우에는 개인정보침해신고센터, 대검찰청 인터넷범죄수사센터, 경찰청 사이버테러대응센터 등으로 문의하실 수 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">한국인터넷진흥원 개인정보침해신고센터</span><br>
                                                    전화 : (국번없이) <span class="accent case7">1336</span><br>
                                                    URL : <a href="http://www.1336.or.kr" target="_blank" title="한국인터넷진흥원 개인정보침해신고센터 바로가기 (새창 열기)">http://www.1336.or.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">대검찰청 첨단범죄수사과</span><br>
                                                    전화 : <span class="accent case7">02-3480-2000</span><br>
                                                    URL : <a href="http://www.spo.go.kr" target="_blank" title="대검찰청 첨단범죄수사과 바로가기 (새창 열기)">http://www.spo.go.kr</a>
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">경찰청 사이버테러대응센터</span><br>
                                                    전화 : <span class="accent case7">02-393-9112</span><br>
                                                    URL : <a href="http://www.netan.go.kr" target="_blank" title="경찰청 사이버테러대응센터 바로가기 (새창 열기)">http://www.netan.go.kr</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont15">
                                                <span class="btn-text">15. 개인정보관리책임자 및 담당자</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">본 사이트는 이용자가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 이용자에게 고지한 사항들에 반하는 사고가 발생할 시에 개인정보관리책임자가 모든 책임을 집니다. 그러나, 기술적인 보완조치를 했음에도 불구하고, 해킹 등 기본적인 네트워크 상의 위험성에 의해 발생하는 예기치 못한 사고로 인한 정보의 훼손 및 방문자가 작성한 게시물에 의한 각종 분쟁에 관해서는 책임이 없습니다. 회원의 개인정보를 취급하는 책임자 및 담당자는 다음과 같으며 개인정보 관련 문의사항에 신속하고 성실하게 답변해드리고 있습니다.</p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 책임자</span><br>
                                                    성명 : 임진택<br>
                                                    직책 : 팀장<br>
                                                    소속부서 : 경영지원부문 홍보팀
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">개인정보관리 담당자</span><br>
                                                    성명 : 고힘찬<br>
                                                    직책 : 대리<br>
                                                    연락처 070-2270-3378<br>
                                                    이메일 : <a href="mailto:himchan@sk.com" title="개인정보관리 담당자 고힘찬 대리 메일보내기">himchan@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-1-0-link16">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" title="열기" aria-controls="ver-1-0-cont16">
                                                <span class="btn-text">16. 고지의 의무</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-1-0-cont16">
                                            <div class="accordion-inner">
                                                <p class="para">현 개인정보처리방침은 2006년 6월 14일에 제정 되었습니다. 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가ㆍ삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 홈페이지를 통해 고지할 것입니다.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">개인정보처리방침 버전번호 : v1.0<br>개인정보처리방침 최초게시일자 : 2006.06.14</p>
                                </div>
                            </div>
                            <!-- //accordion : E -->
                        </div>
                    </div>
                    <!-- //v1.0 : E-->
                    <div class="content-footer">
                        <div class="accordion-util">
                            <div class="submit-form">
                                <div class="form select design1 case1 type1">
                                    <label for="ver-1-0-select" class="blind">개인정보처리방침 변경일자 이전 버전 보기</label>
                                    <select name="ver-select" id="ver-1-0-select">
                                        <option value="" selected>개인정보처리방침 확인하기</option>
                                        <option value="ver-info-1-0">개인정보처리방침 변경일자 : 2009.06.08 (이전 v1.0버전 보기)</option>
                                        <option value="ver-info-1-1">개인정보처리방침 변경일자 : 2015.12.22 (이전 v1.1버전 보기)</option>
                                        <option value="ver-info-1-2">개인정보처리방침 변경일자 : 2017.10.17 (이전 v1.2버전 보기)</option>
                                        <option value="ver-info-1-3">개인정보처리방침 변경일자 : 2017.12.06 (이전 v1.3버전 보기)</option>
                                        <option value="ver-info-1-4">개인정보처리방침 변경일자 : 2018.01.04 (이전 v1.4버전 보기)</option>
                                        <option value="ver-info-1-5">개인정보처리방침 변경일자 : 2018.02.09 (이전 v1.5버전 보기)</option>
                                        <option value="ver-info-1-6">개인정보처리방침 변경일자 : 2021.07.07 (이전 v1.6버전 보기)</option>
                                        <option value="ver-info-1-7">개인정보처리방침 변경일자 : 2021.09.24 (이전 v1.7버전 보기)</option>
                                        <option value="ver-info-1-8">개인정보처리방침 변경일자 : 2021.11.15 (이전 v1.8버전 보기)</option>
                                        <option value="ver-info-1-9">개인정보처리방침 변경일자 : 2022.03.22 (이전 v1.9버전 보기)</option>
                                        <option value="ver-info-2-0">개인정보처리방침 변경일자 : 2023.04.17 (이전 v2.0버전 보기)</option>
                                        <option value="ver-info-2-1">개인정보처리방침 변경일자 : 2024.05.07 (이전 v2.1버전 보기)</option>
                                        <option value="ver-info-2-2">개인정보처리방침 변경일자 : 2024.05.07 (이전 v2.2버전 보기)</option>
                                        <option value="ver-info-2-3">개인정보처리방침 변경일자 : 2024.09.10 (v2.3버전 보기)</option>
                                        <option value="ver-info-2-4">개인정보처리방침 변경일자 : 2025.04.03 (v2.4버전 보기)</option>
                                    </select>
                                    <div class="arrow"><span class="blind">열림</span></div>
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
<script>
    // 250530 추가 : 0601 텍스트 변경 되도록
    document.addEventListener('DOMContentLoaded', function() {
        newDateChange('2025-06-01 08:00:00');
    });

    function newDateChange(startDateTime) {
        var now = new Date();
        var startDate = new Date(startDateTime);

        var oldTd = document.getElementById('oldTd');
        var newTd = document.getElementById('newTd');

        if (oldTd && newTd) {
            if (now >= startDate) {
                oldTd.style.display = 'none';
                newTd.style.display = 'inline';
            } else {
                oldTd.style.display = 'inline';
                newTd.style.display = 'none';
            }
        } else {
            // console.error('❌ oldTd 또는 newTd 요소를 찾을 수 없습니다.');
        }
    }
</script>
</html>