package chandan.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import chandan.entities.Item;

public interface ItemRepo  extends JpaRepository<Item, Integer>{

}
