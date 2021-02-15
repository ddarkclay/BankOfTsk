package bank.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class thistory {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String sname;
	private String rname;
	private int amount;
	private String ldt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getLdt() {
		return ldt;
	}
	public void setLdt(String ldt) {
		this.ldt = ldt;
	}
	@Override
	public String toString() {
		return "thistory [id=" + id + ", sname=" + sname + ", rname=" + rname + ", amount=" + amount + ", ldt=" + ldt
				+ "]";
	}
	
	
	
	
}