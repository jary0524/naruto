package com.jary.naruto.common.shiro.realm;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import com.jary.naruto.common.constant.WebConstant;
import com.jary.naruto.sys.model.Permission;
import com.jary.naruto.sys.model.Role;
import com.jary.naruto.sys.model.User;
import com.jary.naruto.sys.service.UserService;
import com.jary.naruto.sys.util.UserUtil;

public class MyRealm extends AuthorizingRealm {
	/**
	* Logger for this class
	*/
	private static final Logger logger = LoggerFactory.getLogger(MyRealm.class);

	@Autowired
	private UserService userService;
	
//	@Override  
//    public String getName() {  
//        return "springmvc"; //realm name 为 “a”  
//    }
	
//	@Autowired
//	private SpringCacheManagerWrapper cacheManager;
	
    /** 
     * 为当前登录的Subject授予角色和权限 
     * @see  经测试:本例中该方法的调用时机为需授权资源被访问时 
     * @see  经测试:并且每次访问需授权资源时都会执行该方法中的逻辑,这表明本例中默认并未启用AuthorizationCache 
     * @see  个人感觉若使用了Spring3.1开始提供的ConcurrentMapCache支持,则可灵活决定是否启用AuthorizationCache 
     * @see  比如说这里从数据库获取权限信息时,先去访问Spring3.1提供的缓存,而不使用Shior提供的AuthorizationCache 
     */  
    @Override  
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals){  
        //获取当前登录的用户名,等价于(String)principals.fromRealm(this.getName()).iterator().next()  
        String currentUsername = (String)super.getAvailablePrincipal(principals);  
        List<String> roles = new ArrayList<String>();  
        List<String> permissions = new ArrayList<String>();  
        //从数据库中获取当前登录用户的详细信息  
        User user = userService.getByAccount(currentUsername);  
        if(null != user){
        	List<Role> roleList = userService.getRolesByUserId(user.getUserId());
        	List<Permission> permissionList = userService.getPermissionsByUserId(user.getUserId());
            //实体类User中包含有用户角色的实体类信息  
            if(null!=roleList && roleList.size()>0){  
                //获取当前登录用户的角色  
                for(Role role : roleList){  
                	roles.add(role.getName());
                }
                //实体类Role中包含有角色权限的实体类信息 
                for(Permission permission : permissionList){  
                	permissions.add(permission.getDescription());
                } 
            }  
        }else{  
            throw new AuthorizationException();  
        }  
        //为当前用户设置角色和权限  
        SimpleAuthorizationInfo simpleAuthorInfo = new SimpleAuthorizationInfo();  
        simpleAuthorInfo.addRoles(roles);  
        simpleAuthorInfo.addStringPermissions(permissions);
        return simpleAuthorInfo;  
    }  
   
       
    /** 
     * 验证当前登录的Subject 
     * @see  经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时 
     */  
    @Override  
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {  
        //获取基于用户名和密码的令牌  
        //实际上这个authcToken是从LoginController里面currentUser.login(token)传过来的  
        //两个token的引用都是一样的
        UsernamePasswordToken token = (UsernamePasswordToken)authcToken;  
        System.out.println("验证当前Subject时获取到token为" + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
        String username = token.getUsername();
        logger.info("username:{}", username);
        User user = userService.getByUsername(username);
        if(user == null) {
            logger.info("user:null");
            throw new UnknownAccountException();//没找到帐号
        }
        logger.info("name:{}{}", user.getLastName(), user.getFirstName());
        if(UserUtil.STATUS_LOCK==user.getStatus()) {
            throw new LockedAccountException(); //帐号锁定
        }
        //交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配
        AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
				user.getAccount(), //用户名
				user.getPassword(), //密码
				ByteSource.Util.bytes(user.getCredentialsSalt()),//salt=username+salt
				getName()  //realm name
		);
        //AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getAccount(), user.getPassword().toCharArray(), getName());
        this.setSession(WebConstant.SESSION_CURRRENT_USER, user);  
        return authenticationInfo;
    }  
       
       
    /** 
     * 将一些数据放到ShiroSession中,以便于其它地方使用 
     * @see  比如Controller,使用时直接用HttpSession.getAttribute(key)就可以取到 
     */  
    private void setSession(Object key, Object value){  
        Subject currentUser = SecurityUtils.getSubject();  
        if(null != currentUser){  
            Session session = currentUser.getSession();  
            System.out.println("Session默认超时时间为[" + session.getTimeout() + "]毫秒");  
            if(null != session){  
                session.setAttribute(key, value);  
            }  
        }  
    }
    
}
