package com.techelevator.dao;

import com.techelevator.entity.Brewery;
import com.techelevator.entity.User;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.List;

public interface BreweryDAO {

    public void saveBrewery(Brewery brewery);

    public Brewery getBreweryByName(String breweryName);

    public Brewery getByID(Long id);

    public List<Brewery> listAllBreweries();

    public void updateBrewery(Brewery brewery);

    public void deleteBrewery(Brewery requestedBrewery);

    public Brewery mapRowToBrewery(SqlRowSet breweries);

    public void assignBrewer(Brewery brewery, User brewer);

    public void updateAddress(Brewery brewery);
}
