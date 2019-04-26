package com.chinabank.dao;

import com.chinabank.entity.Emp;

import java.util.List;


public interface EmpDao {

    //增加
    void insert(Emp emp);

    //列表
    List<Emp> selectall();

    //根据ID查询一条数据
    Emp selectone(int id);

    //修改
    void update(Emp emp);

    //删除
    void delete(int id);
}
