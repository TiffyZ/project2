package com.interest.dao;

import java.util.List;

import com.interest.model.entity.Regis_FormEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface Regis_FormDao {

	void insertEntity(Regis_FormEntity regisFormEntity);

	List<Regis_FormEntity> emailsList(@Param("pageSize") int pageSize, @Param("start") int start);

	List<Regis_FormEntity> femailsList(@Param("pageSize") int pageSize, @Param("start") int start);

	List<Regis_FormEntity> ufemailsList(@Param("pageSize") int pageSize, @Param("start") int start);

	List<Regis_FormEntity> emailList(@Param("pageSize") int pageSize, @Param("start") int start, @Param("ID") int ID);

	Integer emailsSize(@Param("pageSize") int pageSize, @Param("start") int start);

    void deleteEmails(@Param("groupId") List<String> groupId);

	/**
	 * 更新label
	 *
	 * @param regisFormEntity
	 */
	void updateLabel(Regis_FormEntity regisFormEntity);
}
