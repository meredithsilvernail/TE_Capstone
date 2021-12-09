package com.techelevator.entity;

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

public class BreweryDTO {

    private Long id;
    private String breweryName;

    /**
     * Brewery constructor
     *
     * Default constructor allows full compatibility with javabeans implementation
     */
    public BreweryDTO() {
    }

    public BreweryDTO(Long id, String breweryName) {
        this.id = id;
        this.breweryName = breweryName;
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

}
