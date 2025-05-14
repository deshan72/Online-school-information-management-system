package schoolPackage;

public class SchoolModel {
	
	private int ID;
	private String Name;
	private String  Bank_Name;
	private String Account_Number;
	private String Amount;
	private String Date;
	
	public SchoolModel(int ID, String Name, String Bank_Name, String Account_Number, String Amount, String Date) {
		super();
		this.ID = ID;
		this.Name = Name;
		this.Bank_Name = Bank_Name;
		this.Account_Number = Account_Number;
		this.Amount =Amount;
		this.Date = Date;
	}

	public int getID() {
		return ID;
	}

	public void setID(int ID) {
		this.ID = ID;
	}

	public void setName(String Name) {
		this.Name = Name;
	}
	
	 public String getName() {
	        return Name;
	    }

	public String getBank_Name() {
		return Bank_Name;
	}

	public void setBank_Name(String Bank_Name) {
		this.Bank_Name = Bank_Name;
	}

	public String getAccount_Number() {
		return Account_Number;
	}

	public void setAccount_Number(String Account_Number) {
		this.Account_Number = Account_Number;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String Amount) {
		this.Amount = Amount;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String Date) {
		this.Date = Date;
	}

	
	
}
