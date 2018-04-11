package controller;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import dao.StuDAO;
import dao.StuDAOImp;
import domain.Stu;

public class StuAction extends ActionSupport {
	List<String[]> stus;

	public List<String[]> getStus() {
		return stus;
	}
	List<Stu> stusByObj;
	
	public List<Stu> getStusByObj() {
    return stusByObj;
  }

  public String execute() throws Exception {
		StuDAO dao = new StuDAOImp();
		stus = dao.getAllStus();
		stusByObj=dao.getAllStusByObj();
		return SUCCESS;

	}
}
