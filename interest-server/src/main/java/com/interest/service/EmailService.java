package com.interest.service;

import java.util.List;

import com.interest.model.entity.Regis_FormEntity;

public interface EmailService {

	void insertEntity(Regis_FormEntity regisFormEntity);

	List<Regis_FormEntity> emailsList(int pageSize, int start);

	Integer emailsSize(int pageSize, int start);

    void deleteEmails(List<String> groupId);
}
