package com.skn.user.ir.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class IrAnnouncement extends BaseDto {
    private String announcementIndex;
    private String title;
    private String content;
    private String isOpen;
    private String openDate;
    private String file1Name;
    private String file2Name;
    private String file3Name;
    private String file1Uid;
    private String file2Uid;
    private String file3Uid;
}
