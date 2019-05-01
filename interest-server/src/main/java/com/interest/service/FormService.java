package com.interest.service;

import java.util.List;

import com.interest.model.entity.Regis_FormEntity;

public interface FormService {

	void insertEntity(Regis_FormEntity regisFormEntity);

	List<Regis_FormEntity> emailsList(int pageSize, int start);

	List<Regis_FormEntity> emailList(int pageSize, int start, int ID);

	Integer emailsSize(int pageSize, int start);

    void deleteEmails(List<String> groupId);
	/**
	 * 更新Label
	 * @param regisFormEntity
	 */
	void updateLabel(Regis_FormEntity regisFormEntity);
}
