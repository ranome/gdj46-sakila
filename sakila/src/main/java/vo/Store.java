package vo;

public class Store { // 도메인 일치
	private int storeId;
	private int managerStaffId;
	private int addressId;
	private String latsUpdate;
	public int getStoreId() {
		return storeId;
	}
	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}
	public int getManagerStaffId() {
		return managerStaffId;
	}
	public void setManagerStaffId(int managerStaffId) {
		this.managerStaffId = managerStaffId;
	}
	public int getAddressId() {
		return addressId;
	}
	public void setAddressId(int addressId) {
		this.addressId = addressId;
	}
	public String getLatsUpdate() {
		return latsUpdate;
	}
	public void setLatsUpdate(String latsUpdate) {
		this.latsUpdate = latsUpdate;
	}
	
}
