package com.hexa.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

@ManagedBean(name = "abean")
@ViewScoped
public class AccorBean implements Serializable {
	private List<String> brands;
	private List<String> colors;
	private List<String> size;

	public List<String> getBrands() {

		brands = new ArrayList<String>();
		brands.add("levi's");
		brands.add("puma");
		brands.add("caprese");
		brands.add("guci");

		return brands;
	}

	public List<String> getColors() {

		colors = new ArrayList<String>();
		colors.add("black");
		colors.add("white");
		colors.add("ivory");
		colors.add("gray");

		return colors;
	}

	public List<String> getSizes() {

		size = new ArrayList<String>();
		size.add("S");
		size.add("M");
		size.add("L");
		size.add("XL");

		return size;
	}

}
