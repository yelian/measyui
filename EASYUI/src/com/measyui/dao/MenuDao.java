package com.measyui.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.measyui.entity.MenuPo;

@Repository
public class MenuDao{
	
	@Autowired
	private BaseDaoSupport baseDaoSupport;
	
	@SuppressWarnings("unchecked")
	public List<MenuPo> getMenu(){
		return baseDaoSupport.getSqlMapClientTemplate().queryForList("menu.getMenu");
		//this.getSqlMapClientTemplate().queryForList();
	}
}
