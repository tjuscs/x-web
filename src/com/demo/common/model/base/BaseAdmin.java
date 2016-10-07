package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseAdmin<M extends BaseAdmin<M>> extends Model<M> implements IBean {

	public java.lang.Long getId() {
		return get("id");
	}

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.String getAccount() {
		return get("account");
	}

	public void setAccount(java.lang.String account) {
		set("account", account);
	}

	public java.lang.String getPassword() {
		return get("password");
	}

	public void setPassword(java.lang.String password) {
		set("password", password);
	}

    public java.lang.String getName() {
        return get("name");
    }

    public void setName(java.lang.String name) {
        set("name", name);
    }

}
