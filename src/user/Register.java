package user;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@ Entity
public class Register {
	@Id
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String password;
	@OneToMany(mappedBy="register")
	private List<details> detail;
	@OneToMany(mappedBy="reg")
	private List<favorite> f;
	private List<Comment> c;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public List<details> getDetail() {
		return detail;
	}
	public void setDetail(List<details> detail) {
		this.detail = detail;
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
	
	public Register(int id, String fname, String lname, String email,
			String password) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		
	}
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}