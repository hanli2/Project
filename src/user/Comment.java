package user;


import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Comment {
	@Id
	private Integer id;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="rid")
	private Register reg;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="did")
	private details de;
	private String content;
	public Comment(Integer id, Register reg, details de, String content) {
		super();
		this.id = id;
		this.reg = reg;
		this.de = de;
		this.content = content;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Register getReg() {
		return reg;
	}
	public void setReg(Register reg) {
		this.reg = reg;
	}
	public details getDe() {
		return de;
	}
	public void setDe(details de) {
		this.de = de;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Comment() {
		super();
	}
	
	
}