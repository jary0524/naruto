package com.jary.naruto.sys.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.jary.naruto.sys.model.User;
import com.jary.naruto.sys.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	/**
	 * 使用@ModelAttribute实现参数回显
	 * @param id
	 * @param map
	 */
	@ModelAttribute
	public void getUser(@RequestParam(value="userId",required=false) String userId,
			Map<String, Object> map){
		if(userId != null){
			map.put("user_db", userService.getById(userId));
		}
		map.put("admin", userService.getByAccount("admin"));
	}
	
    @RequestMapping(value = "/login")
    public String showLoginForm(HttpServletRequest req, Model model) {
        String exceptionClassName = (String)req.getAttribute("shiroLoginFailure");
        String error = null;
        if(UnknownAccountException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassName)) {
            error = "用户名/密码错误";
        } else if(exceptionClassName != null) {
            error = "其他错误：" + exceptionClassName;
        }
        model.addAttribute("error", error);
        return "login";
    }
	
	@RequestMapping("/regiest")
	public String regiest(User user, @RequestParam(value="account")String account, @RequestParam(value="password")String password) {
        String resultPageURL = InternalResourceViewResolver.FORWARD_URL_PREFIX + "/";
		this.userService.regiest(user);
        return resultPageURL;
	}
	
	@RequestMapping("/modifyPassord")
	public String modifyPassord(User user, @RequestParam(value="account")String account, @RequestParam(value="password")String password, @RequestParam(value="newPassword")String newPassword) {
        String resultPageURL = InternalResourceViewResolver.FORWARD_URL_PREFIX + "/";
		this.userService.modifyPassord(user, newPassword);
        return resultPageURL;
	}

//	@RequestMapping("/login")
//	public String login(User user) {
//	User user_db = this.userService.getById((String) user.getId());
//	Boolean pass = UserUtil.checkPassword(user_db.getPassword(), user.getPassword());
//	if (pass) {
//		return "success";
//	}
//	return "failure";
//}
	public String login(HttpServletRequest request) {
        String resultPageURL = InternalResourceViewResolver.FORWARD_URL_PREFIX + "/";  
        String username = request.getParameter("username");  
        String password = request.getParameter("password");  
//        //获取HttpSession中的验证码  
//        String verifyCode = (String)request.getSession().getAttribute("verifyCode");  
//        //获取用户请求表单中输入的验证码  
//        String submitCode = WebUtils.getCleanParam(request, "verifyCode");  
//        System.out.println("用户[" + username + "]登录时输入的验证码为[" + submitCode + "],HttpSession中的验证码为[" + verifyCode + "]");  
//        if (StringUtils.isEmpty(submitCode) || !StringUtils.equals(verifyCode, submitCode.toLowerCase())){  
//            request.setAttribute("message_login", "验证码不正确");  
//            return resultPageURL;  
//        }  
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);  
        token.setRememberMe(true);  
        System.out.println("为了验证登录用户而封装的token为" + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));  
        //获取当前的Subject  
        Subject currentUser = SecurityUtils.getSubject();  
        try {  
            //在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查  
            //每个Realm都能在必要时对提交的AuthenticationTokens作出反应  
            //所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法  
            System.out.println("对用户[" + username + "]进行登录验证..验证开始");  
            currentUser.login(token);  
            System.out.println("对用户[" + username + "]进行登录验证..验证通过");  
            resultPageURL = "index";  
        }catch(UnknownAccountException uae){  
            System.out.println("对用户[" + username + "]进行登录验证..验证未通过,未知账户");  
            request.setAttribute("message_login", "未知账户");  
        }catch(IncorrectCredentialsException ice){  
            System.out.println("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");  
            request.setAttribute("message_login", "密码不正确");  
        }catch(LockedAccountException lae){  
            System.out.println("对用户[" + username + "]进行登录验证..验证未通过,账户已锁定");  
            request.setAttribute("message_login", "账户已锁定");  
        }catch(ExcessiveAttemptsException eae){  
            System.out.println("对用户[" + username + "]进行登录验证..验证未通过,错误次数过多");  
            request.setAttribute("message_login", "用户名或密码错误次数过多");  
        }catch(AuthenticationException ae){  
            //通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景  
            System.out.println("对用户[" + username + "]进行登录验证..验证未通过,堆栈轨迹如下");  
            ae.printStackTrace();  
            request.setAttribute("message_login", "用户名或密码不正确");  
        }  
        //验证是否登录成功  
        if(currentUser.isAuthenticated()){  
            System.out.println("用户[" + username + "]登录认证通过(这里可以进行一些认证通过后的一些系统参数初始化操作)");  
        }else{  
            token.clear();  
        }  
        return resultPageURL;
	}
	
	/** 
     * 用户登出 
     */  
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){  
         SecurityUtils.getSubject().logout();  
         return InternalResourceViewResolver.REDIRECT_URL_PREFIX + "/";  
    }
	
}
