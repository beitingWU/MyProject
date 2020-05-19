package com.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.ServletActionContext;
import com.dao.TAdminDAO;
import com.model.TAdmin;
import com.opensymphony.xwork2.ActionSupport;
import com.util.Pagination;

public class adminAction extends ActionSupport {
	private int userId;
	private String userName;
	private String userPw;
	private String message;
	private String path;
	private int index = 1;
	private TAdminDAO adminDAO;

	@SuppressWarnings("unchecked")
	public String adminLogin() {
		String sql = "from TAdmin where userName=? and userPw=?";
		Object[] con = { userName, userPw };
		System.out.println("object :" + con);
		List<TAdmin> adminList = adminDAO.getHibernateTemplate().find(sql, con);
		if (adminList.size() == 0) {
			this.setMessage("用户名或密码错误");
			//this.setPath("qiantai/default.jsp");
			return "fail";
		} else {
			Map session = ServletActionContext.getContext().getSession();
			TAdmin admin = (TAdmin) adminList.get(0);
			session.put("admin", admin);

			//Cart cart = new Cart();
			//session.put("cart", cart);
			this.setMessage("成功登录");
			//this.setPath("qiantai/default.jsp");
			return "succeed";
		}
		//return "succeed";
	}

	
	public String adminAdd() {
		TAdmin admin = new TAdmin();
		admin.setUserName(userName);
		admin.setUserPw(userPw);
		adminDAO.save(admin);
		this.setMessage("操作成功");
		//this.setPath("adminManage.action");
		return "succeed";
	}

	public String adminManage() {
		List adminList = adminDAO.findAll();
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("adminList", adminList);
		return ActionSupport.SUCCESS;
	}

	public String adminManageFenye() {
		List adminList = adminDAO.findAll();
		int pageSize = 3;
		int fromIndex = (index - 1) * pageSize;//当页第一个数据
		int toIndex = Math.min(fromIndex + pageSize, adminList.size());//下一页的第一个数据，并判断是否超出List范围
		List adminListFenye = adminList.subList(fromIndex, toIndex);//返回一个子集合，从fromIndex开始，到toIndex-1结束的数值，不包括toIndex。
		Pagination p = new Pagination();// 创建 分页对象
		p.setIndex(index);// 设置页数
		p.setPageSize(pageSize);
		p.setTotle(adminList.size());// 设置总共的条数
		p.setData(adminListFenye);// 设置数据
		p.setPath("adminManageFenye.action?");// 跳转的路径
		Map request = (Map) ServletActionContext.getContext().get("request");
		request.put("page", p);
		return ActionSupport.SUCCESS;
	}

	public String adminDel() {
		adminDAO.delete(adminDAO.findById(userId));
		this.setMessage("删除成功");
		//this.setPath("adminManage.action");
		return "succeed";
	}

	public TAdminDAO getAdminDAO() {
		return adminDAO;
	}

	public void setAdminDAO(TAdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}

	public String getMessage() {
		return message;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
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

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}

}
