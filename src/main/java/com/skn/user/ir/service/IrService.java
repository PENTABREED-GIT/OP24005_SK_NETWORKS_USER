package com.skn.user.ir.service;

import com.skn.user.common.Page;
import com.skn.user.ir.dto.IrAnnouncement;
import com.skn.user.ir.dto.IrAuditReport;
import com.skn.user.ir.dto.IrData;
import com.skn.user.ir.dto.IrSchedule;
import com.skn.user.ir.mapper.IrMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class IrService {
    private final IrMapper irMapper;
    /**
     * IR 자료 목록 조회
     * @param reqMap
     * @return
     */
    public List<IrData> getIrDataList(Map<String, Object> reqMap, Page page) {
        reqMap.put("offset", page.getOffset());
        reqMap.put("size", page.getPageListSize());

        return irMapper.selectIrDataList(reqMap);
    }

    public int getIrDataListCount(Map<String, Object> reqMap) {
        return irMapper.selectIrDataListCount(reqMap);
    }

    public int getIrScheduleListCount(Map<String, Object> reqMap) {
        return irMapper.selectIrScheduleListCount(reqMap);
    }

    public List<IrSchedule> getIrScheduleList(Map<String, Object> reqMap, Page page) {
        reqMap.put("offset", page.getOffset());
        reqMap.put("size", page.getPageListSize());

        return irMapper.selectIrScheduleList(reqMap);
    }

    /**
     * IR > 감사보고서 목록 조회
     * @param reqMap
     * @return
     */
    public List<IrAuditReport> getIrAuditReportList(Map<String, Object> reqMap) {
        return irMapper.selectIrAuditReportList(reqMap);
    }

    /**
     * IR > 전자공고 목록 조회
     * @param reqMap
     * @return
     */
    public List<IrAnnouncement> getIrAnnouncementList(Map<String, Object> reqMap, Page page) {
        reqMap.put("offset", page.getOffset());
        reqMap.put("size", page.getPageListSize());
        return irMapper.selectIrAnnouncementList(reqMap);
    }

    public int getIrAnnouncementListCount(Map<String, Object> reqMap) {
        return irMapper.selectIrAnnouncementListCount(reqMap);
    }

    /**
     * IR > 전자공고 상세 조회
     * @param reqMap
     * @return
     */
    public IrAnnouncement getIrAnnouncement(Map<String, Object> reqMap) {
        return irMapper.selectIrAnnouncement(reqMap);
    }

    /**
     * IR > 전자공고 이전글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    public IrAnnouncement getPreviousIrAnnouncement(Map<String, Object> reqMap) {
        IrAnnouncement data = irMapper.selectPreviousIrAnnouncement(reqMap);
        return data;
    }

    /**
     * IR > 전자공고 다음글 제목, UID 조회
     * @param reqMap UID
     * @return
     */
    public IrAnnouncement getNextIrAnnouncement(Map<String, Object> reqMap) {
        IrAnnouncement data = irMapper.selectNextIrAnnouncement(reqMap);
        return data;
    }

    public void updateViewCount(String uid) {
        Map<String, Object> reqMap = new HashMap<>();
        reqMap.put("uid", uid);
        irMapper.updateViewCount(reqMap);
    }

}
