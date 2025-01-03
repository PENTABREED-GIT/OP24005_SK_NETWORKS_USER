package com.skn.user.sustainability.mapper;

import com.skn.user.sustainability.dto.ReportAndPolicies;

import java.util.List;
import java.util.Map;

public interface ReportAndPoliciesMapper {
    /**
     * 연도별 지속가능경영 보고서 목록 조회
     * * @param reqMap 언어 (KO, EN)
     * * @return
     */
    List<ReportAndPolicies> selectSustainableManagementReportList(Map reqMap);
}
