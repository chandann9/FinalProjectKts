package chandan.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import chandan.dao.ItemRepo;
import chandan.entities.Item;

@Service
public class service {

	@Autowired
	ItemRepo itemRepo;
	
public	void saveItem(Item item)
	{
itemRepo.save(item);		
	}

public void deletebyItemid(int id) {
	
	itemRepo.deleteById(id);
}
public List<Item> listAllItems() {
	
	return itemRepo.findAll();
	
}

	
}
