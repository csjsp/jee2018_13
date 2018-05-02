package controller;

import java.io.File;

import com.opensymphony.xwork2.ActionSupport;

public class FileUpload extends ActionSupport {
   //upload
   File upload;
   String uploadContentType;
   String uploadFileName;
public File getUpload() {
	return upload;
}
public void setUpload(File upload) {
	this.upload = upload;
}
public String getUploadContentType() {
	return uploadContentType;
}
public void setUploadContentType(String uploadContentType) {
	this.uploadContentType = uploadContentType;
}
public String getUploadFileName() {
	return uploadFileName;
}
public void setUploadFileName(String uploadFileName) {
	this.uploadFileName = uploadFileName;
}
   
}
