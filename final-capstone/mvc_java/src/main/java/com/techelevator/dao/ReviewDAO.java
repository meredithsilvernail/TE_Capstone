package com.techelevator.dao;

import com.techelevator.entity.Brewery;
import com.techelevator.entity.Review;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.List;

public interface ReviewDAO {

    public void saveReview(Review review);

    public List<Review> getReviewByBrewery(Long brewery_id);

    public List<Review> getReviewByBeer(Long beer_id);

    public List<Review> getByUser(Long user_id);

    public void deleteReview();

    public Review mapRowToReview(SqlRowSet reviews);
}