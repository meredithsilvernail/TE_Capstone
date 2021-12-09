package com.techelevator.entity;

import java.util.Objects;

/**
 * Address class was extracted from the Brewery class to allow for future extensibilty
 * and search functionality that is not a part of this project scope.
 *
 * @author Meredith Silvernail, Anthony Wilson, Greg Noyes & Chris Fitch
 * @version 1.3
 */

public class Address {
    private long id;
    private String street;
    private String city;
    private String state;
    private int zip;

    public Address() {
    }

    public Address(long id, String street, String city, String state, int zip) {
        this.id = id;
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip = zip;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Address)) return false;
        Address address = (Address) o;
        return id == address.id &&
                zip == address.zip &&
                street.equals(address.street) &&
                city.equals(address.city) &&
                state.equals(address.state);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, street, city, state, zip);
    }
}
