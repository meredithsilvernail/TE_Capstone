package com.techelevator.entity;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

/**
 * The user class defines and constrains access to functionality within the program according to provided parameters.
 *
 * @author Meredith Silvernail, Anthony Wilson, Greg Noyes & Chris Fitch
 * @version 1.3
 */

public class User {

    private Long id;

	@NotBlank
    private String role;

	@NotBlank
	@Email
	private String userName;

	@Size(min = 10, message = "Password too short, must be at least 10")
	@Pattern.List({
			@Pattern(regexp = ".*[a-z].*", message = "Must have a lower case"),
			@Pattern(regexp = ".*[A-Z].*", message = "Must have a capital")
	})
	private String password;

	private String confirmPassword;

    @NotBlank
    private String firstName;

    @NotBlank
    private String lastName;

    public User(){

	}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the role
     */
    public String getRole() {

    	return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role){
        this.role = role;
    }


    public String getUserName() {

    	return userName;
    }

    public void setUserName(String userName) {

    	this.userName = userName;
    }

    public String getPassword() {

    	return password;
    }

    public void setPassword(String password) {

    	this.password = password;
    }

    public String getConfirmPassword() {

    	return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {

    	this.confirmPassword = confirmPassword;
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
}
