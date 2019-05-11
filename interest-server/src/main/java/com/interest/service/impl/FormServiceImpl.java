package com.interest.service.impl;

import java.util.List;

import com.interest.dao.Regis_FormDao;
import com.interest.model.entity.Regis_FormEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.interest.service.FormService;
import com.interest.utils.DateUtil;

@Service
public class FormServiceImpl implements FormService {

	@Autowired
	private Regis_FormDao regisFormDao;

	@Override
	public void insertEntity(Regis_FormEntity regisFormEntity) {
		regisFormEntity.setCreatetime(DateUtil.currentTimestamp());
		regisFormDao.insertEntity(regisFormEntity);
	}

	@Override
	public List<Regis_FormEntity> emailsList(int pageSize, int start) {
		return regisFormDao.emailsList(pageSize,start);
	}

	@Override
	public List<Regis_FormEntity> femailsList(int pageSize, int start) {
		return regisFormDao.femailsList(pageSize,start);
	}

	@Override
	public List<Regis_FormEntity> ufemailsList(int pageSize, int start) {
		return regisFormDao.ufemailsList(pageSize,start);
	}
	@Override
	public List<Regis_FormEntity> emailList(int pageSize, int start, int ID) {
		return regisFormDao.emailList(pageSize,start,ID);
	}

	@Override
	public Integer emailsSize(int pageSize, int start) {
		return regisFormDao.emailsSize(pageSize,start);
	}

	@Override
	public void deleteEmails(List<String> groupId) {
		regisFormDao.deleteEmails(groupId);
	}
    @Override
	public void updateLabel(Regis_FormEntity regisFormEntity){regisFormDao.updateLabel(regisFormEntity);}

}
