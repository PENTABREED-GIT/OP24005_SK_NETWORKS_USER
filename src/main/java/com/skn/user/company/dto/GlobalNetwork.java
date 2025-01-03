package com.skn.user.company.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class GlobalNetwork extends BaseDto {
    private String globalNetworkIndex;
    private String isKo;
    private String isEn;
    private String regionNameKo;
    private String regionNameEn;
    private String countryNameKo;
    private String countryNameEn;
    private String companyNameKo;
    private String companyNameEn;
    private String addressKo;
    private String addressEn;
    private String phoneNoKo;
    private String phoneNoEn;
    private String isOpen;
    private String latitude;
    private String longitude;
    private String classification;
}
