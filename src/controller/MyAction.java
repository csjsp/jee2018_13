package controller;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {
 Date date;

public Date getDate() {
  return date;
}

public void setDate(Date date) {
  this.date = date;
}
 
}
