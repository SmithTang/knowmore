package com.tj.knowmore.par.security.realm;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.tj.knowmore.biz.service.IUserService;
import com.tj.knowmore.biz.user.model.User;

/**
 * 自定义的指定Shiro验证用户登录的类
 * 
 * @author guess
 */
public class MyRealm extends AuthorizingRealm {

    @Autowired
    private IUserService userService;

    /**
     * 为当前登录的Subject授予角色和权限
     * 
     * @see 经测试:本例中该方法的调用时机为需授权资源被访问时
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {
        // 获取当前登录的用户名,等价于(String)principals.fromRealm(this.getName()).iterator().next()
        String currentUsername = (String) super
                .getAvailablePrincipal(principals);
        User user = userService.findByUsername(currentUsername);
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();
        if (null != user) {
            return simpleAuthorInfo;
        } else {
            throw new AuthorizationException();
        }
    }

    /**
     * 验证当前登录的Subject
     * 
     * @see 经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        System.out.println("验证当前Subject时获取到token为"
                + ReflectionToStringBuilder.toString(token,
                        ToStringStyle.MULTI_LINE_STYLE));
        User user = userService.findByUsername(token.getUsername());
//        System.out.println("---->"+user);
        if (null != user) {
//            if (user.getStatus() == Constants.USER_STATUS_LOCK) {
//                throw new LockedAccountException();
//            }
            AuthenticationInfo authcInfo = new SimpleAuthenticationInfo(
                    user.getName(), user.getPassword(), getName());
            return authcInfo;
        } else {
            return null;
        }
    }
}