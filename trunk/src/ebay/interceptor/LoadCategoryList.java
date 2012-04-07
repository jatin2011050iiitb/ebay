package ebay.interceptor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import user.model.Category;
import user.service.HomeService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class LoadCategoryList implements Interceptor{
	
	private ArrayList<Category> searchCategoryList;
	private String searchCategoryIdSelected;
	
	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
		
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		// TODO Auto-generated method stub
		// populate the categoryList before going to jsp page
		
		Map<String, Object> context = new HashMap<String, Object>();
		HomeService homeService = new HomeService();
		context.put("searchCategoryList", homeService.getCategoryList());
		context.put("searchCategoryIdSelected", searchCategoryIdSelected);
		
		ActionContext.getContext().getValueStack().push(context);
		
		String result = invocation.invoke();
		return result;
	}
	
	
	
	public ArrayList<Category> getSearchCategoryList() {
		return searchCategoryList;
	}

	public void setSearchCategoryList(ArrayList<Category> searchCategoryList) {
		this.searchCategoryList = searchCategoryList;
	}

	public String getSearchCategoryIdSelected() {
		return searchCategoryIdSelected;
	}

	public void setSearchCategoryIdSelected(String searchCategoryIdSelected) {
		this.searchCategoryIdSelected = searchCategoryIdSelected;
	}
	

	

}
