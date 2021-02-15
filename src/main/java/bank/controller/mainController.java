package bank.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bank.dao.BankDao;
import bank.model.createUser;
import bank.model.thistory;





@Controller
public class mainController {

	@Autowired
	private BankDao bd;
	
	

	@RequestMapping("/")
	public String home()
	{
		return "index";
	}
	
	@RequestMapping("/createUser")
	public String createUser()
	{
		
		return "createUser";
	}
	
	@RequestMapping(value = "/userSucces",method = RequestMethod.POST)
	public String done(@ModelAttribute createUser cu , Model m)
	{
		m.addAttribute("userName",cu.getCname());
		
		bd.CreateUser(cu);
		return "userSucces";
	}
	
	@RequestMapping("/makeTransaction")
	public String MakeTrancs(Model m)
	{
		List<createUser> allList = bd.getAllUser();
		
		m.addAttribute("allList", allList);
		return "makeTransaction";
	}
	
	@RequestMapping("/update/{lid}")
	public String handleUpdate(@PathVariable("lid") int id , Model m)
	{
		
		createUser cru = this.bd.getSingleUser(id);
		
		m.addAttribute("id",cru.getId());
		m.addAttribute("Name",cru.getCname());
		m.addAttribute("Email",cru.getEmail());
		m.addAttribute("Balance",cru.getBalance());
		m.addAttribute("allList",cru);
		return "tansferMoney";
	}
	
	@RequestMapping(value = "/update/To/{uid}",method = RequestMethod.POST)
	public String SendMoney(@PathVariable("uid") int uid,
							@RequestParam("rName") String rName,
							@RequestParam("balance") int balance,
							Model m)
	{
		thistory th = new thistory(); 
		createUser cu = this.bd.getSingleUser(uid);
		th.setSname(cu.getCname());
		th.setRname(rName);
		th.setAmount(balance);
		
		
		 DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		 LocalDateTime now = LocalDateTime.now();  
		
		 th.setLdt(dtf.format(now));
		
		
		
		bd.InsertHistory(th);
		
		m.addAttribute("thl", rName);
		
		return "last";
	}
	@RequestMapping("/transcationHistory")
	public String TranHistory(Model m)
	{
		
		  List<thistory> thl = bd.getAllHistory();
		  
		  m.addAttribute("allList", thl);
		 
		

		return "transcationHistory";
	}
	
	
	
}
