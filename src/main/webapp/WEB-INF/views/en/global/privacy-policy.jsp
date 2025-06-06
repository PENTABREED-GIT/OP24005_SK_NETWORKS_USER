<%--
  Created by IntelliJ IDEA.
  User: 최지연
  Date: 2024-07-01
  Time: 오후 4:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/en/include/header-inc.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Privacy Policy &lt; SK Networks</title>
    <%@ include file="/WEB-INF/views/en/include/page-header-inc.jsp" %>
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
                activateContentBody('ver-info-2-2');
            } else if (!id) {
                activateContentBody('ver-info-2-2');
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
    <div class="main etc personal-info" id="main">
        <div class="main-inner">
            <div class="local design1">
                <div class="local-info">
                    <ul class="data-list breadcrumb design1 case1 dark">
                        <li class="data-item"><span class="item-text">Home</span></li>
                        <li class="data-item"><span class="item-text">Privacy Policy</span></li>
                    </ul>
                </div>
                <div class="local-head design3">
                    <div class="local-subject">
                        <h2 class="local-name">Privacy Policy</h2>
                    </div>
                </div>
                <div class="local-body">
                    <div class="content-head">Privacy Policy</div>
                    <!-- v2.2 : S -->
                    <div class="content-body ver-info-2-2">
                        <div class="section design1 case8 type1">
                            <div class="section-wrap">
                                <div class="section-body">
                                    <p class="para">SK Networks Co. Ltd. (hereinafter “the Company”) highly values users’ personal information and is exerting utmost efforts so that users can use the official SK Networks website (hereinafter “this Website”) and, at the same time, have their private information protected when it is given to the Company online.</p>
                                    <p class="para">Accordingly, the Company has instituted the Privacy Policy (hereinafter “the Policy”) to comply with relevant laws and regulations including the Personal Information Protection Act.</p>
                                </div>
                            </div>
                        </div>
                        <!-- anchor : S -->
                        <div class="section anchor-area">
                            <div class="anchor-display">
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link1"><span class="link-text">1. General Overview</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link2"><span class="link-text">2. Types of Personal Information to be Collected &amp; Collection Methods</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link3"><span class="link-text">3. Purpose of Collecting and Using Personal Information</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link4"><span class="link-text">4. Protection of Personal Information for Children Under 14</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link5"><span class="link-text">5. Personal Information Processors &amp; Processing Details</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link6"><span class="link-text">6. Processing, Retention Period and Disposal of Personal Information</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link7"><span class="link-text">7. Implementation, Operation and Rejection of Automatic Personal Information Collection Mechanism</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link8"><span class="link-text">8. Confidentiality</span></a>
                                    </li>
                                </ul>
                                <ul class="nav anchor-list">
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link9"><span class="link-text">9. Links to Other Sites</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link10"><span class="link-text">10. Users’ Rights and How to Exercise Them</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link11"><span class="link-text">11. Postings</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link12"><span class="link-text">12. Safeguards for Personal Information</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link13"><span class="link-text">13. Receiving user feedback and handling grievances</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link14"><span class="link-text">14. Chief Privacy Officer and Personal Information Protection Contact</span></a>
                                    </li>
                                    <li class="nav-item anchor-item">
                                        <a class="nav-link anchor-link" href="#ver-2-2-link15"><span class="link-text">15. Notice of Amendment to the Personal Information Processing Policy</span></a>
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
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont1">
                                                <span class="btn-text">1. General Overview</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont1">
                                            <div class="accordion-inner">
                                                <p class="para">Through this policy, the Company informs users the purposes and methods for using personal data provided by them, as well as the safeguards implemented for personal information protection. This policy is prominently disclosed on the front page of the Company website to ensure easy accessibility for users at all times. It may be subject to periodic changes in accordance with procedures specified for continuous improvement, such as changes in relevant laws, guidelines, or internal operational policies of the Company. In the event of amendments to this policy, the Company will promptly publish the applicable changes on its website to ensure accessibility for users. Users are encouraged to review this personal information processing policy periodically when visiting the website.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link2">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont2">
                                                <span class="btn-text">2. Types of Personal Information to be Collected &amp; Collection Methods</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont2">
                                            <div class="accordion-inner">
                                                <p class="para">Most services on the Company’s website are freely accessible and do not require advance registration of personal information. However, the following services may require minimal personal data to ensure better service quality.</p>
                                                <p class="para">To collect personal information from users, the Company has established a separate consent process. The Company provides a mechanism, including “Agree” and “Disagree” buttons, through which users can consent to the collection and use of their names, email addresses. Users who click the “Agree” button are considered to have consented to the collection and use of their personal information.</p>
                                                <p class="para">Under the Personal Information Protection Act, the Company collects and utilizes the following categories of personal information:</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 960px;">
                                                        <caption>This table provides the personal information items and methods of collection and consists of categories, collection items, purpose of use, and retention period.</caption>
                                                        <colgroup>
                                                            <col style="width: 15%;">
                                                            <col style="width: 15%;">
                                                            <col style="width: 25%;">
                                                            <col style="width: auto;">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" scope="col">Classification</th>
                                                                <th scope="col">Personal Information to be Collected</th>
                                                                <th scope="col">Intended Purpose</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>Essential</td>
                                                                <td>Customer inquiry, Business proposal</td>
                                                                <td>Personal name / email address</td>
                                                                <td>To identify users intending to use services / To respond to inquiries</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Optional</td>
                                                                <td>Customer inquiry</td>
                                                                <td>Contact information</td>
                                                                <td>To respond to inquiries</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <p class="comment design1">
                                                    * When a user utilizes a service, the following personal information may be automatically generated and collected:<br> - Connecting IP data.
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link3">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont3">
                                                <span class="btn-text">3. Purpose of Collecting and Using Personal Information</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont3">
                                            <div class="accordion-inner">
                                                <p class="para">The Company utilizes the collected personal information solely for verifying user identity and ensuring timely response regarding customer inquiries and business proposals. If there is a change in the purpose of use, appropriate actions are taken, including obtaining additional consent in accordance with relevant laws and regulations.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link4">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont4">
                                                <span class="btn-text">4. Protection of Personal Information for Children Under 14</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont4">
                                            <div class="accordion-inner">
                                                <p class="para">To protect the personal information of children under 14, the Company chooses not to collect personal information from children by permitting membership applications only from individuals aged 14 years or older.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link5">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont5">
                                                <span class="btn-text">5. Personal Information Processors &amp; Processing Details</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont5">
                                            <div class="accordion-inner">
                                                <p class="para">The Company utilizes specialized processing contractors to handle certain aspects of user service maintenance operations. Those contracted entities are prohibited from using personal information for purposes other than those specified in the contract. In addition, the Company regularly monitors and supervises those processing contractors to prevent any unauthorized use of personal information. Prior to engaging in any processing operations, the Company provides advance notice to users.</p>
                                                <div class="t-display design1 case1 type1 align3 scroll">
                                                    <table style="min-width: 520px;" class="col-w-2">
                                                        <caption>This table provides personal information consignment companies and contents and consists of trustees and processing consignment tasks.</caption>
                                                        <colgroup>
                                                            <col class="col1">
                                                            <col class="col2">
                                                        </colgroup>
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Personal Information Processors</th>
                                                                <th scope="col">Contracted Processing Scope</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <td>
                                                                    <span id="oldTd">SK Inc. C&amp;C</span>
                                                                    <span id="newTd">SK Inc. AX</span>
                                                                </td>
                                                                <td>IT system maintenance</td>
                                                            </tr>
                                                            <tr>
                                                                <td>Pentabreed</td>
                                                                <td>Website operation and management</td>
                                                            </tr>
                                                            <tr>
                                                                <td>SK university (mySUNI)</td>
                                                                <td>Training and testing for executives/employees Reimbursement of training expenses through employment insurance</td>
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
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont6">
                                                <span class="btn-text">6. Processing, Retention Period and Disposal of Personal Information</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont6">
                                            <div class="accordion-inner">
                                                <p class="para">The Company processes and retains users’ personal information for the duration of their use of services provided by the Company, such as customer counseling or business proposals. Personal information is promptly deleted when there is no longer necessary for the intended purpose, when the user’s personal information is no longer needed.<br> However, personal information may be retained for a specified period as outlined below, for the purpose of confirming rights and obligations related to transactions, etc. under relevant laws and regulations, including the Act on the Protection of Consumers in E-Commerce, etc.</p>
                                                <p class="para accent case4">- Records of consumer complaints or dispute resolution: Act on the Protection of Consumers in E-Commerce, etc., for a period of 3 years</p>
                                                <p class="para">Personal information stored in electronic files is deleted using technical methods that render record reproduction impossible. Other records, printed materials, hard copy documents, etc., containing personal information, are destroyed using an automatic shredder or through incineration.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link7">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont7">
                                                <span class="btn-text">7. Implementation, Operation and Rejection of Automatic Personal Information Collection Mechanism</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont7">
                                            <div class="accordion-inner">
                                                <p class="para">This website does not utilize cookies. A cookie is a small data file sent from a HTTP server to a user’s browser and stored in the user’s computer hard disk drive.</p>
                                                <p class="para">Users can configure their browser settings to accept all cookies, receive notifications before cookie installation, or reject all cookies. Cookies expire upon closing the browser.</p>
                                                <p class="para accent case4">
                                                    - Installation, operation and rejection of cookies : Users can refuse cookies as follows:<br>
                                                    Ex. 1) Chrome browser: [Settings] → [Privacy and Security] → [Site Setting] → [Cookie and Site Data] → Configure cookie blocking<br>
                                                    Ex. 2) Edge browser: [Settings] → [Cookie and Site Authorities] → Cookie and Stored Data → Configure cookie blocking<br>
                                                    Ex. 3) Internet Explorer: [Tools] → [Internet Options] → [Advanced] in Privacy menu → Configure cookie blocking
                                                </p>
                                                <p class="para accent case4">- Users who refuse to allow cookies to be stored may encounter difficulties in accessing personalized services.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link8">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont8">
                                                <span class="btn-text">8. Confidentiality</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont8">
                                            <div class="accordion-inner">
                                                <p class="para">The Company will not disclose confidential information obtained through business operation or personal information provided by users, and will take appropriate measures to ensure such information remains confidential, except in the following circumstances:</p>
                                                <ul class="order-list design1 case1 type1">
                                                    <li class="order-item">Information already publicly disclosed before it is provided to this website</li>
                                                    <li class="order-item">Information disclosed through actions not attributable to this website</li>
                                                    <li class="order-item">Information lawfully obtained by this website from a third party</li>
                                                    <li class="order-item">Information independently developed by this website regardless of user involvement</li>
                                                    <li class="order-item">Information authorized in writing by a user to be disclosed</li>
                                                    <li class="order-item">Other information permitted to be disclosed under relevant laws and regulations </li>
                                                </ul>
                                                <p class="para">Even in the aforementioned cases, the Company will endeavor to ensure that information is not indiscreetly disclosed against its original purpose of collection and use.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link9">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont9">
                                                <span class="btn-text">9. Links to Other Sites</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont9">
                                            <div class="accordion-inner">
                                                <p class="para">This website may provide users with links to other companies’ websites or materials. In such cases, as we have no control over third-party sites and materials, we do not guarantee and assume no liability for the usefulness of services or materials provided in this manner.</p>
                                                <p class="para">When clicking a link on this website to a page on another site, users are requested to review the policies of the linked website, as its personal information processing policy is independent of ours.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link10">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont10">
                                                <span class="btn-text">10. Users’ Rights and How to Exercise Them</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont10">
                                            <div class="accordion-inner">
                                                <p class="para">Users can request access to, correction of, or deletion of their personal information registered on this website at any time. Requests for deletion can be directed to a contact identified in “14. Personal Information Protection Officer and Manager” over the phone or by email.</p>
                                                <p class="para">If a request for access to personal information or suspension of its processing is submitted, the Company reserves the right to refuse the suspension of processing if there is a specific supporting provision in a law, etc.</p>
                                                <p class="para">When a user requests correction of an error in their personal information, the relevant personal information will not be processed or provided until the correction has been completed.</p>
                                                <p class="para">If personal information containing an error has already been provided to a third party, we will promptly notify the third party of the correction results.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link11">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont11">
                                                <span class="btn-text">11. Postings</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont11">
                                            <div class="accordion-inner">
                                                <p class="para">The Company highly values user postings and takes every measure to ensure they remain unaltered, undamaged, or deleted, except in the following cases:</p>
                                                <div class="bullet-display design1 case1 type6">
                                                    <ul class="data-list">
                                                        <li class="data-item">Spam-type postings (e.g., chain letters, spam emails, advertisements for specific sites, etc.)</li>
                                                        <li class="data-item">Postings that disseminate false information to defame someone’s reputation</li>
                                                        <li class="data-item">Postings that reveal the identity of an individual without their content or infringe on third party rights such as the copyright of this website or other third-party works</li>
                                                        <li class="data-item">Other posting that are not relevant to the topic of the applicable thread</li>
                                                    </ul>
                                                </div>
                                                <p class="para">To maintain decency on social media, this website reserves the right to delete or replace with symbols, etc., any part of a third party’s identity disclosed without their consent. If a post can be moved to a thread on a different topic, the process of moving it will be disclosed to avoid unnecessary misunderstanding. In other cases, posts may be deleted after providing explicit or individual notice.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link12">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont12">
                                                <span class="btn-text">12. Safeguards for Personal Information</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont12">
                                            <div class="accordion-inner">
                                                <p class="para">A. Minimizing people involved in handling personal information<br>
                                                    Authorities of those involved in handling personal information are minimized to safeguard personal information.</p>
                                                <p class="para">B. Providing training regularly to people involved in handling personal information<br>
                                                    To promo the awareness of personal information protection, regular training is provided at least once a year.</p>
                                                <p class="para">C. Conducting internal check regularly<br>
                                                    In-house check is conducted regularly to ensure the security of personal information processing.</p>
                                                <p class="para">D. Developing and implementing internal control plan<br>
                                                    Internal control plan is developed and implemented to keep personal information processing and management secure.</p>
                                                <p class="para">E. Encrypting personal information<br>
                                                    Users’ personal information and passwords are stored/managed as encrypted and protected by separate security features when transmitted.</p>
                                                <p class="para">F. Technological measures against hacking, etc.<br>
                                                    To protect personal information from being compromised and damaged by hacking or computer virus, etc. the Company installs, updates and checks regularly security programs, deploying systems in access-controlled areas and monitoring/blocking them technologically and physically.</p>
                                                <p class="para">G. Restricting access to personal information<br>
                                                    Access to personal information is controlled by assigning, changing and terminating authorities for accessing database system that processes personal information and unauthorized access from outside is controlled by intrusion blocking system.</p>
                                                <p class="para">H. Storing connection records and keeping them tamperproof<br>
                                                    Records of access to personal information processing system are retained for at least one year and security features are used to keep the connection records from being altered, falsified, stolen or lost.</p>
                                                <p class="para">I. Using locking mechanisms to keep documents secure<br>
                                                    Documents, storage media, etc. containing personal information are stored in secure locations protected by locking mechanisms.</p>
                                                <p class="para">J. Controlling unauthorized access<br>
                                                    Physical storage locations are separately specified for personal information and access control procedures are developed and operated for such locations.</p>
                                                <p class="para">K. Safety measures against disasters<br>
                                                    Response procedures such as crisis response manual, etc. are developed and operated to prepare for disasters including acts of God.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link13">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont13">
                                                <span class="btn-text">13. Receiving user feedback and handling grievances</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont13">
                                            <div class="accordion-inner">
                                                <p class="para">Users are always entitled to sincere responses, and this website values their feedback. To facilitate communication with users, the website of the Company provides a link to customer help desk. Inquires and counseling requests will be sincerely responded to within 24 hours from acceptance thereof. Yet, inquiries and requests received after the close of business hours or on weekends or public holidays are to be processed on the immediately following working day. Other inquiries or counseling requests concerning personal information may be filed to the following channels:</p>
                                                <p class="para">
                                                    Personal Information Dispute Mediation Committee : 1833-6972 (https://www.kopico.go.kr)<br>
                                                    Personal Information Breach Reporting Center : 118 (https://privacy.kisa.or.kr)<br>
                                                    Cyber Crime Investigation Dept. of the Supreme Prosecutors’ Office : 1301 (https://www.spo.go.kr)<br>
                                                    Cyber Crime Investigation Bureau of the National Police Agency : 182 (https://ecrm.cyber.go.kr)
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link14">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont14">
                                                <span class="btn-text">14. Chief Privacy Officer and Personal Information Protection Contact</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont14">
                                            <div class="accordion-inner">
                                                <p class="para">This website does its utmost to ensure the security of necessary information for users.
                                                    The chief privacy office takes full responsibility for breaches against the commitments notified to users in connection with personal information protection. However, we do not take liabilities for damage to information caused by unexpected incidents from the risks of basic network architecture such as hacking, etc. in spite of technological measures specified in relevant laws and regulations including the Personal Information Protection Act or various disputes arising in relation to user postings. Chief privacy officer and contact for processing personal information of members are as follows and we will respond promptly and sincerely to personal information-related inquiries.
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">Chief Privacy Officer</span><br>
                                                    Name : Noh, Hyeon-kyu<br>
                                                    Title : Office Director<br>
                                                    Affiliation : Information Protection Office
                                                </p>
                                                <p class="para">
                                                    <span class="accent case4">Personal Information Protection Contact</span><br>
                                                    Name : Shin Ga-eun<br>
                                                    Title : Manager<br>
                                                    Tel. : 070-7800-0958<br>
                                                    Email : <a href="mailto:shingaeun@sk.com" title="Personal Information Protection Manager Shin Ga-eun Send an e-mail">shingaeun@sk.com</a>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-item" id="ver-2-2-link15">
                                    <div class="accordion-wrap">
                                        <div class="accordion-head">
                                            <button type="button" class="btn" aria-controls="ver-2-2-cont15">
                                                <span class="btn-text">15. Notice of Amendment to the Personal Information Processing Policy</span>
                                            </button>
                                        </div>
                                        <div class="accordion-body" id="ver-2-2-cont15">
                                            <div class="accordion-inner">
                                                <p class="para">This Personal Information Processing Policy was established on June 14, 2006 and amended on May 7, 2024. Addition, deletion or revision hereto in line with changes in government policies or security technologies will be notified on this website no later than seven days prior to applicable amendment.</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="accordion-select">
                                    <p class="para">Privacy Policy Version : v2.2<br> Effective Date : May. 7, 2024</p>
                                </div>
                            </div>
                        </div>
                        <!-- //accordion : E -->
                    </div>
                    <!-- //v2.2 : E -->
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