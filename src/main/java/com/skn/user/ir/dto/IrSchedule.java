package com.skn.user.ir.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IrSchedule extends BaseDto {
    private String uid;
    private String irScheduleIndex;
    private String irScheduleType;
    private String classification;
    private String title;
    private String openDataTime;
    private String openDate;
    private String openTime;
    private String isOpen;

    private String classificationName;

    public String getClassificationName() {
        if ("KO".equals(this.getLang())) {
            if ("DOMESTIC".equals(this.getClassification())) {
                this.classificationName = "국내";
            } else {
                this.classificationName = "해외";
            }
        } else {
            if ("DOMESTIC".equals(this.getClassification())) {
                this.classificationName = "Domestic";
            } else {
                this.classificationName = "Overseas";
            }
        }

        return this.classificationName;
    }
}
