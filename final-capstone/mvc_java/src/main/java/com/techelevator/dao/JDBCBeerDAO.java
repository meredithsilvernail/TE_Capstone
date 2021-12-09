package com.techelevator.dao;

import com.techelevator.entity.Beer;
import com.techelevator.entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCBeerDAO implements BeerDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JDBCBeerDAO(DataSource dataSource) {

        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void saveBeer(Beer beer) {
        Long id = getNextBeerId();
        jdbcTemplate.update("INSERT INTO beers(beer_id, beer_name, beer_type, description, abv, beer_image, brewery_id) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)", id, beer.getBeerName(), beer.getBeerType(), beer.getBeerDescription(), beer.getBeerABV(), beer.getImage(), beer.getBreweryID());
        beer.setBeerID(id);
    }

    @Override
    public Beer getBeerByName(String beerName) {
        String sqlSearchForBeer = "SELECT * FROM beers WHERE UPPER(beer_name) = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForBeer, beerName.toUpperCase());
        if (beer.next()) {
            return mapRowToBeer(beer);
        }
        return null;
    }

    @Override
    public Beer getBeerByID(Long beerID) {
        String sqlSearchForBeer = "SELECT * FROM beers WHERE beer_id = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForBeer, beerID);

        if (beer.next()) {
            return mapRowToBeer(beer);
        }
        return null;
    }

    @Override
    public void updateBeer(Beer beer) {
        String sqlUpdateBeer =
                "UPDATE beers " +
                        "SET beer_name = ?, " +
                        "beer_type = ?, " +
                        "description = ?, " +
                        "abv = ?, " +
                        "beer_image = ? " +
                        "WHERE beer_id = ?";
        jdbcTemplate.update(sqlUpdateBeer, beer.getBeerName(), beer.getBeerType(), beer.getBeerDescription(), beer.getBeerABV(), beer.getImage(), beer.getBeerID());

    }



    @Override
    public List<Beer> listBeersByBrewery(long breweryId) {
        List<Beer> allBeers = new ArrayList<>();
        String sqlSearchForBeer = "SELECT * " +
                "FROM beers " +
                "WHERE brewery_id = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForBeer, breweryId);
        while (beer.next()) {
            allBeers.add(mapRowToBeer(beer));
        }
        return allBeers;
    }

    @Override
    public void deleteBeer(long beerID) {
        jdbcTemplate.update("DELETE FROM beers WHERE beer_id = ?", beerID);
    }

    private Long getNextBeerId() {
        String sqlSelectNextId = "SELECT NEXTVAL('beers_beer_id_seq')";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
        Long id = null;
        if (results.next()) {
            id = results.getLong(1);
        } else {
            throw new RuntimeException("Something strange happened, unable to select next forum post id from sequence");
        }
        return id;
    }

    public int getAverageRating(Long beer_id){
        List<Review> reviews = new ArrayList<>();
        int total = 0;
        String sqlGetRating =
                "SELECT * FROM reviews " +
                        "WHERE beer_id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetRating, beer_id);
        while(result.next()){
            Review review = new Review();
            review.setRating(result.getInt("rating"));

            reviews.add(review);
        }
        for(Review review : reviews){
            total += review.getRating();
        }

        try {
            return total / reviews.size();
        }catch (Exception ex){
            return 0;
        }
    }

    private Beer mapRowToBeer(SqlRowSet results) {
        Beer beer = new Beer();
        beer.setBeerID(results.getLong("beer_id"));
        beer.setBeerName(results.getString("beer_name"));
        beer.setBeerType(results.getString("beer_type"));
        beer.setBeerDescription(results.getString("description"));
        beer.setBeerABV(results.getString("abv"));
        beer.setImage(results.getString("beer_image"));
        beer.setBreweryID(results.getLong("brewery_id"));
        beer.setAverageRating(getAverageRating(results.getLong("beer_id")));

        return beer;

    }
}