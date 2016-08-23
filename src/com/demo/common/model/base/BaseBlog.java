package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseBlog<M extends BaseBlog<M>> extends Model<M> implements IBean {

    public java.lang.Integer getId() {
        return get("id");
    }

    public void setId(java.lang.Integer id) {
        set("id", id);
    }

    public java.lang.String getTitle() {
        return get("title");
    }

    public void setTitle(java.lang.String title) {
        set("title", title);
    }

    public java.lang.String getContent() {
        return get("content");
    }

    public void setContent(java.lang.String content) {
        set("content", content);
    }

}
