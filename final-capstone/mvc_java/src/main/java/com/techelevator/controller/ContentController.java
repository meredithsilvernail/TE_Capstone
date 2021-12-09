package com.techelevator.controller;

import com.techelevator.dao.BeerDAO;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.dao.ReviewDAO;
import com.techelevator.entity.Beer;
import com.techelevator.entity.Brewery;
import com.techelevator.entity.Review;
import com.techelevator.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ContentController {

	@Autowired
	private BreweryDAO breweryDAO;

	@Autowired
	private BeerDAO beerDAO;

	@Autowired
	private ReviewDAO reviewDAO;


	@RequestMapping("/breweries")
	public String displayBreweries(ModelMap modelMap) {
		List<Brewery> allBreweries = breweryDAO.listAllBreweries();
		modelMap.put("breweries", allBreweries);

		return "home/breweries";
	}

	@RequestMapping(path = "/breweryDetail", method = RequestMethod.GET)
	public String displayBreweryDetail(@RequestParam Long id, ModelMap modelMap){
		Brewery brewery = breweryDAO.getByID(id);
		modelMap.put("selectedBrewery", brewery);
		modelMap.put("hours", brewery.getWeeklyHours());
		modelMap.put("address", brewery.getAddress());
		modelMap.put("availableBeers", beerDAO.listBeersByBrewery(brewery.getId()));
		modelMap.put("reviews", reviewDAO.getReviewByBrewery(id));

		return "home/breweryDetail";
	}

	@RequestMapping(path = "/user/addReview", method = RequestMethod.GET)
	public String viewAddReviewForm(@RequestParam Long id, HttpSession session){
		session.setAttribute("selectedBeer", beerDAO.getBeerByID(id));
		return "home/addReview";
	}

	@RequestMapping(path = "/user/addReview", method = RequestMethod.POST)
	public String addReview(@RequestParam String title, @RequestParam String reviewText,
							@RequestParam int rating, HttpSession session){

		Beer beer = (Beer) session.getAttribute("selectedBeer");
		User user = (User) session.getAttribute("LOGGED_USER");


		Review newReview = new Review();

		newReview.setUserID(user.getId());
		newReview.setBeerID(beer.getBeerID());
		newReview.setReviewDate(LocalDateTime.now());
		newReview.setReviewTitle(title);
		newReview.setReviewNotes(reviewText);
		newReview.setRating(rating);

		try{
			reviewDAO.saveReview(newReview);
		}catch(Exception ex){
			return "error";
		}

		return "redirect:/breweryDetail?id=" + beer.getBreweryID();

	}

	@RequestMapping(path = "/user/viewReviews", method = RequestMethod.GET)
	public String viewAllReviews(@RequestParam Long id, HttpSession session){

		session.setAttribute("beerReviews", reviewDAO.getReviewByBeer(id));
		return "home/viewReviews";
	}





	@RequestMapping(path="/404", method=RequestMethod.GET)
	public String displayBadPage() {

		return "404";
	}



	
}
