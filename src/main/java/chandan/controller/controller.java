package chandan.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import chandan.dao.ItemRepo;
import chandan.entities.Item;
import chandan.service.service;


@Controller
public class controller {


	
	
	@Autowired
	service ser;
	

	/*  program start with http://localhost:8080/ in which home.jsp file is returned. in home.jsp there is two
	 *  way to navigate from one page to another 1. navbar 2. there is a dropdown of 1,2,3 where 1 to list down
	 *  all item 2 to create new item and 3 to delete a specfic item. i print message for the client when an item
	 *  added sucessfully, or deleted sucessfully */
	
	
	@RequestMapping("/")
	public String home(@RequestParam(value = "msg",required = false)String msg,Model model)
	{
		
		model.addAttribute("message", msg);
		return "home";
		
	}
	
	
	// delete specfic item in delete page where delete link is present with all of the item
	@RequestMapping("/deleteItem/{id}")
	public String deleteById(@PathVariable("id") int id, RedirectAttributes redirectAttributes)
	{
		
		ser.deletebyItemid(id);
		redirectAttributes.addAttribute("msg", "deleted Sucessfully");
		return "redirect:/";
	}
	
	//save item and  set sucessful message and redirect to home pge
	@RequestMapping("/saveitem")
	public String home( @ModelAttribute("items") Item item, RedirectAttributes redirectAttributes)
	{

		redirectAttributes.addAttribute("msg", "saved Sucessfully");	
		
		ser.saveItem(item);
		return "redirect:/";
		
	}
	
	
	

	
	//fetch all item from db and list down to list.jsp where foreach loop is running to display all element in frontened
	@RequestMapping("list")
	public String list(Model model)
	{

	
	model.addAttribute("item", ser.listAllItems());
		
		return "list";
		
	}

	
	//opening delete page and list down all element to this page along with delete button
	@RequestMapping("delete")
	public String delete(Model model)
	{
	
		
		model.addAttribute("item", ser.listAllItems());
		
		return "delete";
		
	}
	
	
	//return additempage and set value in "items" which is further saved when it hit submit button and hit /saveitem as action
	@RequestMapping("/add")
	public String add(Model model)
	{
		model.addAttribute("items", new Item());
		
		return "additem";
	}
	
	

	//when 1,2,3 hit from dropdown it will hit specific url for 1,2,3
	@RequestMapping("/home")
	public String delete(@RequestParam("choice") int choice)
	{
		
		if(choice==1)
		{
			return "redirect:/list";	
		}
		else   if(choice==2)
		{
	    	  return "redirect:/add";	
		}
		else
		{
			
			return "redirect:/delete";	
		}
		
		
	}
	
}
