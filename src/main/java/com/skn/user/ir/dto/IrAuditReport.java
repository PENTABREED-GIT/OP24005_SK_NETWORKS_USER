package com.skn.user.ir.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IrAuditReport extends BaseDto {

    /**
     * Table: AUDIT_REPORT
     * Column: YEAR 감사보고서
     * */
    private String year;

    /**
     * Table: AUDIT_REPORT
     * Column: IS_OPEN Y: 노출, N: 노출안함
     * */
    private String isOpen;

    /**
     * Table: AUDIT_REPORT, FILE
     * 첨부파일 (연결 기준)
     * */
    private String consolidationFile;

    /**
     * Table: AUDIT_REPORT, FILE
     * 첨부파일 (별도 기준)
     * */
    private String separationFile;

    /**
     * Table: AUDIT_REPORT, FILE
     * 첨부파일 UID (연결 기준)
     * */
    private String consolidationFileUid;

    /**
     * Table: AUDIT_REPORT, FILE
     * 첨부파일 UID (별도 기준)
     * */
    private String separationFileUid;
}
