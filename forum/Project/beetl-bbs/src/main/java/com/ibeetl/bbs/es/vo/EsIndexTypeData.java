package com.ibeetl.bbs.es.vo;

import com.ibeetl.bbs.es.annotation.EsEntityType;
import com.ibeetl.bbs.es.annotation.EsOperateType;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;


@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
@AllArgsConstructor
@NoArgsConstructor
public class EsIndexTypeData {

    EsEntityType  entityType;             //实体类型
    EsOperateType operateType;            //操作类型
    Object        id;                     //获取主键


}
