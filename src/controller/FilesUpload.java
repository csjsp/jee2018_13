package controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class FilesUpload extends ActionSupport {
	// uploads
	File[] uploads;
	String[] uploadsContentType;
	String[] uploadsFileName;
	public File[] getUploads() {
		return uploads;
	}
	public void setUploads(File[] uploads) {
		this.uploads = uploads;
	}
	public String[] getUploadsContentType() {
		return uploadsContentType;
	}
	public void setUploadsContentType(String[] uploadsContentType) {
		this.uploadsContentType = uploadsContentType;
	}
	public String[] getUploadsFileName() {
		return uploadsFileName;
	}
	public void setUploadsFileName(String[] uploadsFileName) {
		this.uploadsFileName = uploadsFileName;
	}

}
