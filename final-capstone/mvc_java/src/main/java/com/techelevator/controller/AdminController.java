package com.techelevator.controller;

import com.techelevator.dao.BreweryDAO;
import com.techelevator.dao.UserDAO;
import com.techelevator.entity.Address;
import com.techelevator.entity.Brewery;
import com.techelevator.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

@Controller
@RequestMapping(path="/admin")
public class AdminController {

    @Autowired
    private BreweryDAO breweryDAO;

    @Autowired
    private UserDAO userDAO;

    @RequestMapping(path="/addBrewery", method= RequestMethod.GET)
    public String viewBreweryForm(){
        return "admin/newBrewery";
    }

    @RequestMapping(path="/addBrewery", method= RequestMethod.POST)
    public String addBrewery(@RequestParam String breweryName, @RequestParam String streetAddress,
                           @RequestParam String city, @RequestParam String state, @RequestParam int zip,
                           @RequestParam String phone, @RequestParam String imageName,
                           @RequestParam String sunHours, @RequestParam String monHours,
                           @RequestParam String tuesHours, @RequestParam String wedHours,
                           @RequestParam String thursHours, @RequestParam String friHours,
                           @RequestParam String satHours, @RequestParam String history){

        Address address = new Address();
        address.setStreet(streetAddress);
        address.setCity(city);
        address.setState(state);
        address.setZip(zip);

        Map<String, String> hours = new HashMap<>();
        hours.put("Sunday", sunHours);
        hours.put("Monday", monHours);
        hours.put("Tuesday", tuesHours);
        hours.put("Wednesday", wedHours);
        hours.put("Thursday", thursHours);
        hours.put("Friday", friHours);
        hours.put("Saturday", satHours);

        Brewery brewery = new Brewery();
        brewery.setPhone(phone);
        brewery.setBreweryName(breweryName);
        brewery.setAddress(address);
        brewery.setHistory(history);
        brewery.setWeeklyHours(hours);
        brewery.setImage(imageName);


        breweryDAO.saveBrewery(brewery);

        return "home/index";
    }

    @RequestMapping(path = "/assignBrewer", method = RequestMethod.GET)
    public String viewAssignBrewerForm(long id, ModelMap modelMap){
        modelMap.put("brewery", breweryDAO.getByID(id));
        return "admin/assignBrewer";
    }

    @RequestMapping(path = "/assignBrewer", method = RequestMethod.POST)
    public String assignBrewer(String userName, ModelMap modelMap){
        Brewery brewery = (Brewery) modelMap.get("brewery");
        User brewer = userDAO.getUserByUserName(userName);
        breweryDAO.assignBrewer(brewery, brewer);
        return "home/index";
    }



}
