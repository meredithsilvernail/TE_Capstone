package com.techelevator.dao;

import com.techelevator.entity.Beer;
import com.techelevator.entity.Brewery;
import com.techelevator.entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@Component
public class JDBCReviewDAO implements ReviewDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JDBCReviewDAO(DataSource dataSource) {

        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public void saveReview(Review review) {
        Long id = getNextReviewID();
        jdbcTemplate.update("INSERT INTO reviews(review_id, review_date, review_title, review_post, rating, user_id, beer_id) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)", id, review.getReviewDate(), review.getReviewTitle(), review.getReviewNotes(), review.getRating(), review.getUserID(), review.getBeerID());
        review.setReviewID(id);
    }

    private Long getNextReviewID() {
        String sqlSelectNextId = "SELECT NEXTVAL('reviews_review_id_seq')";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
        Long id = null;
        if (results.next()) {
            id = results.getLong(1);
        } else {
            throw new RuntimeException("Something strange happened, unable to select next forum post id from sequence");
        }
        return id;
    }


    @Override
    public List<Review> getReviewByBrewery(Long brewery_id) {
        List<Review> allReviews = new ArrayList<>();
        String sqlSearchForReview = "SELECT * FROM reviews JOIN beers ON beers.beer_id = reviews.beer_id" +
                " JOIN breweries ON beers.brewery_id = breweries.brewery_id WHERE breweries.brewery_id = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForReview, brewery_id);
        if (beer.next()) {
            allReviews.add(mapRowToReview(beer));
        }
        return allReviews;
    }

    @Override
    public List<Review> getReviewByBeer(Long beer_id) {
        List<Review> allReviews = new ArrayList<>();
        String sqlSearchForReview = "SELECT * FROM reviews JOIN beers ON beers.beer_id = reviews.beer_id" +
                " JOIN breweries ON beers.brewery_id = breweries.brewery_id WHERE beers.beer_id = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForReview, beer_id);
        while (beer.next()) {
            allReviews.add(mapRowToReview(beer));
        }
        return allReviews;
    }

    @Override
    public List<Review> getByUser(Long user_id) {
        List<Review> allReviews = new ArrayList<>();
        String sqlSearchForReview = "SELECT * FROM reviews JOIN beers ON beers.beer_id = reviews.beer_id" +
                " JOIN breweries ON beers.brewery_id = breweries.brewery_id WHERE UPPER(user_id) = ? ";
        SqlRowSet beer = jdbcTemplate.queryForRowSet(sqlSearchForReview, user_id);
        if (beer.next()) {
            allReviews.add(mapRowToReview(beer));
        }
        return allReviews;
    }

    @Override
    public void deleteReview() {

    }

    public int getAverageRating(Long beer_id){
        List<Review> reviews = new ArrayList<>();
        int total = 0;
        int averageRating = 0;
        String sqlGetRating =
                "SELECT * FROM reviews " +
                        "WHERE beer_id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetRating, beer_id);
        if(result.next()){
            reviews.add(mapRowToReview(result));
        }
        for(Review review : reviews){
            total += review.getRating();
        }

        return total / reviews.size();
    }


    @Override
    public Review mapRowToReview(SqlRowSet result){
        Review newReview = new Review();

        newReview.setUserID(result.getLong("user_id"));
        newReview.setReviewDate(result.getTimestamp("review_date").toLocalDateTime());
        newReview.setReviewID(result.getLong("review_id"));
        newReview.setReviewNotes(result.getString("review_post"));
        newReview.setReviewTitle(result.getString("review_title"));
        newReview.setRating(result.getInt("rating"));
        newReview.setBeerID(result.getLong("beer_id"));
        newReview.setUserName(getUserNameById(result.getLong("user_id")));

        return newReview;
    }

    private String getUserNameById(Long user_id){
        String sqlGetUserName =
                "SELECT user_name FROM app_user " +
                        "WHERE id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetUserName, user_id);
        if(result.next()) {
            return result.getString("user_name");
        }
        return null;
    }
}
