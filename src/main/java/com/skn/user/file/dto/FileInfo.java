package com.skn.user.file.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FileInfo {
    private String uid = "";
    private String fileIndex = "";
    private String fileName = "";
    private String fileExtension = "";
    private String fileSize = "";
    private String description = "";
    private String parentUid = "";
    private String parentTable = "";
    private String parentType = "";
    private String isSecure = "";
    private String sortOrder = "";
    private String modDate = "";
    private String regDate = "";
    private String tempKey = "";
    private String downloadCount = "";
    private String fileType = "";

    private String filePath = "";


    public String getSaveFilePath() {
        String fileType = "";
        if("Y".equals(this.getIsSecure())) {
            fileType = "secure";
        } else {
            fileType = "public";
        }
        return "/" + fileType + "/" + this.getParentTable().toLowerCase().replace("_","-") + "/" + this.getParentUid() + "/" + this.uid+"."+ this.fileExtension;
    }

    public String getOriginalFileNamePath() {
        String fileType = "";
        if("Y".equals(this.getIsSecure())) {
            fileType = "secure";
        } else {
            fileType = "public";
        }
        filePath = "/" + fileType + "/" + this.getParentTable() + "/" + this.getParentUid() + "/" + this.fileName;
        return filePath;
    }

    public String getConversionPdfPath() {
        filePath = "/" + this.getParentTable() + "/" + this.getParentUid() + "/" + this.getUid() + "." + "pdf";
        return filePath;
    }

    public String getConversionPdfDirectory() {
        filePath = "/" + this.getParentTable() + "/" + this.getParentUid() + "/";
        return filePath;
    }

    private String imageExt = "jpg;jpeg;gif;bmp;png;";
    private String docExt = "docx;xls;xlsx;ppt;pptx;pdf;txt;";

    public String getFileType() {
        if(imageExt.indexOf(this.getFileExtension().toLowerCase()) >= 0 )
        {
            this.setFileType("image");
        } else if(docExt.indexOf(this.getFileExtension().toLowerCase()) >= 0) {
            this.setFileType("file");
        }
        return fileType;
    }

    public String getSavedFileName() {
        return this.getUid() + "." + this.getFileExtension();
    }

    public String getFileDirectory() {
        return this.getParentTable() + "/" + this.getParentUid() + "/";
    }
}

