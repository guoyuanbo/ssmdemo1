package com.chinabank.controller;

import com.chinabank.entity.Emp;
import com.chinabank.service.EmpService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/emp")
public class EmpController {

    @Resource(name = "empService")
    private EmpService empService;

    /*
     * 去添加
     */
    @RequestMapping(value = "/toAdd")
    public String toAdd() {
        return "add";
    }

    /*
     * 添加
     */
    @RequestMapping(value = "/doAdd")
    public String add(Emp emp) {
        empService.insert(emp);
        return "redirect:list";
    }

    /*
     * 列表
     */
    @RequestMapping(value = "/list")
    public String list(Model model) {
        List<Emp> list = empService.selectall();
        model.addAttribute("emps", list);
        return "list";
    }

    /*
     * 根据id查询一条数据
     */
    @RequestMapping(value = "/load/{uid}")
    public String load(@PathVariable("uid") int id, Model model) {
        Emp emp = empService.selectone(id);
        model.addAttribute("emp", emp);
        return "load";
    }

    /*
     * 修改
     */
    @RequestMapping(value = "/modify")
    public String modify(Emp emp) {
        empService.update(emp);
        return "redirect:/emp/list";
    }

    /*
     * 删除
     */
    @RequestMapping(value = "/remove/{id}")
    public String remove(@PathVariable("id") int id) {
        empService.delete(id);
        return "redirect:/emp/list";
    }
}
