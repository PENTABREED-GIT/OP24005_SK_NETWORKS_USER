package com.skn.user.ir.mapper;

import com.skn.user.ir.dto.IrAnnouncement;
import com.skn.user.ir.dto.IrData;
import com.skn.user.ir.dto.IrSchedule;
import com.skn.user.ir.dto.IrAuditReport;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface IrMapper {
    /**
     * IR 자료 목록 조회 
     * @param reqMap 검색어, 페이지징, 구분               
     * @return
     */
    List<IrData> selectIrDataList(Map reqMap);
    int selectIrDataListCount(Map reqMap);

    int selectIrScheduleListCount(Map reqMap);
    List<IrSchedule> selectIrScheduleList(Map reqMap);

    /**
     * IR > 재무정보 > 감사보고서 목록 조회
     * * @param reqMap 언어
     * @return
     */
    List<IrAuditReport> selectIrAuditReportList(Map reqMap);

    /**
     * IR > 공시정보 > 전자공고 목록 조회
     * * @param reqMap 언어
     * @return
     */
    List<IrAnnouncement> selectIrAnnouncementList(Map reqMap);
    int selectIrAnnouncementListCount(Map reqMap);
    IrAnnouncement selectIrAnnouncement(Map reqMap);
    IrAnnouncement selectPreviousIrAnnouncement(Map reqMap);
    IrAnnouncement selectNextIrAnnouncement(Map reqMap);

    void updateViewCount(Map<String, Object> reqMap);
}
