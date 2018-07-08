package com.quechao.platform.platform.utils;

import java.io.File;
import java.io.FileOutputStream;

public class FileUtil {
    public static void uploadFile(byte[] file, String filePath, String fileName) throws Exception {
//        File file = new File("d://" + multipartFile.getOriginalFilename());
//        try {
//            multipartFile.transferTo(file);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }

        File targetFile = new File(filePath);
        if(!targetFile.exists()){
            targetFile.mkdirs();
        }
        FileOutputStream out = new FileOutputStream(filePath+fileName);
        out.write(file);
        out.flush();
        out.close();
    }
}
