package com.techelevator.entity;

import com.techelevator.dao.JDBCBreweryDAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/**
 * Brewery class is the foundational object for this project.
 * It represents some of the individual breweries around Columbus.
 *
 * @author Meredith Silvernail, Anthony Wilson, Greg Noyes & Chris Fitch
 * @version 2.13
 */

public class Brewery {

    private Long id;
    private String breweryName;
    private Address address;
    private String phone;
    private String history;
    private String image;
    private boolean active;
    private Map<String, String> weeklyHours;
    private List<Beer> listOfBeers;

    /**
     * Brewery constructor
     *
     * Default constructor allows full compatibility with javabeans implementation
     */
    public Brewery() {
    }

    /**
     * This returns the serial id # assigned by the database
     * @return although only integers will be returned, the long value corresponds to the serial value in the DB
     */
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getBreweryName() {
        return breweryName;
    }

    public void setBreweryName(String breweryName) {
        this.breweryName = breweryName;
    }

    /**
     * Brewery address as constructed in the Address entity class
     * @return the string value of the address object
     */
    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getHistory() {
        return history;
    }

    /**
     * holds the brewer provided notes about an individual brewery
     * @param history is a free form text box
     */
    public void setHistory(String history) {
        this.history = history;
    }

    public String getImage() {
        return image;
    }

    /**
     * brewer provided image (demonstration uses 1000x1000 px images or larger)
     * @param image should be a jpeg compatible file
     */
    public void setImage(String image) {
        this.image = image;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    /**
     * brewery level list of beers
     * @return brewer set list of active beers for this brewery
     */
    public List<Beer> getListOfBeers() {


        return listOfBeers;
    }

    public void setListOfBeers(List<Beer> listOfBeers) {
        this.listOfBeers = listOfBeers;
    }

    public Map<String, String> getWeeklyHours() {
        return weeklyHours;
    }

    /**
     * brewer Create/Update/Delete access to business hours
     * @param weeklyHours maps the daily hours of operation
     */
    public void setWeeklyHours(Map<String, String> weeklyHours) {
        this.weeklyHours = weeklyHours;
    }

    @Override
    public String toString() {
        return "Brewery{" +
                "id=" + id +
                ", breweryName='" + breweryName + '\'' +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Brewery)) return false;
        Brewery brewery = (Brewery) o;
        return id.equals(brewery.id) &&
                breweryName.equals(brewery.breweryName) &&
                address.equals(brewery.address) &&
                phone.equals(brewery.phone) &&
                history.equals(brewery.history) &&
                image.equals(brewery.image) &&
                weeklyHours.equals(brewery.weeklyHours) &&
                listOfBeers.equals(brewery.listOfBeers);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, breweryName, address, phone, history, image, weeklyHours, listOfBeers);
    }
}
