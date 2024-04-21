package com.cc.domain;

import java.util.Date;

public class Sales {
    private String id;
    private String number;
    private String name;
    private String cDate;
    private String belOrganization;
    private String contactPerson;
    private String phone;
    private double rmb;
    private double dollar;
    private  int years;
    private Date saleDate;
    private String organization;
    private String nation;
    private String delegate;
    private String contactMan;
    private String inSpectOrg;
    private boolean conclusion;
    private String inspector;
    private Date dateInspect;

    public Sales() {
    }
    public Sales(String id, String number, String name, String cDate, String belOrganization, String contactPerson, String phone, double rmb, double dollar, int years, Date saleDate, String organization, String nation, String delegate, String inSpectOrg, boolean conclusion, String inspector, Date dateInspect) {
        this.id = id;
        this.number = number;
        this.name = name;
        this.cDate = cDate;
        this.belOrganization = belOrganization;
        this.contactPerson = contactPerson;
        this.phone = phone;
        this.rmb = rmb;
        this.dollar = dollar;
        this.years = years;
        this.saleDate = saleDate;
        this.organization = organization;
        this.nation = nation;
        this.delegate = delegate;
        this.inSpectOrg = inSpectOrg;
        this.conclusion = conclusion;
        this.inspector = inspector;
        this.dateInspect = dateInspect;
    }

    public Sales(String id, String number, String name, String cDate, String belOrganization, String contactPerson, String phone, double rmb, double dollar, int years, Date saleDate, String organization, String nation, String delegate, String contactMan, String inSpectOrg, boolean conclusion, String inspector, Date dateInspect) {
        this.id = id;
        this.number = number;
        this.name = name;
        this.cDate = cDate;
        this.belOrganization = belOrganization;
        this.contactPerson = contactPerson;
        this.phone = phone;
        this.rmb = rmb;
        this.dollar = dollar;
        this.years = years;
        this.saleDate = saleDate;
        this.organization = organization;
        this.nation = nation;
        this.delegate = delegate;
        this.contactMan = contactMan;
        this.inSpectOrg = inSpectOrg;
        this.conclusion = conclusion;
        this.inspector = inspector;
        this.dateInspect = dateInspect;
    }

    /**
     * 获取
     * @return id
     */
    public String getId() {
        return id;
    }

    /**
     * 设置
     * @param id
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * 获取
     * @return number
     */
    public String getNumber() {
        return number;
    }

    /**
     * 设置
     * @param number
     */
    public void setNumber(String number) {
        this.number = number;
    }

    /**
     * 获取
     * @return name
     */
    public String getName() {
        return name;
    }

    /**
     * 设置
     * @param name
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * 获取
     * @return cDate
     */
    public String getCDate() {
        return cDate;
    }

    /**
     * 设置
     * @param cDate
     */
    public void setCDate(String cDate) {
        this.cDate = cDate;
    }

    /**
     * 获取
     * @return belOrganization
     */
    public String getBelOrganization() {
        return belOrganization;
    }

    /**
     * 设置
     * @param belOrganization
     */
    public void setBelOrganization(String belOrganization) {
        this.belOrganization = belOrganization;
    }

    /**
     * 获取
     * @return contactPerson
     */
    public String getContactPerson() {
        return contactPerson;
    }

    /**
     * 设置
     * @param contactPerson
     */
    public void setContactPerson(String contactPerson) {
        this.contactPerson = contactPerson;
    }

    /**
     * 获取
     * @return phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * 设置
     * @param phone
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * 获取
     * @return rmb
     */
    public double getRmb() {
        return rmb;
    }

    /**
     * 设置
     * @param rmb
     */
    public void setRmb(double rmb) {
        this.rmb = rmb;
    }

    /**
     * 获取
     * @return dollar
     */
    public double getDollar() {
        return dollar;
    }

    /**
     * 设置
     * @param dollar
     */
    public void setDollar(double dollar) {
        this.dollar = dollar;
    }

    /**
     * 获取
     * @return years
     */
    public int getYears() {
        return years;
    }

    /**
     * 设置
     * @param years
     */
    public void setYears(int years) {
        this.years = years;
    }

    /**
     * 获取
     * @return saleDate
     */
    public Date getSaleDate() {
        return saleDate;
    }

    /**
     * 设置
     * @param saleDate
     */
    public void setSaleDate(Date saleDate) {
        this.saleDate = saleDate;
    }

    /**
     * 获取
     * @return organization
     */
    public String getOrganization() {
        return organization;
    }

    /**
     * 设置
     * @param organization
     */
    public void setOrganization(String organization) {
        this.organization = organization;
    }

    /**
     * 获取
     * @return nation
     */
    public String getNation() {
        return nation;
    }

    /**
     * 设置
     * @param nation
     */
    public void setNation(String nation) {
        this.nation = nation;
    }

    /**
     * 获取
     * @return snation
     */
    public String getDelegate() {
        return delegate;
    }

    /**
     * 设置
     * @param delegate
     */
    public void setDelegate(String delegate) {
        this.delegate = delegate;
    }

    /**
     * 获取
     * @return inSpectOrg
     */
    public String getInSpectOrg() {
        return inSpectOrg;
    }

    /**
     * 设置
     * @param inSpectOrg
     */
    public void setInSpectOrg(String inSpectOrg) {
        this.inSpectOrg = inSpectOrg;
    }

    /**
     * 获取
     * @return conclusion
     */
    public boolean isConclusion() {
        return conclusion;
    }

    /**
     * 设置
     * @param conclusion
     */
    public void setConclusion(boolean conclusion) {
        this.conclusion = conclusion;
    }

    /**
     * 获取
     * @return inspector
     */
    public String getInspector() {
        return inspector;
    }

    /**
     * 设置
     * @param inspector
     */
    public void setInspector(String inspector) {
        this.inspector = inspector;
    }

    /**
     * 获取
     * @return dateInspect
     */
    public Date getDateInspect() {
        return dateInspect;
    }

    /**
     * 设置
     * @param dateInspect
     */
    public void setDateInspect(Date dateInspect) {
        this.dateInspect = dateInspect;
    }

    public String toString() {
        return "Sales{id = " + id + ", number = " + number + ", name = " + name + ", cDate = " + cDate + ", belOrganization = " + belOrganization + ", contactPerson = " + contactPerson + ", phone = " + phone + ", rmb = " + rmb + ", dollar = " + dollar + ", years = " + years + ", saleDate = " + saleDate + ", organization = " + organization + ", nation = " + nation + ", snation = " + delegate + ", inSpectOrg = " + inSpectOrg + ", conclusion = " + conclusion + ", inspector = " + inspector + ", dateInspect = " + dateInspect + "}";
    }

    /**
     * 获取
     * @return contactMan
     */
    public String getContactMan() {
        return contactMan;
    }

    /**
     * 设置
     * @param contactMan
     */
    public void setContactMan(String contactMan) {
        this.contactMan = contactMan;
    }
}
