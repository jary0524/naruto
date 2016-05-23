package com.jary.naruto.common.exceotion;

public class DaoException extends RuntimeException {


	/** 
	* @Fields serialVersionUID : TODO 
	*/
	private static final long serialVersionUID = -1662757581408030786L;

	public DaoException() {
		super();
	}

	public DaoException(String message, Throwable cause,
			boolean enableSuppression, boolean writableStackTrace) {
		super(message, cause, enableSuppression, writableStackTrace);
	}

	public DaoException(String message, Throwable cause) {
		super(message, cause);
	}

	public DaoException(String message) {
		super(message);
	}

	public DaoException(Throwable cause) {
		super(cause);
	}


}
