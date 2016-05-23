package com.jary.naruto.common.shiro;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.jary.naruto.sys.model.User;

/**
 * @author jary0524
 * @date 2015年10月15日 下午5:24:08 
 */
@Component("passwordUtil")
public class PasswordUtil {

	@Value("${crypto.hashAlgorithmName}")
	private String hashAlgorithmName;
	
	@Value("${crypto.hashIterations}")
	private int hashIterations;
	
	public boolean validatePassword(User user, String password) {
		SimpleHash hash = new SimpleHash(hashAlgorithmName, password, user.getCredentialsSalt(), hashIterations);
		String encodedPassword = hash.toHex(); 
		return encodedPassword.equals(user.getPassword());
	}
	
	public User updatePassword(User user) {
		// 私盐
		String salt = new SecureRandomNumberGenerator().nextBytes().toHex();
		user.setSalt(salt);
		//密码
		SimpleHash hash = new SimpleHash(hashAlgorithmName, user.getPassword(), user.getCredentialsSalt(), hashIterations);
		user.setPassword(hash.toHex());
		return user;
	}
	
	public static void main(String[] args) {
		SimpleHash hash = new SimpleHash("md5", "123456", "jary0524123456", 2);
		String hashPassword = hash.toHex();
		System.out.println(hashPassword);
		
	}
}
