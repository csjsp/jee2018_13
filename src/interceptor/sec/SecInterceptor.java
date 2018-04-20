package interceptor.sec;

import java.util.Map;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class SecInterceptor extends AbstractInterceptor {

  @Override
  public String intercept(ActionInvocation arg) throws Exception {
    Map session=arg.getInvocationContext().getSession();
    Object obj=session.get("username");
    //<result name="login">..</result>
    if(obj==null) return "login";
    else return arg.invoke();
  }

}
