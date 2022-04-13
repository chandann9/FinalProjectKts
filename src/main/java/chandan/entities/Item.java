package chandan.entities;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.springframework.format.annotation.DateTimeFormat;


@Entity
public class Item {
	
	public Item() {
		// TODO Auto-generated constructor stub
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	

	private String name;
	
	

	private Integer quantity;

	
	//formatting the date
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", name=" + name + ", quantity=" + quantity + ", date=" + date + "]";
	}

	
	
	

}
