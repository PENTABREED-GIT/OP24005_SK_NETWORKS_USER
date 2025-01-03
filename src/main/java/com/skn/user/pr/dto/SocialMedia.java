package com.skn.user.pr.dto;

import com.skn.user.base.dto.BaseDto;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SocialMedia extends BaseDto {
    private String socialMediaIndex;
    private String title;
    private String contents;
    private String category;
    private List<String> tagList;
    private String tagString;
    private String thumbnailUrl;
    private String url;
    private String thumbnail;

}
