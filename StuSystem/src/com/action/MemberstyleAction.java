package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.MemberstyleDao;
import com.model.Memberstyle;
import com.model.Partyadministrator;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

@SuppressWarnings("serial")
public class MemberstyleAction extends ActionSupport {

	private int mid;
	private Partyadministrator partyadministrator;
	private String mname;
	private String fujian;
	private String content;
	private String loadTime;
	private MemberstyleDao memberstyleDao;
	private Memberstyle memberstyle;	
	private int index = 1;	
	public Memberstyle getMemberstyle() {
		return memberstyle;
	}
	public void setMemberstyle(Memberstyle memberstyle) {
		this.memberstyle = memberstyle;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public Partyadministrator getPartyadministrator() {
		return partyadministrator;
	}
	public void setPartyadministrator(Partyadministrator partyadministrator) {
		this.partyadministrator = partyadministrator;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}	
	public String getFujian() {
		return fujian;
	}
	public void setFujian(String fujian) {
		this.fujian = fujian;
	}	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getLoadTime() {
		return loadTime;
	}
	public void setLoadTime(String loadTime) {
		this.loadTime = loadTime;
	}
	public MemberstyleDao getMemberstyleDao() {
		return memberstyleDao;
	}
	public void setMemberstyleDao(MemberstyleDao memberstyleDao) {
		this.memberstyleDao = memberstyleDao;
	}
	public int getIndex() {
		return index;
	}
	public void setIndex(int index) {
		this.index = index;
	}

	public String memberstyleShow() {
		String sql = "from Memberstyle order by mid desc"; //order by mid desc
		List memberList = memberstyleDao.getHibernateTemplate().find(sql);
		int pageSize = 3;
		int fromIndex = (index - 1) * pageSize;
		int toIndex = Math.min(fromIndex + pageSize, memberList.size());
		List memberListFenye = memberList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();
		p.setIndex(index);
		p.setPageSize(pageSize);
		p.setTotle(memberList.size());
		p.setData(memberListFenye);
		p.setPath("memberstyleShow.action?");
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("pagememberstyle", p);		
		return "succeed";
	}	
	public String memberstyleDetail() {
		Map request = (Map) ServletActionContext.getContext().get("request");
		Memberstyle memberstyle = memberstyleDao.findById(mid);		
		request.put("memberstyle", memberstyle);
		return ActionSupport.SUCCESS;
	}
	public String memberstyleAdd() {
		Memberstyle memberstyle = new Memberstyle();
		memberstyle.setMid(mid);
		memberstyle.setPartyadministrator(partyadministrator);
		memberstyle.setMname(mname);
		memberstyle.setPhoto(fujian);
		memberstyle.setContent(content);
		memberstyle.setLoadTime(new Date().toLocaleString());
		memberstyleDao.save(memberstyle);
		return "succeed";
	}
	public String memberstyleMerge() {		
		Memberstyle memberstyleUpdate = memberstyleDao.findById(mid);			
		memberstyleUpdate.setMname(mname);
		memberstyleUpdate.setPhoto(fujian);
		memberstyleUpdate.setContent(content);
		memberstyleDao.attachDirty(memberstyleUpdate);
		return "succeed";
	}
	public String memberstyleDel() {
		Memberstyle memberstyle = memberstyleDao.findById(mid);
		memberstyleDao.delete(memberstyle);		
		return "succeed";
	}
	
}
