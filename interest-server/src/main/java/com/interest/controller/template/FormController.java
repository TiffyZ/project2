package com.interest.controller.template;

import com.interest.controller.sys.UserController;
import com.interest.model.entity.Regis_FormEntity;
import com.interest.model.entity.PageResult;
import com.interest.model.utils.ResponseWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.interest.service.EmailService;
import com.interest.utils.SecurityAuthenUtil;

import java.util.List;

@RestController
public class FormController {
    private Logger log = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private EmailService emailService;

    @GetMapping("/emails")
    public ResponseWrapper<PageResult> emailsList(@RequestParam("pageSize") int pageSize, @RequestParam("page") int page) {
        PageResult pageResult = new PageResult();
        pageResult.setData(emailService.emailsList(pageSize, page * pageSize));
        pageResult.setTotalCount(emailService.emailsSize(pageSize, page * pageSize));
        return new ResponseWrapper<>(pageResult);
    }

    @GetMapping("/emails/individual")
    public ResponseWrapper<PageResult> emailList(@RequestParam("pageSize") int pageSize, @RequestParam("page") int page) {
        int ID = SecurityAuthenUtil.getId();
        PageResult pageResult = new PageResult();
        pageResult.setData(emailService.emailList(pageSize, page * pageSize, ID));
        pageResult.setTotalCount(emailService.emailsSize(pageSize, page * pageSize));
        return new ResponseWrapper<>(pageResult);
    }

    @PostMapping("/email")
    public ResponseWrapper<Regis_FormEntity> insertEntity(@RequestBody Regis_FormEntity regisFormEntity) {
        int userid = SecurityAuthenUtil.getId();
        regisFormEntity.setUserid(userid);
        emailService.insertEntity(regisFormEntity);
        return new ResponseWrapper<>(regisFormEntity);
    }

    @DeleteMapping("/admin/emails")
    public ResponseWrapper<List<String>> deleteEmails(@RequestBody List<String> groupId) {
        emailService.deleteEmails(groupId);
        return new ResponseWrapper<>(groupId);
    }

    /**
     * 更新Label
     *
     * @param regisFormEntity
     * @return
     */
    @PostMapping("/email/label")
    public ResponseWrapper<Regis_FormEntity> updateLabel(@RequestBody Regis_FormEntity regisFormEntity) {
        emailService.updateLabel(regisFormEntity);
        log.debug("The method is ending");
        return new ResponseWrapper<>(regisFormEntity);
    }

}
