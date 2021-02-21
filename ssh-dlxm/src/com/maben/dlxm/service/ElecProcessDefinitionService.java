package com.maben.dlxm.service;

import com.maben.dlxm.web.form.ProcessDefinitionBean;
import org.jbpm.api.ProcessDefinition;

import java.io.InputStream;
import java.util.List;

public interface ElecProcessDefinitionService {

    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecProcessDefinitionServiceImpl";

    List<ProcessDefinition> findProcessDefinitionOrderByLastVersion();

    void deployProcessDefinition(ProcessDefinitionBean processDefinitionBean);

    InputStream findImageImputStream(ProcessDefinitionBean processDefinitionBean);
}
