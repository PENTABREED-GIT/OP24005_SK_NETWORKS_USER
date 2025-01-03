package com.skn.user.sustainability.controller;

import com.skn.user.sustainability.service.ReportAndPoliciesService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class EsgController {

    private final ReportAndPoliciesService reportAndPoliciesService;

    /**
     * Sustainability 개요 < Sustainability
     */
    @RequestMapping(value={"/{lang:ko|en}/esg" ,"/esg", "/{lang:ko|en}/sustainability/summary", "/sustainability/summary"})
    public String summary(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/summary";
    }

    /**
     * double Bottom Line < 사회적 가치 < Sustainability
     */
    @RequestMapping(value={"/{lang:ko|en}/sustainability/social-value", "/sustainability/social-value", "/sustainability/social-value/double-botoom-line", "/{lang:ko|en}/sustainability/social-value/double-botoom-line"})
    public String doubleBottomLine(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/social-value/double-bottom-line";
    }

    /**
     * 사회적 가치 성과 < 사회적 가치 < Sustainability
     */
    @RequestMapping(value={"/sustainability/social-value/result", "/{lang:ko|en}/sustainability/social-value/result"})
    public String result(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/social-value/result";
    }

    /**
     * 환경경영 < 환경 < Sustainability
     */
    @RequestMapping(value={"/sustainability/environment/management", "/{lang:ko|en}/sustainability/environment/management"})
    public String management(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/environment/environment-management";
    }

    /**
     * 기후변화 < 환경 < Sustainability
     */
    @RequestMapping(value={"/sustainability/environment/climate-change", "/{lang:ko|en}/sustainability/environment/climate-change"})
    public String climateChange(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/environment/climate-change";
    }

    /**
     * 인권경영선언문 < 사회 < Sustainability
     */
    @RequestMapping(value={"/sustainability/society/human-rights-management", "/{lang:ko|en}/sustainability/society/human-rights-management"})
    public String happiness(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/society/human-rights-management";
    }

    /**
     * 구성원 행복 < 사회 < Sustainability
     */
    @RequestMapping(value={"/sustainability/society/member-happiness", "/{lang:ko|en}/sustainability/society/member-happiness"})
    public String sustainableSupplyChain(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/society/member-happiness";
    }

    /**
     * 안전보건 < 사회 < Sustainability
     */
    @RequestMapping(value={"/sustainability/society/safety-and-health", "/{lang:ko|en}/sustainability/society/safety-and-health"})
    public String SafetyAndHealth(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/society/safety-and-health";
    }

    /**
     * 이해관계자 행복 < 사회 < Sustainability
     */
    @RequestMapping(value={"/sustainability/society/stake-holder-happiness", "/{lang:ko|en}/sustainability/society/stake-holder-happiness"})
    public String communityContribution(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/society/stakeholder-happiness";
    }

    /**
     * 정보 보호 및 보안 < 사회 < Sustainability
     */
    @RequestMapping(value={"/sustainability/society/information-protection-and-security", "/{lang:ko|en}/sustainability/society/information-protection-and-security"})
    public String informationProtectionAndSecurity(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/society/information-protection-and-security";
    }

    /**
     * 보고서 및 정책 < 자료실 < Sustainability
     */
    @RequestMapping(value={"/sustainability/governance/structure", "/{lang:ko|en}/sustainability/governance/structure"})
    public String structure(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/governance/structure";
    }

    /**
     * 윤리경영 < 거버넌스 < Sustainability
     */
    @RequestMapping(value={"/sustainability/governance/ethical-management", "/{lang:ko|en}/sustainability/governance/ethical-management"})
    public String ethicalManagement(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/governance/ethical-management";
    }

    /**
     * 자회사ㆍ손자회사 Sustainability관리 < 거버넌스 < Sustainability
     */
    @RequestMapping(value={"/sustainability/governance/subsidiary-esg-management", "/{lang:ko|en}/sustainability/governance/subsidiary-esg-management"})
    public String subsidiaryEsgManagement(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/governance/subsidiary-esg-management";
    }

    /**
     * 투자관리 < 거버넌스 < Sustainability
     */
    @RequestMapping(value={"/sustainability/governance/investment-management", "/{lang:ko|en}/sustainability/governance/investment-management"})
    public String investmentManagement(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/governance/investment-management";
    }

    /**
     * 보고서 및 정책 < 자료실 < Sustainability
     */
    @RequestMapping(value={"/sustainability/reference-room/reports-and-policies", "/{lang:ko|en}/sustainability/reference-room/reports-and-policies"})
    public String reportsAndPolicies(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        Map reqMap = new HashMap();
        reqMap.put("lang", lang);
        model.addAttribute("reportList", reportAndPoliciesService.getSustainableManagementReportList(reqMap));

        return lang + "/sustainability/reference-room/reports-and-policies";
    }

    /**
     * 수상 및 인증 < 자료실 < Sustainability
     */
    @RequestMapping(value={"/sustainability/reference-room/awards-and-certifications", "/{lang:ko|en}/sustainability/reference-room/awards-and-certifications"})
    public String awardsAndCertifictions(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/sustainability/reference-room/awards-and-certifications";
    }
}
