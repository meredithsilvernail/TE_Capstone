package com.techelevator.entity;

import java.util.Objects;

/**
 * The beer class defines the individual products related to each brewery.
 *
 * @author Meredith Silvernail, Anthony Wilson, Greg Noyes & Chris Fitch
 * @version 1.6
 *
 */

public class Beer {
    private Long beerID;
    private String beerName;
    private String beerType;
    private String beerDescription;
    private String beerABV;
    private String image;
    private Long breweryID;
    private int averageRating;


    public Beer() {
    }

    public Beer(Long beerID, String beerName, String beerType, String beerDescription, String beerABV, String image, Long breweryID) {
        this.beerName = beerName;
        this.beerType = beerType;
        this.beerDescription = beerDescription;
        this.beerABV = beerABV;
        this.beerID = beerID;
        this.image = image;
        this.breweryID = breweryID;
    }

    public String getBeerName() {
        return beerName;
    }

    public void setBeerName(String beerName) {
        this.beerName = beerName;
    }

    public String getBeerType() {
        return beerType;
    }

    public void setBeerType(String beerType) {
        this.beerType = beerType;
    }

    public String getBeerDescription() {
        return beerDescription;
    }

    public void setBeerDescription(String beerDescription) {
        this.beerDescription = beerDescription;
    }

    public String getBeerABV() {
        return beerABV;
    }

    public void setBeerABV(String beerABV) {
        this.beerABV = beerABV;
    }

    public Long getBeerID() {
        return beerID;
    }

    public void setBeerID(Long beerID) {
        this.beerID = beerID;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Long getBreweryID() {
        return breweryID;
    }

    public void setBreweryID(Long breweryID) {
        this.breweryID = breweryID;
    }

    public int getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(int averageRating) {
        this.averageRating = averageRating;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Beer)) return false;
        Beer beer = (Beer) o;
        return beerID.equals(beer.beerID) &&
                beerName.equals(beer.beerName) &&
                beerType.equals(beer.beerType) &&
                beerDescription.equals(beer.beerDescription) &&
                beerABV.equals(beer.beerABV) &&
                image.equals(beer.image) &&
                breweryID.equals(beer.breweryID);
    }

    @Override
    public int hashCode() {
        return Objects.hash(beerID, beerName, beerType, beerDescription, beerABV, image, breweryID);
    }
}