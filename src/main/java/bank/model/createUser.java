package bank.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class createUser {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String cname;
	private String email;
	private int balance;
	
		
	public createUser() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public createUser(int id, String cname, String email, int balance) {
		super();
		this.id = id;
		this.cname = cname;
		this.email = email;
		this.balance = balance;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "createUser [id=" + id + ", cname=" + cname + ", email=" + email + ", balance=" + balance + "]";
	}
	
	
}
