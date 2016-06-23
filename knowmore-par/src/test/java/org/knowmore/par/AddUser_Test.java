package org.knowmore.par;

import com.tj.knowmore.par.security.encrypt.Coder;

public class AddUser_Test {

	public static void main(String[] args) {
		String name = "test";
		String pwd = "123456";
		System.out.println(Coder.encryptMD5(name + pwd));
	}

}
