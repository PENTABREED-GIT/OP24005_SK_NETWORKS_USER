package com.skn.user.ir.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IrData extends BaseDto {
    private String irDataIndex;
    private String classification;
    private String dataLang;
    private String title;
    private String isOpen;
    private String addedFile;
    private String fileUid;
}
