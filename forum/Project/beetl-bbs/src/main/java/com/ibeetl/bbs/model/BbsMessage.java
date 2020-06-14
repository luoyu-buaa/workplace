package com.ibeetl.bbs.model;

import lombok.AccessLevel;
import lombok.Data;
import lombok.experimental.FieldDefaults;


@Data
@FieldDefaults(level = AccessLevel.PRIVATE)
public class BbsMessage {
    Integer id;
    Integer status;
    Integer topicId;
    Integer userId;

}
