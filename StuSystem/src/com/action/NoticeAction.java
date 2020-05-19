package com.action;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.NoticeDao;
import com.model.Notice;
import com.model.Partyadministrator;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class NoticeAction extends ActionSupport {
	private int nid;
	private String title;
	private String content;
	private String createTime;
	private String path;
	private int index = 1;
	private NoticeDao noticeDao;
	private Partyadministrator partyadministrator;
	
	public Partyadministrator getPartyadministrator() {
		return partyadministrator;
	}
	public void setPartyadministrator(Partyadministrator partyadministrator) {
		this.partyadministrator = partyadministrator;
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreateTime() {
		return createTime;
	}
	public void setCreateTime(String createTime) {
		this.createTime = createTime;
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
	public NoticeDao getNoticeDao() {
		return noticeDao;
	}
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}

	public String noticeAdd() {	
		Partyadministrator partyadministrator=new Partyadministrator();
		partyadministrator.setPid(1);
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setContent(content);
		notice.setCreateTime(new Date().toLocaleString());
		notice.setPartyadministrator(partyadministrator);
		noticeDao.save(notice);		
		return "succeed";
	}

	public String noticeFenye() {
		List noticeList = noticeDao.findAll();
		int pageSize = 3;
		int fromIndex = (index - 1) * pageSize;
		int toIndex = Math.min(fromIndex + pageSize, noticeList.size());
		List noticeListFenye = noticeList.subList(fromIndex, toIndex);
		Pagination p = new Pagination();
		p.setIndex(index);
		p.setPageSize(pageSize);
		p.setTotle(noticeList.size());
		p.setData(noticeListFenye);
		p.setPath("noticeFenye.action?");
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("pagegonggao", p);
		return ActionSupport.SUCCESS;
	}
	/*public String noticeMana() {
		List noticeList = noticeDao.findAll();
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("noticeList", noticeList);
		return ActionSupport.SUCCESS;
	}*/
	public String noticeQian5() {
		Map request = (Map) ServletActionContext.getContext().get("request");
		List noticeList = noticeDao.findAll();
		if (noticeList.size() > 5) {
			noticeList = noticeList.subList(0, 5);
		}
		request.put("noticeList", noticeList);
		return ActionSupport.SUCCESS;
	}
	public String noticeDetail() {
		Notice notice = noticeDao.findById(nid);
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("notice", notice);
		return ActionSupport.SUCCESS;
	}

	/*public String noticeDetailQian() {
		Notice notice = noticeDao.findById(nid);
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("notice", notice);
		return ActionSupport.SUCCESS;
	}*/
	public String noticeDel() {
		Notice notice = noticeDao.findById(nid);
		noticeDao.delete(notice);		
		return "succeed";
	}
}
