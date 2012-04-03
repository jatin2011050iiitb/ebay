package user.model;

public class Category {
	
	private int categoryId;
	private String categoryDesc;
	
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getCategoryId() {
		return categoryId;
	}
	
	public void setCategoryDesc(String categoryDesc) {
		this.categoryDesc = categoryDesc;
	}
	
	public String getCategoryDesc() {
		return categoryDesc;
	}

}
