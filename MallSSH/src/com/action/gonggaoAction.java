package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.TGonggaoDAO;
import com.model.TGonggao;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class gonggaoAction extends ActionSupport {
	private int gonggaoId;
	private String gonggaoTitle;
	private String gonggaoContent;
	private String gonggaoData;
	private String gonggaoFabuzhe;
	private String message;
	private String path;
	private int index = 1;
	private TGonggaoDAO gonggaoDAO;

	public String gonggaoAdd() {
		TGonggao gonggao = new TGonggao();
		gonggao.setGonggaoTitle(gonggaoTitle);
		gonggao.setGonggaoContent(gonggaoContent);
		gonggao.setGonggaoData(new Date().toLocaleString());
		gonggaoDAO.save(gonggao);
		this.setMessage("公告添加完毕");
		//this.setPath("gonggaoMana.action");
		return "succeed";
	}

	public String gonggaoMana() {
		List gonggaoList = gonggaoDAO.findAll();
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}

	public String gonggaoManaFenye() {
		List gonggaoList = gonggaoDAO.findAll();
		int pageSize = 3;
		int fromIndex = (index - 1) * pageSize;
		int toIndex = Math.min(fromIndex + pageSize, gonggaoList.size());
		List gonggaoListFenye = gonggaoList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();// 创建 分页对象
		p.setIndex(index);// 设置页数
		p.setPageSize(pageSize);
		p.setTotle(gonggaoList.size());// 设置总共的条数
		p.setData(gonggaoListFenye);// 设置数据
		p.setPath("gonggaoManaFenye.action?");// 跳转的路径
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("pagegonggao", p);
		return ActionSupport.SUCCESS;
	}

	public String gonggaoDel() {
		TGonggao gonggao = gonggaoDAO.findById(gonggaoId);
		gonggaoDAO.delete(gonggao);
		this.setMessage("公告删除完毕");
		//this.setPath("gonggaoMana.action");
		return "succeed";
	}

	public String gonggaoDetail() {
		TGonggao gonggao = gonggaoDAO.findById(gonggaoId);
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}

	public String gonggaoDetailQian() {
		TGonggao gonggao = gonggaoDAO.findById(gonggaoId);
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("gonggao", gonggao);
		return ActionSupport.SUCCESS;
	}

	public String gonggaoQian5() {
		Map request = (Map) ServletActionContext.getContext().get("request");
		List gonggaoList = gonggaoDAO.findAll();
		if (gonggaoList.size() > 5) {
			gonggaoList = gonggaoList.subList(0, 5);
		}
		request.put("gonggaoList", gonggaoList);
		return ActionSupport.SUCCESS;
	}
	

	public String getGonggaoContent() {
		return gonggaoContent;
	}

	public void setGonggaoContent(String gonggaoContent) {
		this.gonggaoContent = gonggaoContent;
	}

	public TGonggaoDAO getGonggaoDAO() {
		return gonggaoDAO;
	}

	public void setGonggaoDAO(TGonggaoDAO gonggaoDAO) {
		this.gonggaoDAO = gonggaoDAO;
	}

	public String getGonggaoData() {
		return gonggaoData;
	}

	public void setGonggaoData(String gonggaoData) {
		this.gonggaoData = gonggaoData;
	}

	public String getGonggaoFabuzhe() {
		return gonggaoFabuzhe;
	}

	public void setGonggaoFabuzhe(String gonggaoFabuzhe) {
		this.gonggaoFabuzhe = gonggaoFabuzhe;
	}

	public int getGonggaoId() {
		return gonggaoId;
	}

	public void setGonggaoId(int gonggaoId) {
		this.gonggaoId = gonggaoId;
	}

	public String getGonggaoTitle() {
		return gonggaoTitle;
	}

	public void setGonggaoTitle(String gonggaoTitle) {
		this.gonggaoTitle = gonggaoTitle;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
	
	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

}
