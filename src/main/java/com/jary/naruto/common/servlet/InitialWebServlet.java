package com.jary.naruto.common.servlet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

//import com.jary.framework.core.util.SpringContextUtil;

/**
 * 
 * 
 * @author hk-grc
 * 
 */
public class InitialWebServlet extends HttpServlet {
	/**
	* Logger for this class
	*/
	private static final Logger logger = LoggerFactory.getLogger(InitialWebServlet.class);

	private static final long serialVersionUID = 401865727823322767L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		logger.info("**************web server start**************");
//		// 初始化邮件配置
//		MailHelper.init(configService);
//		// 当前是否为业务服务器
//		boolean isBusinessServer = SystemConfig.getBoolProperty("is.business.server", false);
//		if (isBusinessServer) {
//			// 加载缓存
//			Cache.getInstance().loadCache();
//			// 启动定时器
//			new TimerManager();
//		}
		logger.info("**************web server end**************");
	}

	@Override
	public void destroy() {
		super.destroy();
	}
}
