package com.skn.user.ir.controller;

import com.skn.user.common.Page;
import com.skn.user.config.annotation.Operation;
import com.skn.user.ir.dto.IrData;
import com.skn.user.ir.service.IrService;
import com.skn.user.pr.service.PressService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class IrController {
    private final IrService irService;
    private final PressService pressService;

    /**
     * IR > 주식 정보 > 주가 정보
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/stock/stock-price-information" ,"/ir/stock/stock-price-information"})
    public String stockPriceInformation(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/stock/stock-price-information";
    }

    /**
     * IR > 주식 정보 > 주주 환원
     * @param request
     * @param model
     * @return
     */
    @Operation("주식정보 > 주주환원")
    @RequestMapping(value={"/{lang:ko|en}/ir/stock/shareholder-return" ,"/ir/stock/shareholder-return"})
    public String shareholderReturn(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/stock/shareholder-return";
    }

    /**
     * IR > 재무 정보 > 주요재무현황
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/financial-information/key-financial-facts" ,"/ir/financial-information/key-financial-facts"})
    public String keyFinancialFacts(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/financial-information/key-financial-facts";
    }

    /**
     * IR > 재무 정보 > 감사보고서
     *  <pre>
     *  - 언어, 자료 구분에 따라 조회
     *  </pre>
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/financial-information/audit-report" ,"/ir/financial-information/audit-report"})
    public String auditReport(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        Map reqMap = new HashMap();
        reqMap.put("lang", lang.toUpperCase());
        model.addAttribute("irAuditReportList", irService.getIrAuditReportList(reqMap));
        reqMap.put("mainReport", "Y");
        model.addAttribute("mainReportList", irService.getIrAuditReportList(reqMap));

        return lang + "/ir/financial-information/audit-report";
    }

    /**
     * IR > 재무 정보 > 신용등급
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/financial-information/credit-rating" ,"/ir/financial-information/credit-rating"})
    public String creditRating(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/financial-information/credit-rating";
    }

    /**
     * IR > IR 정보 > IR 일정
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/ir-schedule" ,"/ir/ir-schedule"})
    public String irSchedule(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/ir-schedule";
    }

    /**
     * IR > IR 정보 > IR 자료
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/ir-data" ,"/ir/ir-data"})
    public String irData(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/ir-data";
    }

    /**
     * IR > 공시정보 > 전자공시
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/disclosure" ,"/ir/disclosure"})
    public String disclosure(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/ir/disclosure";
    }

    /**
     * IR > 공시정보 > 전자공고
     * @param request
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/announcement" ,"/ir/announcement"})
    public String announcement(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        reqMap.put("lang", lang.toUpperCase());
        int totalCount = irService.getIrAnnouncementListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));

        Page page = new Page(5, currentPage, 10, totalCount);

        model.addAttribute("announcementList", irService.getIrAnnouncementList(reqMap, page));
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("page", page);
        model.addAttribute("pageListSize", 10);

        return lang + "/ir/announcement";
    }

    /**
     * IR > 공시정보 > 전자공고 > 상세페이지
     * @param lang
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/announcement/{uid}" ,"/ir/announcement/{uid}"})
    public String announcementView(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, @PathVariable String uid, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("uid", uid);
        irService.updateViewCount(uid);
        model.addAttribute("previousIrAnnouncement", irService.getPreviousIrAnnouncement(reqMap));
        model.addAttribute("irAnnouncement", irService.getIrAnnouncement(reqMap));
        model.addAttribute("nextIrAnnouncement", irService.getNextIrAnnouncement(reqMap));
        return lang + "/ir/announcement-view";
    }

    /**
     * IR > IR 자료 목록 조회용 include 뷰
     * <pre>
     * - 언어, 자료 구분에 따라 조회
     * </pre>
     * @param lang
     * @param reqMap
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/ir-data-inc" ,"/ir/ir-data-inc"})
    public String irDataInclude(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        int totalCount = irService.getIrDataListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));

        Page page = new Page(5, currentPage, 10, totalCount);

        List<IrData> irDataList = irService.getIrDataList(reqMap, page);

        model.addAttribute("irDataList", irDataList);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("page", page);
        model.addAttribute("pageListSize", 10);

        if (irDataList.isEmpty()) {
            return lang + "/ir/ir-data-no-result-inc"; // 검색 결과 없음에 대한 별도의 JSP 반환
        }

        return lang + "/ir/ir-data-list-inc";
    }

    /**
     * IR > IR 일정
     * <pre>
     *     - IR 일정 표시를 위한 AJAX 호출용
     * </pre>
     * @param lang
     * @param reqMap
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/ir/ir-schedule-list-inc" ,"/ir/ir-schedule-list-inc"})
    public String irScheduleListInc(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        int totalCount = irService.getIrScheduleListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));

        Page page = new Page(5, currentPage, 4, totalCount);

        model.addAttribute("irScheduleList", irService.getIrScheduleList(reqMap, page));
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("page", page);
        model.addAttribute("pageListSize", 4);
        model.addAttribute("period", reqMap.get("period"));

        return lang + "/ir/ir-schedule-list-inc";
    }
}
