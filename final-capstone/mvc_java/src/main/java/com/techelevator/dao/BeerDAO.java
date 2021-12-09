package com.techelevator.dao;

import com.techelevator.entity.Beer;

import java.util.List;

public interface BeerDAO {

        public void saveBeer(Beer beer);

        public Beer getBeerByName(String beerName);

        public Beer getBeerByID(Long beerID);

        public void updateBeer(Beer beer);

        public List<Beer> listBeersByBrewery(long breweryId);

        public void deleteBeer(long beerID);

}
