package com.hexa.web;

import java.util.ArrayList;
import java.util.List;

import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;
import javax.faces.event.ValueChangeEvent;
import javax.faces.model.SelectItem;
import javax.servlet.http.HttpServletRequest;

import com.hexa.dao.IDao;
import com.hexa.entity.Student;

public class DepartmentBean {

	private IDao dao;

	// setter for injection
	public void setDao(IDao dao) {
		this.dao = dao;
	}

	public List<SelectItem> getDepts() {
		List<SelectItem> lst = new ArrayList<>();
		List<String> dnames = dao.getDepartments();
		for (String dname : dnames) {
			lst.add(new SelectItem(dname, dname));
		}
		return lst;
	}

	public void viewStudentsByDept(ValueChangeEvent e) {
		FacesContext fctx = FacesContext.getCurrentInstance();
		ExternalContext ectx = fctx.getExternalContext();
		HttpServletRequest req = (HttpServletRequest) ectx.getRequest();
		String dname = (String) e.getNewValue();
		List<Student> lst = dao.getStudent(dname);
		if (lst.size() > 0)
			req.setAttribute("slist", lst);
		else
			req.setAttribute("slist", null);
	}

}
