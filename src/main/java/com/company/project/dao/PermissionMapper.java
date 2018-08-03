package com.company.project.dao;

import com.company.project.model.Menu;
import com.company.project.model.Role;
import com.company.project.model.User;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * Created by clg on 2018/4/17.
 */
public interface PermissionMapper {

    @Select("select * from menu m where EXISTS (select 1 from role_menu rm where m.id=rm.menu_id and rm.role_id=#{roleId})")
    public List<Menu> selectMenuByRoleId(String roleId);

    @ResultMap("com.company.project.dao.UserMapper.BaseResultMap")
    @Select("select * from [user] u where EXISTS (select 1 from user_role ur where u.id=ur.user_id and ur.role_id=#{roleId})")
    public List<User> selectUserByRoleId(String roleId);

    @Select("select * from role r where EXISTS (select 1 from user_role ur where ur.role_id=r.id and ur.user_id=#{userId})")
    public List<Role> selectRoleByUserId(String userId);

    @Select("select * from menu m where EXISTS (select 1 from role_menu rm left join user_role ur on ur.role_id=rm.role_id where rm.menu_id=m.id and ur.user_id=#{userId})")
    public List<Menu> selectMenuByUserId(String userId);


    @Insert("insert into user_role(role_id,user_id) values(#{param1},#{param2})")
    public int insertRoleUser(String roleId,String userId);

    @Delete("delete from user_role where role_id=#{param1} and user_id=#{param2} ")
    public int deleteRoleUser(String roleId,String userId);

    @Delete("delete from user_role where user_id=#{param1}")
    public int deleteRoleUserByUserId(String userId);

    @Delete("delete from role_menu where role_id=#{roleId}")
    public int deleteRoleMenu(String roleId);

    @Insert("insert into role_menu(role_id,menu_id) values(#{param1},#{param2})")
    public int insertRoleMenu(String roleId,String menuId);

    @Select("select * from menu m where EXISTS (select 1 from role_menu rm where rm.role_id=#{roleId} and rm.menu_id=m.id)")
    List<Menu> selectRoleMenus(String roleId);
}
