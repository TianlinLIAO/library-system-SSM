package com.lightning.library.util;

import org.springframework.web.multipart.MultipartFile;

/**
 * Created by lightning on 3/10/2018.
 */
public class UploadedImageFile {
    MultipartFile image;

    public MultipartFile getImage() {
        return image;
    }

    public void setImage(MultipartFile image) {
        this.image = image;
    }
}
