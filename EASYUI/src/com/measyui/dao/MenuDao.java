package com.measyui.dao;

import java.util.List;
import java.util.Map;

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
	
	@SuppressWarnings("unchecked")
	public List<MenuPo> getMenuWithPage(Map<String, Object> param){
		return baseDaoSupport.getSqlMapClientTemplate().queryForList("menu.getMenuWithPage",param);
	}
}
