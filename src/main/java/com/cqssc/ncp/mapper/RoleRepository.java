package com.cqssc.ncp.mapper;

import com.cqssc.ncp.entity.Role;

public interface RoleRepository extends BaseRepository<Role,Long> {
    void save(Role role);
}