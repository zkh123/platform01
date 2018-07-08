package com.quechao.platform.platform.controller;

import com.quechao.platform.platform.demian.User;
import com.quechao.platform.platform.utils.FileUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class HemoController {

    @GetMapping("hello")
    public String getListaUtentiView(ModelMap map){

        List<User> list = new ArrayList<User>();
        User user01 = new User(1,"hlj", 2000.00,new Date());
        list.add(user01);
        try {
            Thread.sleep(2000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        User user02 = new User(2,"shanghai", 4000.02,new Date());
        list.add(user02);
        map.put("name", "Spring Boot");
        map.put("userList",list);
        return "home";
    }

    @GetMapping("hs")
    @ResponseBody
    public String hs(){
        return "home";
    }

//    @PostMapping("file/upload")
//    public void upload(MultipartFile multipartFile) {
//
//        if(multipartFile.isEmpty()){
//            return;
//        }
//
//        File file = new File("d://" + multipartFile.getOriginalFilename());
//        try {
//            multipartFile.transferTo(file);
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }

    //处理文件上传
    @RequestMapping(value="/file/upload", method = RequestMethod.POST)
    public @ResponseBody String uploadImg(@RequestParam("file") MultipartFile file,
                                          HttpServletRequest request) {
        String contentType = file.getContentType();
        String fileName = file.getOriginalFilename();
        /*System.out.println("fileName-->" + fileName);
        System.out.println("getContentType-->" + contentType);*/
        String filePath = request.getSession().getServletContext().getRealPath("imgupload/");
        try {
            FileUtil.uploadFile(file.getBytes(), filePath, fileName);
        } catch (Exception e) {
            // TODO: handle exception
        }
        //返回json
        return "uploadimg success";
    }

}
