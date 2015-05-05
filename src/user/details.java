package user;



import java.util.List;










import javax.persistence.*;

@Entity

public class details {

@Id

private Integer id;
private String label;
private Integer calories;
private String ingredient;
@ManyToOne(fetch=FetchType.LAZY)
@JoinColumn(name="regid")
private Register register;
@OneToMany(mappedBy="de")
private List<favorite> f;
private List<Comment> c;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getLabel() {
	return label;
}
public void setLabel(String label) {
	this.label = label;
}
public Integer getCalories() {
	return calories;
}
public void setCalories(Integer calories) {
	this.calories = calories;
}
public String getIngredient() {
	return ingredient;
}
public void setIngredient(String ingredient) {
	this.ingredient = ingredient;
}
public Register getRegister() {
	return register;
}
public void setRegister(Register register) {
	this.register = register;
}

public List<favorite> getF() {
	return f;
}
public void setF(List<favorite> f) {
	this.f = f;
}

public List<Comment> getC() {
	return c;
}
public void setC(List<Comment> c) {
	this.c = c;
}



public details(Integer id, String label, Integer calories, String ingredient,
		Register register) {
	super();
	this.id = id;
	this.label = label;
	this.calories = calories;
	this.ingredient = ingredient;
	this.register = register;
	this.f = f;
	this.c = c;
}
public details() {
	super();
	// TODO Auto-generated constructor stub
}




}