package com.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.MemberstyleDao;
import com.dao.NoticeDao;
import com.opensymphony.xwork2.ActionSupport;


public class IndexAction extends ActionSupport {
	private NoticeDao noticeDao;
	private MemberstyleDao memberstyleDao;

	public NoticeDao getNoticeDao() {
		return noticeDao;
	}
	public void setNoticeDao(NoticeDao noticeDao) {
		this.noticeDao = noticeDao;
	}
	public MemberstyleDao getMemberstyleDao() {
		return memberstyleDao;
	}
	public void setMemberstyleDao(MemberstyleDao memberstyleDao) {
		this.memberstyleDao = memberstyleDao;
	}
	
	public String index()
	{   Map request = (Map) ServletActionContext.getContext().get("request");	
	
		//显示公告
	    String hql = "from Notice order by nid desc";
		List noticeList = noticeDao.getHibernateTemplate().find(hql);	
		if(noticeList.size()>7)
		{
			noticeList=noticeList.subList(0, 7);
		}
		request.put("noticeList", noticeList);		
	
		//显示党员风采
		hql = "from Memberstyle";
		List memberList = memberstyleDao.getHibernateTemplate().find(hql);	
		if(memberList.size()>2)
		{
			memberList=memberList.subList(0, 2);
		}
		request.put("memberList", memberList);
		return ActionSupport.SUCCESS;
	}
}
