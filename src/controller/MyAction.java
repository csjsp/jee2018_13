package controller;

import java.util.Date;

import com.opensymphony.xwork2.ActionSupport;

public class MyAction extends ActionSupport {
 Date date;
 String username;

public Date getDate() {
  return date;
}

public void setDate(Date date) {
  this.date = date;
}

public String getUsername() {
  return username;
}

public void setUsername(String username) {
  this.username = username;
}
 
}
