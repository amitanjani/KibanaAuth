package com.imaginea.authorize;

import java.util.Collection;
import java.util.HashSet;

import org.springframework.ldap.core.DirContextOperations;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.ldap.userdetails.LdapAuthoritiesPopulator;

import com.imaginea.util.Util;

public class CustomLdapAuthoritiesPopulator implements LdapAuthoritiesPopulator  {

	public Collection<? extends GrantedAuthority> getGrantedAuthorities(
			DirContextOperations arg0, String userName) {
		Collection<GrantedAuthority> userGroup = new HashSet<GrantedAuthority>();
        if(Util.isLoggedInUserAuthorise(userName)) {
                userGroup.add(new SimpleGrantedAuthority("ROLE_USER"));
        }
        userGroup.add(new SimpleGrantedAuthority("ROLE_OTHERS"));
        return userGroup;
	}

}
