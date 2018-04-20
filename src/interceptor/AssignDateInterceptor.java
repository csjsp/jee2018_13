package interceptor;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import controller.MyAction;

public class AssignDateInterceptor extends AbstractInterceptor {
  private final static Logger logger=LoggerFactory.getLogger(AssignDateInterceptor.class);
  @Override
  public String intercept(ActionInvocation arg) throws Exception {
    MyAction myAction=(MyAction)arg.getAction();
    myAction.setDate(new Date());
    logger.info(""+myAction.getDate());
    return arg.invoke();
  }

}
