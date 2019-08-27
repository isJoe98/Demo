package com.cqssc.ncp.mapper;

import com.cqssc.ncp.entity.Frmuser;

public interface UserRepository extends BaseRepository<Frmuser,Long>{
    Frmuser findByName(String name);
    void save(Frmuser frmuser);
    Frmuser findOne(Long userId);
}