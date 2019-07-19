package cn.net.lyta.globle;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author liyaowei
 * */
@Component("LoginInterceptor")
public class LoginInterceptor implements HandlerInterceptor {

    private final Log logger = LogFactory.getLog(getClass());
    /**
     * spring 拦截器例外放行处理
     *
     * */

    private List<String> exceptUrls;

    public List<String> getExceptUrls() {
        return exceptUrls;
    }

    public void setExceptUrls(List<String> exceptUrls) {
        this.exceptUrls = exceptUrls;
    }


    /**
     * 该方法在action执行前执行，可以实现对数据的预处理，
     * 比如：编码、安全控制等。如果方法返回true，则继续执行action。
     *
     * */
    @Override
    public boolean preHandle(@RequestParam("httpServletRequest")HttpServletRequest httpServletRequest,@RequestParam("httpServletResponse") HttpServletResponse httpServletResponse,@RequestParam("o") Object o) throws Exception {

        this.logger.info("请求地址为："+httpServletRequest.toString());
        String url = httpServletRequest.getRequestURI();

        /**
         * spring 拦截器例外放行处理
         *
         * */
        for (String urls:exceptUrls) {
            if(urls.endsWith("/**")){
                if (url.startsWith(urls.substring(0, urls.length() - 3))) {
                    return true;
                }
            } else if (url.startsWith(urls)) {
                return true;
            }
        }

        if(url.toLowerCase().indexOf("get_img")>=0){
            return true;
        }
        if(url.toLowerCase().indexOf("login")>=0){
            return true;
        }

        HttpSession session = httpServletRequest.getSession();
        if(session.getAttribute("user")!=null || session.getAttribute("admin")!=null){
            return true;
        }
        httpServletResponse.sendRedirect("/user/to_login");
        return false;
    }

    /**
     * 该方法在action执行后，生成视图前执行。在这里，我们有机会修改视图层数据。
     * */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    /**
     * 最后执行，通常用于释放资源，处理异常。我们可以根据ex是否为空，来进行相关的异常处理。
     * 因为我们在平时处理异常时，都是从底层向上抛出异常，最后到了spring框架从而到了这个方法中。
     * */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
