package webPage02;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.LinkedHashMap;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

// This class for create new members .. 
// For this class i would take two argument 
// First .. firstName .. 
// And second .. lastName ,, and create getter and setter method 
public class Members {

	
	private String firstName ;
	
	@NotNull(message="is required")
	@Size(min=1,message="is required ")
	private String lastName ;
	private String email ;
	//Validation for password . 
	@NotNull(message=" is required")
	@Min(value=0,message="must be greater than or qual to zero ")
	@Max(value=10,message="must be greater than or qual to zero ")
	private String password ;
	
	private String country ;
	private String favoriteLanguage; 
	private String operatingSystem ;
	private LinkedHashMap<String ,String> countryOptions ;
	private LinkedHashMap<String, String> favoriteLanguageOptions ;
	
	
	
	// blank constructor 
	
	public Members(){
		countryOptions = new LinkedHashMap<>();
		favoriteLanguageOptions = new LinkedHashMap<>();
		
		
		
		countryOptions.put("KSA", "Saudi Arabia");
		countryOptions.put("UEA", "United Em");
		countryOptions.put("IN", "India");
		countryOptions.put("US", "United state");
		countryOptions.put("UK", "United Briton");
		countryOptions.put("FR", "France");
		countryOptions.put("DE", "Germany");
		
		//Language .. 
		
		favoriteLanguageOptions.put("Java","java");
		favoriteLanguageOptions.put("php","php");
		favoriteLanguageOptions.put("python","python");
		favoriteLanguageOptions.put("js","js");
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	/*
	 * create new method for digest message .. 
	 * this string method call getHash and take one variable of string type 
	 * 
	 * 
	 * Done
	 * */
	public String getHash(String input){
		try{
			MessageDigest messageDigest = MessageDigest.getInstance("MD5");
			byte[] message = messageDigest.digest(input.getBytes());
			BigInteger number = new BigInteger(1,message);
			String hashText = number.toString(16);
			while(hashText.length() <32){
				hashText = "0" + hashText;
			}
			
			return hashText;
		}catch(NoSuchAlgorithmException e){
			throw new RuntimeException(e);
		}
		 
	}
	
	public String getPassword() {
		
		
		return getHash(password);
	}
		

	public void setPassword(String password) {
		this.password = password;
	}


	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public LinkedHashMap<String, String> getCountryOptions() {
		return countryOptions;
	}

	

	public void setFavoriteLanguage(String favoriteLanguage) {
		this.favoriteLanguage = favoriteLanguage;
	}

	public String getFavoriteLanguage() {
		return favoriteLanguage;
	}

	public String getoperatingSystem() {
		return operatingSystem;
	}

	public void setoperatingSystem(String oS) {
		this.operatingSystem = oS;
	}

	
	

	
	
	
	
	
	
	
	
	
}
