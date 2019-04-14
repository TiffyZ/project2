package com.interest.dao;

import com.interest.model.entity.ClientEntity;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ClientDao {
    /**
     * 新建用户信息
     *
     * @param clientEntity
     */
    void insertUser(ClientEntity clientEntity);
}
