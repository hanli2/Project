package user;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class favorite {
	@Id
	private Integer fid;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="rid")
	private Register reg;
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="did")
	private details de;
	
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
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

	public favorite(Integer fid, Register reg, details de) {
		super();
		this.fid = fid;
		this.reg = reg;
		this.de = de;
	}
	public favorite() {
		super();
		// TODO Auto-generated constructor stub
	}
}
