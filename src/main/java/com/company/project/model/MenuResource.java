package com.company.project.model;

import javax.persistence.*;

@Table(name = "menu_resource")
public class MenuResource {
    @Column(name = "menu_id")
    private String menuId;

    private String url;

    /**
     * @return menu_id
     */
    public String getMenuId() {
        return menuId;
    }

    /**
     * @param menuId
     */
    public void setMenuId(String menuId) {
        this.menuId = menuId;
    }

    /**
     * @return url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url
     */
    public void setUrl(String url) {
        this.url = url;
    }
}