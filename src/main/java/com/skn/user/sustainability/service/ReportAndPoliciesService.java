package com.skn.user.sustainability.service;

import com.skn.user.sustainability.dto.ReportAndPolicies;
import com.skn.user.sustainability.mapper.ReportAndPoliciesMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
@RequiredArgsConstructor
public class ReportAndPoliciesService {

    private final ReportAndPoliciesMapper reportAndPoliciesMapper;

    /**
     * 연도별 지속가능경영 보고서 목록 조회
     * * @param reqMap 언어 (KO, EN)
     */
    public List<ReportAndPolicies> getSustainableManagementReportList(Map reqMap) {
        return reportAndPoliciesMapper.selectSustainableManagementReportList(reqMap);
    }
}
