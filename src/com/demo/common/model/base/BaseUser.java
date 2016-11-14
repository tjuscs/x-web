package com.demo.common.model.base;

import com.jfinal.plugin.activerecord.IBean;
import com.jfinal.plugin.activerecord.Model;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseUser<M extends BaseUser<M>> extends Model<M> implements IBean {

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

    public java.lang.Integer getJobTitle() {
        return get("job_title");
    }

    public void setJobTitle(java.lang.Integer jobTitle) {
        set("job_title", jobTitle);
    }

    public java.lang.String getAwardName() {
        return get("award_name");
    }

    public void setAwardName(java.lang.String awardName) {
        set("award_name", awardName);
    }

    public java.util.Date getAwardDate() {
        return get("award_date");
    }

    public void setAwardDate(java.util.Date awardDate) {
        set("award_date", awardDate);
    }

    public java.lang.Long getAwardType() {
        return get("award_type");
    }

    public void setAwardType(java.lang.Long awardType) {
        set("award_type", awardType);
    }

    public java.lang.String getDepartment() {
        return get("department");
    }

    public void setDepartment(java.lang.String department) {
        set("department", department);
    }

    public java.lang.Integer getLaboratory() {
        return get("laboratory");
    }

    public void setLaboratory(java.lang.Integer laboratory) {
        set("laboratory", laboratory);
    }

    public java.lang.Integer getOrderIndex() {
        return get("order_index");
    }

    public void setOrderIndex(java.lang.Integer orderIndex) {
        set("order_index", orderIndex);
    }

    public java.lang.Integer getVerified() {
        return get("verified");
    }

    public void setVerified(java.lang.Integer verified) {
        set("verified", verified);
    }

    public java.lang.String getIntroduction() {
        return get("introduction");
    }

    public void setIntroduction(java.lang.String introduction) {
        set("introduction", introduction);
    }

    public java.lang.String getEmail() {
        return get("email");
    }

    public void setEmail(java.lang.String email) {
        set("email", email);
    }

    public java.lang.String getPhone() {
        return get("phone");
    }

    public void setPhone(java.lang.String phone) {
        set("phone", phone);
    }

    public java.lang.String getDirection() {
        return get("direction");
    }

    public void setDirection(java.lang.String direction) {
        set("direction", direction);
    }

    public java.lang.String getProject() {
        return get("project");
    }

    public void setProject(java.lang.String project) {
        set("project", project);
    }

    public java.lang.String getAchievement() {
        return get("achievement");
    }

    public void setAchievement(java.lang.String achievement) {
        set("achievement", achievement);
    }

    public byte[] getImg() {
        return get("img");
    }

    public void setImg(byte[] img) {
        set("img", img);
    }

}
