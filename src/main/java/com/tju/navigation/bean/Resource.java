package com.tju.navigation.bean;

/**
 * 资源类，比数据库中多了一个contributorname属性，便于需要贡献者用户名时进行封装
 *
 * @author Administrator
 * @date 2018/04/27
 */
public class Resource {
    private Integer id;
    private String name;
    private String url;
    private String resourcetype;
    private Integer frequency;
    private Integer contributorid;
    private String contributorname;
    private String createtime;

    @Override
    public String toString() {
        return "Resource{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", resourcetype='" + resourcetype + '\'' +
                ", frequency=" + frequency +
                ", contributorid=" + contributorid +
                ", contributorname='" + contributorname + '\'' +
                ", createtime='" + createtime + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getResourcetype() {
        return resourcetype;
    }

    public void setResourcetype(String resourcetype) {
        this.resourcetype = resourcetype;
    }

    public Integer getFrequency() {
        return frequency;
    }

    public void setFrequency(Integer frequency) {
        this.frequency = frequency;
    }

    public Integer getContributorid() {
        return contributorid;
    }

    public void setContributorid(Integer contributorid) {
        this.contributorid = contributorid;
    }

    public String getContributorname() {
        return contributorname;
    }

    public void setContributorname(String contributorname) {
        this.contributorname = contributorname;
    }

    public String getCreatetime() {
        return createtime;
    }

    public void setCreatetime(String createtime) {
        this.createtime = createtime;
    }
}