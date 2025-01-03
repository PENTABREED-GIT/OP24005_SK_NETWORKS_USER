package com.skn.user.company.controller;

import com.skn.user.company.service.GlobalNetworkService;
import com.skn.user.util.NTUtil;
import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@Slf4j
@RequiredArgsConstructor
public class CompanyController {

    private final GlobalNetworkService globalNetworkService;

    @RequestMapping(value={"/company", "/{lang:ko|en}/company", "/company/summary", "/{lang:ko|en}/company/summary"})
    public String summary(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/company/summary";
    }

    @RequestMapping(value={"/company/ceo", "/{lang:ko|en}/company/ceo"})
    public String ceo(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/company/ceo";
    }

    @RequestMapping(value={"/company/history", "/{lang:ko|en}/company/history"})
    public String history(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/company/history";
    }

    @RequestMapping(value={"/company/global-network", "/{lang:ko|en}/company/global-network"})
    public String globalNetwork(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        Map reqMap = new HashMap();

        reqMap.put("lang", lang);
        reqMap.put("classification", "DOMESTIC");
        model.addAttribute("domesticList", globalNetworkService.groupItemsByRegion(globalNetworkService.getGlobalNetworkList(reqMap), "DOMESTIC", lang));
        reqMap.put("classification", "OVERSEAS");
        model.addAttribute("overseasList", globalNetworkService.groupItemsByRegion(globalNetworkService.getGlobalNetworkList(reqMap), "OVERSEAS", lang));
        return lang + "/company/global-network";
    }
}
