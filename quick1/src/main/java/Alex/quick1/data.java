package Alex.quick1;

public class data {
	private int pin;
	private String name;
	private String branch;
	public data(Integer pin, String name, String branch) {
		this.pin = pin;
        this.name = name;
        this.branch = branch;
	}
	@Override
	public String toString() {
		return "Data [pin=" + pin + ", name=" + name + ", branch=" + branch + "]";
	}
	public int getPin() {
		return pin;
	}
	public void setPin(int pin) {
		this.pin = pin;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
}

