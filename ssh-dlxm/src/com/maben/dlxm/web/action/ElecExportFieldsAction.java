package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecExportFields;
import com.maben.dlxm.service.ElecExportFieldsService;
import com.maben.dlxm.util.StringToListUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import java.util.*;

@Controller("elecExportFieldsAction")
@Scope(value = "prototype") //因为struts2本身是多实例，所以与spring整合需要开启action多实例
public class ElecExportFieldsAction extends BaseAction<ElecExportFields> {

    private ElecExportFields elecExportFields = super.getModel();

    @Resource(name = ElecExportFieldsService.SERVICE_NAME)
    private ElecExportFieldsService elecExportFieldsService;


    public String setExportExcel() {
        final String belongTo = elecExportFields.getBelongTo();
        final ElecExportFields exportFields = elecExportFieldsService.findExportFieldsById(belongTo);
        if (Objects.isNull(exportFields)) {
            return "setExportExcel";
        }
//        存放导出的字段
        final Map<String, String> map = new LinkedHashMap<>();
//        存放未导出的字段
        final Map<String, String> noMap = new LinkedHashMap<>();
//        导出的中文名
        List<String> names = StringToListUtils.stringToList(exportFields.getExpNameList(), "#");
//        导出的英文名
        List<String> fieldsNames = StringToListUtils.stringToList(exportFields.getExpFieldName(), "#");
//        导出的中文名
        List<String> noNames = StringToListUtils.stringToList(exportFields.getNoExpNameList(), "#");
//        未导出的英文名
        List<String> noFieldsNames = StringToListUtils.stringToList(exportFields.getNoExpFieldName(), "#");
        switchMap(map, names, fieldsNames);
        switchMap(noMap, noNames, noFieldsNames);
        request.setAttribute("map", map);
        request.setAttribute("noMap", noMap);
        return "setExportExcel";
    }

    private void switchMap(Map<String, String> map, List<String> names, List<String> fieldsNames) {
        if (Objects.nonNull(names) && names.size() > 0) {
            for (int i = 0; i < names.size(); i++) {
                map.put(fieldsNames.get(i), names.get(i));
            }
        }
    }

    public String saveSetExportExcel() {
        elecExportFieldsService.saveSetExportExcel(elecExportFields);
        return "saveSetExportExcel";
    }

}
