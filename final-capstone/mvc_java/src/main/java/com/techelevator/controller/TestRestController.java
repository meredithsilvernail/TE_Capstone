package com.techelevator.controller;

import com.techelevator.dao.BeerDAO;
import com.techelevator.dao.BreweryDAO;
import com.techelevator.dao.ReviewDAO;
import com.techelevator.entity.Brewery;
import com.techelevator.entity.BreweryDTO;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/api/breweries")
public class TestRestController {

    private BreweryDAO breweryDAO;
    private BeerDAO beerDAO;
    private ReviewDAO reviewDAO;

    public TestRestController(BreweryDAO breweryDAO) {
        this.breweryDAO = breweryDAO;
    }

    @GetMapping
    public List<BreweryDTO> list() {
        List<BreweryDTO> names = new ArrayList<>();
        List<Brewery> breweries = breweryDAO.listAllBreweries();

        for (Brewery temp : breweries){
            names.add( new BreweryDTO(temp.getId(), temp.getBreweryName()) );
        }
        return names;
    }

    @GetMapping("/{id}")
    public Brewery read(@PathVariable long id) throws Exception {
        Brewery brewery = breweryDAO.getByID(id);
        if(brewery != null){
            return brewery;
        }else {
            throw new Exception();
        }
    }

    @PutMapping("{/id}")
    public void update(@RequestBody Brewery brewery, @PathVariable long id)
        throws Exception{
        Brewery updatedBrewery = breweryDAO.getByID(id);
        if(updatedBrewery != null) {
            breweryDAO.updateBrewery(updatedBrewery);
        }else{
            throw new Exception();
        }
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void create(@RequestBody Brewery brewery) {
        breweryDAO.saveBrewery(brewery);
    }

    @DeleteMapping("{/id}")
    public void delete(@PathVariable long id) {
        Brewery requestedBrewery = breweryDAO.getByID(id);
        if(requestedBrewery != null) {
            breweryDAO.deleteBrewery(requestedBrewery);

        }
    }

}
