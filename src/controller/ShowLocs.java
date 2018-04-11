package controller;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;

public class ShowLocs extends ActionSupport {
  Locale[] locs;
  
  public Locale[] getLocs() {
    return locs;
  }
  Map<String,String> locsMap=new HashMap<>();
  
  public Map<String, String> getLocsMap() {
    return locsMap;
  }

  @Override public String execute(){
    locs=Locale.getAvailableLocales();
    for(Locale loc:locs){
      locsMap.put(loc.getLanguage()+"_"+loc.getCountry(), loc.getDisplayName(loc));      
    }
    return SUCCESS;
  }
}
