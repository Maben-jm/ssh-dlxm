package com.maben.dlxm.web.action;

import com.maben.dlxm.domain.ElecPopedom;
import com.maben.dlxm.domain.ElecUserRole;
import com.maben.dlxm.service.ElecRoleService;
import com.maben.dlxm.service.ElecSystemDDLService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller(value = "elecRoleAction")
@Scope(value = "prototype")
public class ElecRoleAction extends BaseAction<ElecUserRole>{

    private ElecUserRole elecUserRole = getModel();

    @Resource(name = ElecRoleService.SERVICE_NAME)
    private ElecRoleService elecRoleService;
    @Resource(name = ElecSystemDDLService.SERVICE_NAME)
    private ElecSystemDDLService elecSystemDDLService;

    public String home(){
//        加载角色类型select
        request.setAttribute("roleList", elecSystemDDLService.findElecSystemDDLSbykeyword("角色类型"));
//        加载所有权限选项
        List<ElecPopedom> popedomList = elecRoleService.findAllPopedom();
        this.handlePopedomList(popedomList,request);
        return "home";
    }

    private void handlePopedomList(List<ElecPopedom> popedomList, HttpServletRequest request) {
        Map<String, List<ElecPopedom>> result = new LinkedHashMap<>();
        int maxLength = 0;
        for (int i = 0; i < popedomList.size(); i++) {
            final ElecPopedom popedom = popedomList.get(i);
            final String parentName = popedom.getParentName();
            if (StringUtils.isBlank(parentName)){
                continue;
            }
            if (parentName.length()>maxLength){
                maxLength = parentName.length();
            }
            if (result.containsKey(parentName)){
                result.get(parentName).add(popedom);
            }else{
                final List<ElecPopedom> list = new ArrayList<>();
                list.add(popedom);
                result.put(parentName,list);
            }
        }
        request.setAttribute("popedoms",result);
        request.setAttribute("maxLength",maxLength);
    }
}
