package com.skn.user.sustainability.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReportAndPolicies extends BaseDto {
    /**
    * Table: REPORTS_AND_POLICIES
    * Column: REPORTS_AND_POLICIES_INDEX 보고서 및 정책 인덱스
    * */
    private String reportsAndPoliciesIndex;

    /**
     * Table: REPORTS_AND_POLICIES
     * Column: OPEN_DATE 일자 YYYY-MM-DD
     * */
    private String openDate;

    /**
     * Column: OPEN_DATE 일자 YYYY-MM-DD 에서
     * '년' 정보만 가져옴
     * */
    private String openYear;

    /**
     * Table: REPORTS_AND_POLICIES
     * Column: LANG  KO: 국문, EN: 영문
     * */
    private String lang;

    /**
     * Table: REPORTS_AND_POLICIES
     * Column: TITLE 제목
     * */
    private String title;

    /**
     * Table: REPORTS_AND_POLICIES
     * Column: IS_OPEN Y: 노출, N: 비노출
     * */
    private String isOpen;

    /**
     * Table: REPORTS_AND_POLICIES, FILE
     * 영문 PDF 파일 인덱스
     * */
    private String koPdfUid;

    /**
     * Table: REPORTS_AND_POLICIES, FILE
     * 영문 PDF 파일 인덱스
     * */
    private String enPdfUid;
}
