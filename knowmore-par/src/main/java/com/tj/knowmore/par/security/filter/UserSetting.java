package com.tj.knowmore.par.security.filter;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.filter.AccessControlFilter;
import org.springframework.beans.factory.annotation.Autowired;

import com.tj.knowmore.biz.service.IUserService;
import com.tj.knowmore.biz.user.model.User;

public class UserSetting extends AccessControlFilter {

    @Autowired
    private IUserService userService;

    @Override
    protected boolean preHandle(ServletRequest request, ServletResponse response) throws Exception {
        Subject subject = getSubject(request, response);
        if (subject == null) {
            return false;
        }
        HttpSession session = ((HttpServletRequest) request).getSession();
        User current_user = (User) session.getAttribute("login_user");
        if (current_user == null) {
            String username = (String) subject.getPrincipal();
            User user = userService.findByUsername(username);
            if (user == null) {
                setLoginUrl("/login");
                redirectToLogin(request, response);
                return false;
            }
            session.setAttribute("login_user", user);
        }
        return true;
    }

    @Override
    protected boolean isAccessAllowed(ServletRequest request, ServletResponse response, Object mappedValue)
            throws Exception {
        return true;
    }

    @Override
    protected boolean onAccessDenied(ServletRequest request, ServletResponse response) throws Exception {
        return true;
    }

}
