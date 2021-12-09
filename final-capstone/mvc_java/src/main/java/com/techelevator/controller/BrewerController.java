package com.techelevator.controller;

import com.techelevator.dao.BeerDAO;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.entity.Address;
import com.techelevator.entity.Beer;
import com.techelevator.entity.Brewery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(path="/brewer")
public class BrewerController {

    @Autowired
    private BreweryDAO breweryDAO;

    @Autowired
    private BeerDAO beerDAO;

    @RequestMapping(path="updateBeer", method= RequestMethod.GET)
    public String viewBeerUpdate(@RequestParam long id, HttpSession session){
        session.setAttribute("beerToUpdate", beerDAO.getBeerByID(id));
        return "brewer/updateBeer";
    }

    @RequestMapping(path="updateBeer", method= RequestMethod.POST)
    public String updateBeer(@RequestParam String beerName, @RequestParam String beerType,
                             @RequestParam String beerDescription, @RequestParam String beerABV,
                             HttpSession session){
        Beer beer = (Beer) session.getAttribute("beerToUpdate");

        beer.setBeerName(beerName);
        beer.setBeerType(beerType);
        beer.setBeerDescription(beerDescription);
        beer.setBeerABV(beerABV);

        try{
            beerDAO.updateBeer(beer);
        }catch(Exception ex){
            return "error";
        }

        return "redirect:/breweryDetail?id=" + beer.getBreweryID();
    }


    @RequestMapping(path="/updateBrewery", method= RequestMethod.GET)
    public String viewUpdateForm(@RequestParam long id, HttpSession session, ModelMap modelMap){

        Brewery brewery = breweryDAO.getByID(id);
        session.setAttribute("breweryToUpdate", brewery);

        return "brewer/updateBrewery";
    }

    @RequestMapping(path="/updateBrewery", method= RequestMethod.POST)
    public String updateBrewery(@RequestParam String breweryName, @RequestParam String streetAddress,
                              @RequestParam String city, @RequestParam String state, @RequestParam int zip,
                              @RequestParam String phone, @RequestParam String imageName,
                              @RequestParam String sunHours, @RequestParam String monHours,
                              @RequestParam String tuesHours, @RequestParam String wedHours,
                              @RequestParam String thursHours, @RequestParam String friHours,
                              @RequestParam String satHours, @RequestParam String history,
                                @RequestParam boolean active, ModelMap modelMap, HttpSession session){

        Brewery newBrewery = (Brewery) session.getAttribute("breweryToUpdate");

            newBrewery.getAddress().setStreet(streetAddress);
            newBrewery.getAddress().setCity(city);
            newBrewery.getAddress().setState(state);
            newBrewery.getAddress().setZip(zip);

            newBrewery.getWeeklyHours().put("Sunday", sunHours);
            newBrewery.getWeeklyHours().put("Monday", monHours);
            newBrewery.getWeeklyHours().put("Tuesday", tuesHours);
            newBrewery.getWeeklyHours().put("Wednesday", wedHours);
            newBrewery.getWeeklyHours().put("Thursday", thursHours);

            newBrewery.getWeeklyHours().put("Friday", friHours);
            newBrewery.getWeeklyHours().put("Saturday", satHours);

            newBrewery.setPhone(phone);
            newBrewery.setBreweryName(breweryName);
            newBrewery.setHistory(history);

            newBrewery.setImage(imageName);
            newBrewery.setActive(active);

        try {
            breweryDAO.updateBrewery(newBrewery);
        }catch (Exception ex){
            return "error";
        }
        return "redirect:/breweryDetail?id=" + newBrewery.getId();

    }

    @RequestMapping(path="/addBeer", method= RequestMethod.GET)
    public String viewAddBeerForm(@RequestParam long id, HttpSession session){

        session.setAttribute("brewery", breweryDAO.getByID(id));

        return "brewer/addBeer";
    }

    @RequestMapping(path="/addBeer", method= RequestMethod.POST)
    public String addBeer(@RequestParam String beerName, @RequestParam String beerType,
                          @RequestParam String beerDescription, @RequestParam String beerABV,
                          @RequestParam String imageName, HttpSession session){

        Brewery brewery = (Brewery) session.getAttribute("brewery");

        Beer newBeer = new Beer();
            newBeer.setBeerName(beerName);
            newBeer.setBeerType(beerType);
            newBeer.setBeerDescription(beerDescription);
            newBeer.setBeerABV(beerABV);
            newBeer.setImage(imageName);
            newBeer.setBreweryID(brewery.getId());

            try {
                beerDAO.saveBeer(newBeer);
            }catch (Exception ex){
                return "error";
            }

        return "redirect:/breweryDetail?id=" + brewery.getId();
    }

    @RequestMapping(path="/deleteBeer", method= RequestMethod.GET)
    public String deleteBeerForm(long id, HttpSession session){
        List<Beer> beerList = beerDAO.listBeersByBrewery(id);
        session.setAttribute("beers", beerList);
        return "brewer/deleteBeer";
    }

    @RequestMapping(path="/deleteBeer", method= RequestMethod.POST)
    public String deleteBeer(@RequestParam String beerName){
        Beer deletedBeer = beerDAO.getBeerByName(beerName);
        beerDAO.deleteBeer(deletedBeer.getBeerID());
        return "redirect:/breweryDetail?id=" + deletedBeer.getBreweryID();
    }

}

