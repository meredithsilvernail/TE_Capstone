package com.techelevator.entity;

import java.sql.Date;
import java.time.LocalDateTime;
import java.util.Objects;

/**
 * The review class allows registered users to comment on selected beverages, and review comments left by others.
 *
 * @author Meredith Silvernail, Anthony Wilson, Greg Noyes & Chris Fitch
 * @version 1.2
 */

public class Review {
    private long reviewID;
    private LocalDateTime reviewDate;
    private String reviewTitle;
    private String reviewNotes;
    private int rating;
    private long beerID;
    private long userID;
    private String userName;

    public Review() {
    }

    public Review(long reviewID, LocalDateTime reviewDate, String reviewTitle, String reviewNotes, int rating, long beerID, long userID, String userName) {
        this.reviewID = reviewID;
        this.reviewDate = reviewDate;
        this.reviewTitle = reviewTitle;
        this.reviewNotes = reviewNotes;
        this.rating = rating;
        this.beerID = beerID;
        this.userID = userID;
        this.userName = userName;
    }

    public long getReviewID() {
        return reviewID;
    }

    public void setReviewID(long reviewID) {
        this.reviewID = reviewID;
    }

    public LocalDateTime getReviewDate() {
        return reviewDate;
    }

    public void setReviewDate(LocalDateTime reviewDate) {
        this.reviewDate = reviewDate;
    }

    public String getReviewTitle() {
        return reviewTitle;
    }

    public void setReviewTitle(String reviewTitle) {
        this.reviewTitle = reviewTitle;
    }

    public String getReviewNotes() {
        return reviewNotes;
    }

    public void setReviewNotes(String reviewNotes) {
        this.reviewNotes = reviewNotes;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public long getBeerID() {
        return beerID;
    }

    public void setBeerID(long beerID) {
        this.beerID = beerID;
    }

    public long getUserID() {
        return userID;
    }

    public void setUserID(long userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Review)) return false;
        Review review = (Review) o;
        return reviewID == review.reviewID &&
                rating == review.rating &&
                beerID == review.beerID &&
                userID == review.userID &&
                reviewDate.equals(review.reviewDate) &&
                reviewTitle.equals(review.reviewTitle) &&
                reviewNotes.equals(review.reviewNotes) &&
                userName.equals(review.userName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(reviewID, reviewDate, reviewTitle, reviewNotes, rating, beerID, userID, userName);
    }
}
