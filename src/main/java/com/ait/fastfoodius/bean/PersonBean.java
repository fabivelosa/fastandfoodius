package com.ait.fastfoodius.bean;

import java.util.Date;

public class PersonBean {

	private int id;
	private String firstName;
	private String lastName;
	private Date dateofbirth;
	private String gender;
	private String title;
	private String phone;
	private String address;
	private String city;
	private String postalCode;
	private String email;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(Date dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "Customer details: [Id= " + id + " - First Name= " + firstName + " - Last Name= " + lastName
				+ " - Date of birth= " + dateofbirth + " - Gender= " + gender + " - Title= " + title + " - Phone "
				+ phone + " - Address= " + address + " - City= " + city + " - postalCode= " + postalCode + " - Email= "
				+ email;
	}
}
