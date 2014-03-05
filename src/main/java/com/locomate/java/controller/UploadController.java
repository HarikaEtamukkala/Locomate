package com.locomate.java.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;

import com.locomate.java.beans.UploadFilePO;
import com.locomate.java.proxy.UploadProxy;
import com.locomate.java.proxy.Impl.UploadProxyImpl;

@Controller
public class UploadController {
	
	@Autowired
	private UploadProxy uploadproxy;
	@RequestMapping("/displayUploadPicture")
	public String displayUploadPicture(){
		
		return "upload";
		
	}
@SuppressWarnings("deprecation")

@RequestMapping("/saveFile")

public String pictureSave(@ModelAttribute("uploadForm") UploadFilePO uploadForm,Model model,
		@RequestParam MultipartFile file) throws IOException, ServletException{
	try {
        Blob blob = Hibernate.createBlob(file.getInputStream());

        uploadForm.setFile(blob);
    } catch (IOException e) {
        e.printStackTrace();
    }
	       /* String fileName = "";
	        int read =0;
	        FileOutputStream fos = new FileOutputStream("file");
	        
	       Part filepart= request.getPart("file");
	       filepart.getInputStream().read(arg0);
	        if (multipartFiles != null) {
	        	fileName = multipartFiles.getOriginalFilename();
	        }
	        model.addAttribute("files",fileName);*/
	
	uploadproxy.saveImage(uploadForm);
	        return "viewImage";
	
	    }
	
}

