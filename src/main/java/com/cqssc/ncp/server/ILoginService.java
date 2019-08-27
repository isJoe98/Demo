package com.cqssc.ncp.server;

import com.cqssc.ncp.entity.Frmuser;
import com.cqssc.ncp.entity.Role;

import java.util.Map;

public interface ILoginService {
    //添加用户
    public Frmuser addUser(Map<String, Object> map);

    //添加角色
    public Role addRole(Map<String, Object> map);

    //查询用户通过用户名
    public Frmuser findByName(String name);
}
