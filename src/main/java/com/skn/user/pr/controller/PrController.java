package com.skn.user.pr.controller;

import com.skn.user.common.Page;
import com.skn.user.pr.dto.Press;
import com.skn.user.pr.service.MediaService;
import com.skn.user.pr.service.PressService;
import com.skn.user.pr.service.VideoService;
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
public class PrController {
    private final PressService pressService;
    private final MediaService mediaService;
    private final VideoService videoService;

    @RequestMapping(value={"/{lang:ko|en}/pr/news-room" ,"/pr/news-room"})
    public String newsRoom(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("mainBanner", "Y");
        reqMap.put("mainVideo", "Y");
        int totalCount = pressService.getPrPressListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));
        Page page = new Page(5, currentPage, 10, totalCount);
        List<Press> pressList = pressService.getPrPressList(reqMap, page);

        model.addAttribute("pressList", pressList);
        model.addAttribute("videoList", videoService.getVideoList(reqMap));
        model.addAttribute("mainVideo", videoService.getMainVideo(reqMap));
//        model.addAttribute("socialList", pressService.getBlogFeedList());
        model.addAttribute("mediaList", mediaService.getMediaList(reqMap));
        model.addAttribute("totalCount", totalCount);

        return lang + "/pr/main";
    }

    /**
     * PR > 뉴스룸 목록 조회용 include 뷰
     * <pre>
     * - 언어, 자료 구분에 따라 조회
     * </pre>
     * @param lang
     * @param reqMap
     * @param request
     * @param model
     * @return
     */
    @RequestMapping(value={"/{lang:ko|en}/pr/news-room-inc" ,"/pr/news-room-inc"})
    public String newsRoomInclude(@PathVariable(required = false) String lang, @RequestParam Map<String, Object> reqMap, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");
        reqMap.put("lang", lang.toUpperCase());
        int totalCount = pressService.getPrPressListCount(reqMap);
        int currentPage = Integer.parseInt(NTUtil.isNull(reqMap.get("page"), "1"));
        int pageListSize = Integer.parseInt(NTUtil.isNull(reqMap.get("pageListSize"), "10"));

        if (currentPage > 1) {
            pageListSize = 5;
        }
        Page page = new Page(5, currentPage, pageListSize, totalCount);

        List<Press> pressList = pressService.getPrPressList(reqMap, page);

        model.addAttribute("pressList", pressList);
        model.addAttribute("totalCount", totalCount);
        model.addAttribute("page", page);
        model.addAttribute("pageListSize", 10);
        model.addAttribute("search", reqMap);

        if (currentPage == 1 && pressList.isEmpty()) {
            return lang + "/pr/main-press-no-result-inc"; // 검색 결과 없음에 대한 별도의 JSP 반환
        }

        return lang + "/pr/main-press-inc";
    }

    @RequestMapping(value={"/{lang:ko|en}/pr/news-room/{uid}" ,"/pr/news-room/{uid}"})
    public String newsRoomview(@PathVariable(required = false) String lang, HttpServletRequest request, Model model, @PathVariable String uid) {
        lang = NTUtil.isNull(lang, "ko");
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("lang", lang.toUpperCase());
        reqMap.put("uid", uid);
        reqMap.put("searchWord", request.getParameter("searchWord"));

        pressService.updateViewCount(uid);

        model.addAttribute("prPress", pressService.getPrPress(reqMap));
        model.addAttribute("previousPrPress", pressService.getPreviousPrPress(reqMap));
        model.addAttribute("nextPrPress", pressService.getNextPrPress(reqMap));

        return lang + "/pr/main-view";
    }

    @RequestMapping(value={"/{lang:ko|en}/pr/brand" ,"/pr/brand"})
    public String brand(@PathVariable(required = false) String lang, HttpServletRequest request, Model model) {
        lang = NTUtil.isNull(lang, "ko");

        return lang + "/pr/brand";
    }
}
