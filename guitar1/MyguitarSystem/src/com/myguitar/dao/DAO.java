package com.myguitar.dao;


import java.util.List;
import com.myguitar.guitar.Guitar;


public interface DAO {
	public List<Guitar> guitars();

	public List<Guitar> search(String type);
}
