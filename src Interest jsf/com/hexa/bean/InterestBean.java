package com.hexa.bean;

public class InterestBean {
private double amt;
private int years;
private double rate;
private double result;
private String resCaption;

public String getResCaption() {
	return resCaption;
}
public void setResCaption(String resCaption) {
	this.resCaption = resCaption;
}
public double getRate() {
	return rate;
}
public void setRate(double rate) {
	this.rate = rate;
}
public double getAmt() {
	return amt;
}
public void setAmt(double amt) {
	this.amt = amt;
}
public int getYears() {
	return years;
}
public void setYears(int years) {
	this.years = years;
}
public double getResult() {
	return result;
}
public void setResult(double result) {
	this.result = result;
}
public String calculateInterest() {
this.result= amt*rate*years/100;
this.resCaption="simple interest";
return "calculated interest";
}
public String calculateComInterest() {
	this.result=amt * Math.pow((1+ rate/100),years)-amt;
	this.resCaption="compound interest";
	return "compound";
}

}
