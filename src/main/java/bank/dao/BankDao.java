package bank.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import bank.model.createUser;
import bank.model.thistory;

@Component
public class BankDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void CreateUser(createUser cru)
	{
		this.hibernateTemplate.save(cru);
	}
	
	public List<createUser> getAllUser()
	{
		List<createUser> gAU =this.hibernateTemplate.loadAll(createUser.class);
		return gAU;
	}
	
	public createUser getSingleUser(int id)
	{
		return this.hibernateTemplate.get(createUser.class,id);
	}
	
	@Transactional
	public void InsertHistory(thistory th)
	{
		this.hibernateTemplate.save(th);
	}
	
	public List<thistory> getAllHistory()
	{
		List<thistory> gac =this.hibernateTemplate.loadAll(thistory.class);
		return gac;
	}
	
}
