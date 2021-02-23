package com.maben.dlxm.service;

import com.maben.dlxm.domain.ElecApplicationTemplate;

import java.io.InputStream;
import java.util.List;

public interface ElecApplicationTemplateService {
    public static final String SERVICE_NAME = "com.maben.dlxm.service.impl.ElecApplicationTemplateServiceImpl";

    List<ElecApplicationTemplate> findApplicationTemplateList();

    void saveElecApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate);

    ElecApplicationTemplate findApplicationTemlateByID(ElecApplicationTemplate elecApplicationTemplate);

    void updateApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate);

    void deleteApplicationTemplate(ElecApplicationTemplate elecApplicationTemplate);

    InputStream findInputStreamWithFile(ElecApplicationTemplate elecApplicationTemplate);
}
