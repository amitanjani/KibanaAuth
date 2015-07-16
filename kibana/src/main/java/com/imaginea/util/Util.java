package com.imaginea.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Properties;
/*
 * @Author: Amit Kumar
 */
public class Util {

	public static boolean isLoggedInUserAuthorise(String uid){
		List<String> authorisedUserList = getAuthorisedUserList();
		if(!authorisedUserList.isEmpty() && authorisedUserList.contains(uid)){
			return true;
		}
		return false;
	}
	
	private static List<String> getAuthorisedUserList() {
		List<String> authorisedUserList = null;
		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		Properties properties = new Properties();
		try {
			properties.load(classLoader.getResourceAsStream("properties/authorised_user.properties"));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		String authorisedUsers = properties.getProperty("Authorised_User");
		authorisedUserList = Arrays.asList(authorisedUsers.split(","));
		return authorisedUserList;
	}
	
	
}
