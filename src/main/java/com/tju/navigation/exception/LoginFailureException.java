package com.tju.navigation.exception;


//自定义异常工具类
public class LoginFailureException extends RuntimeException {

	public LoginFailureException(String message) {
		super(message);
	}
	private static final long serialVersionUID = 1L;

}
