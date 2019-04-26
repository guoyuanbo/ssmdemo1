package com.chinabank.service;

import com.chinabank.dao.EmpDao;
import com.chinabank.entity.Emp;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service(value = "empService")
public class EmpServiceImpl implements EmpService {

    @Resource(name = "empDao")
    private EmpDao empDao;

    @Override
    public void insert(Emp emp) {
        empDao.insert(emp);
    }

    @Override
    public List<Emp> selectall() {
        return empDao.selectall();
    }

    @Override
    public Emp selectone(int id) {
        return empDao.selectone(id);
    }

    @Override
    public void update(Emp emp) {
        empDao.update(emp);
    }

    @Override
    public void delete(int id) {
        empDao.delete(id);
    }

}
