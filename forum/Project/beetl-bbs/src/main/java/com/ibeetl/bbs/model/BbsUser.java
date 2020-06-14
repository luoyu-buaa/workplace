package com.ibeetl.bbs.model;

import lombok.AccessLevel;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.beetl.sql.core.TailBean;

import java.util.Date;


@Data
@EqualsAndHashCode(callSuper = true)
@FieldDefaults(level = AccessLevel.PRIVATE)
@NoArgsConstructor
public class BbsUser extends TailBean {
    Integer id;
    Integer level;
    Integer score;
    Integer balance;
    String  password;
    String  email;
    String  userName;
    String  corp;
    String  ip;
    Date    registerTime;


    public BbsUser(Integer id, String userName) {
        this.id = id;
        this.userName = userName;
    }
}
