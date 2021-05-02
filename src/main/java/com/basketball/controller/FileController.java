package com.basketball.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Controller
@RequestMapping("/file")
public class FileController {

    @RequestMapping("/toUpload")
    public String toUpload(){
        return "upload";
    }

    @RequestMapping("/upload")
    public String fileUpload(@RequestParam("file")CommonsMultipartFile file, HttpServletRequest request) throws IOException{


        //获取文件名
        String uploadFileName = file.getOriginalFilename();

        //如果文件名为空直接返回首页
        if ("".equals(uploadFileName)){
            return "redirect:/member/toMain";
        }

        String path = request.getServletContext().getRealPath("/upload");

        File realPath = new File(path);
        if (!realPath.exists()){
            realPath .mkdir();
        }

        InputStream is = file.getInputStream();  //文件输入流
        OutputStream os = new FileOutputStream(new File(realPath, uploadFileName));  //文件输出流

        //读取写出
        int len=0;
        byte[] buffer = new byte[1024];
        while ((len=is.read(buffer))!=-1){
            os.write(buffer,0,len);
            os.flush();
        }
        os.close();
        is.close();
        return "redirect:/member/toMain";
    }

    @RequestMapping(value = "/download")
    public String downloads(HttpServletRequest request, HttpServletResponse response) throws Exception{

        //要下载的图片地址
        String path = request.getServletContext().getRealPath("/upload");
        String fileName = "pp.jpg";

        //设置响应头
        response.reset();
        response.setCharacterEncoding("UTF-8");
        response.setContentType("multipart/form-data"); //二进制传输数据

        response.setHeader("Content-Disposition","attachment;fileName="+ URLEncoder.encode(fileName,"UTF-8"));

        File file = new File(path, fileName);

        //读取文件--输入流
        InputStream input = new FileInputStream(file);
        //写出文件--输出流
        OutputStream output = response.getOutputStream();

        byte[] buff = new byte[1024];
        int index = 0;
        //执行写出操作
        while ((index = input.read(buff))!= -1){
            output.write(buff,0,index);
            output.flush();

        }
        output.close();
        input.close();
        return "ok";
    }

}
