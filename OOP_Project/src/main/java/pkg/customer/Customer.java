package pkg.customer;

public class Customer {
		private int id;
		private String fname;
		private String lname;
		private String address;
		private String phone;
		private String email;
		private String paymentMethod;
		private int clothes;
		private String userName;
		private String password;
		
		public Customer(int id, String fname, String lname, String address, String phone, String email,
				String paymentMethod, int clothes, String userName, String password) {
			super();
			this.id = id;
			this.fname = fname;
			this.lname = lname;
			this.address = address;
			this.phone = phone;
			this.email = email;
			this.paymentMethod = paymentMethod;
			this.clothes = clothes;
			this.userName = userName;
			this.password = password;
		}

		

		public Customer(int id2, String fname2, String lname2, String address2, String phone2, String email2,
				String paymentMethod2, int clothes2) {
			// TODO Auto-generated constructor stub
		}



		public int getId() {
			return id;
		}

		public String getFname() {
			return fname;
		}

		public String getLname() {
			return lname;
		}

		public String getAddress() {
			return address;
		}

		public String getPhone() {
			return phone;
		}

		public String getEmail() {
			return email;
		}

		public String getPaymentMethod() {
			return paymentMethod;
		}

		public int getClothes() {
			return clothes;
		}

		public String getUserName() {
			return userName;
		}

		public String getPassword() {
			return password;
		}

		
		
	
}
