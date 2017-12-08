package online.qsx.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import online.qsx.model.UserModel;
import online.qsx.service.impl.UserServerImpl;
import online.qsx.tag.PagingTag;

@Component("userAction")
public class UserAction {

	@Autowired
	private UserServerImpl userServerImpl;

	private List<UserModel> list;
	private UserModel userModel;

	@Autowired
	private PagingTag pagingTag;

	private int pageNo;
	private int Max;
	private int page;

	// 查询共有多少条数据
	public String getALL() {
		list = userServerImpl.getUsers();
		// 多少条数据
		Max = list.size();
		// 有几页数据
		page = Max / pagingTag.getPageSize();

		return "list";
	}

	// 上页
	public String pageUP() {
		int pageno = pagingTag.getPageNo() - 1;
		pagingTag.setPageNo(pageno);
		System.out.println(pageno);
		list = userServerImpl.getUsersUP(pageno);
		return "list";
	}

	// 下页
	public String pageDown() {
		int pageno = pagingTag.getPageNo() + 1;
		pagingTag.setPageNo(pageno);
		System.out.println(pageno);
		list = userServerImpl.getUsersDown(pageno);
		return "list";
	}

	// 查询所有
	public String findallusers() {
		list = userServerImpl.getUsers();
		return "list";
	}

	// 删除
	public String delete() {
		userServerImpl.deleteUserModel(userModel);
		list = userServerImpl.getUsers();
		return "list";
	}

	// 添加
	public String add() {
		userServerImpl.addUserModel(userModel);
		return "list";
	}

	// 去添加页面
	public String to_add() {
		return "toadd";
	}

	// 图表
	public String userAnalyze() {
		return "userAnalyze";
	}

	// 按条件查询
	public String info() {
		list = userServerImpl.getName(userModel);
		int x = list.size();
		if (x == 0) {
			return "queryfail";
		} else {
			return "query";
		}
	}

	// 去修改
	public String to_edit() {
		userModel = userServerImpl.getUser(userModel);
		return "update";
	}

	// 修改
	public String do_edit() {
		userServerImpl.edit(userModel);
		list = userServerImpl.getUsers();
		return "list";
	}

	public PagingTag getPagingTag() {
		return pagingTag;
	}

	public void setPagingTag(PagingTag pagingTag) {
		this.pagingTag = pagingTag;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getMax() {
		return Max;
	}

	public void setMax(int max) {
		Max = max;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public List<UserModel> getList() {
		return list;
	}

	public UserModel getUserModel() {
		return userModel;
	}

	public void setUserModel(UserModel userModel) {
		this.userModel = userModel;
	}

}
