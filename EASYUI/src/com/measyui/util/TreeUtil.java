package com.measyui.util;

import java.util.ArrayList;
import java.util.List;

import com.measyui.entity.MenuPo;
import com.measyui.entity.TreeNode;

public class TreeUtil {
	public static TreeNode buildTree(List<MenuPo> menus){
		if(treeNode == null){
			treeNode = new TreeNode();
			for(MenuPo menu: menus){
				if(Constant.ROOT_MENU_CODE.equals(menu.getCode())){
					MappingTreeNode(menu, treeNode);
					treeNode.setChildren(buildTree(menus, Constant.ROOT_MENU_CODE));
					break;
				}
			}
		}
		return treeNode;
	}
	
	private static List<TreeNode> buildTree(List<MenuPo> menus, String parentCode){
		List<TreeNode> nodes = null;
		for(MenuPo menu: menus){
			if(parentCode.equals(menu.getParentCode())){
				TreeNode node = new TreeNode();
				MappingTreeNode(menu, node);
				if(nodes == null){
					nodes = new ArrayList<TreeNode>();
				}
				nodes.add(node);
				node.setChildren(buildTree(menus, menu.getCode()));
			}
		}
		return nodes;
	}
	
	private static void MappingTreeNode(MenuPo menu, TreeNode treeNode){
		treeNode.setText(menu.getName());
		treeNode.setId(menu.getId());
	}
	
	private static TreeNode treeNode = null;
}
