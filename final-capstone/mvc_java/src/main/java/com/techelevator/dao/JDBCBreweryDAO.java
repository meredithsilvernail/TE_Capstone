package com.techelevator.dao;

import com.techelevator.entity.Address;
import com.techelevator.entity.Brewery;
import com.techelevator.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import javax.sql.DataSource;
import java.util.*;


@Component
public class JDBCBreweryDAO implements BreweryDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JDBCBreweryDAO(DataSource dataSource) {

        this.jdbcTemplate = new JdbcTemplate(dataSource);

    }

    @Override
    public void saveBrewery(Brewery brewery) {
        long id = getNextBreweryId();
        String sqlInsertBrewery =
                "INSERT INTO breweries(brewery_id, brewery_name, phone_number, brewery_history, sunday_hrs, monday_hrs, tuesday_hrs, wednesday_hrs, thursday_hrs, friday_hrs, saturday_hrs, brewery_image_filename, brewery_address_id) " +
                        "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        jdbcTemplate.update(sqlInsertBrewery, id, brewery.getBreweryName(), brewery.getPhone(),
                brewery.getHistory(), brewery.getWeeklyHours().get("Sunday"), brewery.getWeeklyHours().get("Monday"),
                brewery.getWeeklyHours().get("Tuesday"), brewery.getWeeklyHours().get("Wednesday"),
                brewery.getWeeklyHours().get("Thursday"), brewery.getWeeklyHours().get("Friday"),
                brewery.getWeeklyHours().get("Saturday"), brewery.getImage(), saveAddress(brewery));
        brewery.setId(id);
    }

    private long saveAddress(Brewery brewery) {
        long id = getNextAddressId();
        String sqlInsertAddress =
                "INSERT INTO address(address_id, street, city, state_code, zip_code) " +
                        "VALUES(?, ?, ?, ?, ?)";
        jdbcTemplate.update(sqlInsertAddress, id, brewery.getAddress().getStreet(),
                brewery.getAddress().getCity(), brewery.getAddress().getState(),
                brewery.getAddress().getZip());
        brewery.getAddress().setId(id);
        return id;
    }



    @Override
    public Brewery getBreweryByName(String breweryName) {

        String sqlSearchForBreweryName = "SELECT * " +
                "FROM breweries JOIN address ON breweries.brewery_address_id = address.address_id " +
                "WHERE UPPER(brewery_name) = ? ";

        SqlRowSet brewery = jdbcTemplate.queryForRowSet(sqlSearchForBreweryName, breweryName.toUpperCase());

        if (brewery.next()) {
            return mapRowToBrewery(brewery);
        }
        return null;

    }

    @Override
    public Brewery getByID(Long id) {
        String sqlSearchForBreweryID = "SELECT * FROM breweries JOIN address ON breweries.brewery_address_id = address.address_id WHERE brewery_id = ? ";

        SqlRowSet brewery = jdbcTemplate.queryForRowSet(sqlSearchForBreweryID, id);
        if (brewery.next()) {
            return mapRowToBrewery(brewery);
        }
        return null;
    }

    @Override
    public List<Brewery> listAllBreweries() {
        List<Brewery> allBreweries = new ArrayList<>();
        String sqlSelectAllBreweries = "SELECT * FROM breweries JOIN address ON breweries.brewery_address_id = address.address_id";
        SqlRowSet breweries = jdbcTemplate.queryForRowSet(sqlSelectAllBreweries);
        while (breweries.next()) {
            allBreweries.add(mapRowToBrewery(breweries));
        }
        return allBreweries;
    }


    @Override
    public void updateBrewery(Brewery brewery) {

        String sqlInsertBrewery =
                "UPDATE INTO breweries(brewery_name, phone_number, brewery_history, sunday_hrs, monday_hrs, tuesday_hrs, wednesday_hrs, thursday_hrs, friday_hrs, saturday_hrs, brewery_image_filename, active) " +
                        "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        String sqlUpdateBrewery =
                "UPDATE breweries " +
                        "SET brewery_name = ?, " +
                            "phone_number = ?, " +
                            "brewery_history = ?, " +
                            "sunday_hrs = ?, " +
                            "monday_hrs = ?, " +
                            "tuesday_hrs = ?, " +
                            "wednesday_hrs = ?, " +
                            "thursday_hrs = ?, " +
                            "friday_hrs = ?, " +
                            "saturday_hrs = ?, " +
                            "brewery_image_filename = ?, " +
                            "active = ? " +
                        "WHERE brewery_id = ?";
        jdbcTemplate.update(sqlUpdateBrewery, brewery.getBreweryName(), brewery.getPhone(),
                brewery.getHistory(), brewery.getWeeklyHours().get("Sunday"), brewery.getWeeklyHours().get("Monday"),
                brewery.getWeeklyHours().get("Tuesday"), brewery.getWeeklyHours().get("Wednesday"),
                brewery.getWeeklyHours().get("Thursday"), brewery.getWeeklyHours().get("Friday"),
                brewery.getWeeklyHours().get("Saturday"), brewery.getImage(), brewery.isActive(),
                brewery.getId()
                );

        updateAddress(brewery);
    }

    @Override
    public void updateAddress(Brewery brewery) {
        String sqlUpdateAddress =
                "UPDATE address " +
                        "SET street = ?, " +
                        "city = ?, " +
                        "state_code = ?, " +
                        "zip_code = ? " +
                        "WHERE address_id = ?";

        jdbcTemplate.update(sqlUpdateAddress, brewery.getAddress().getStreet(),
                brewery.getAddress().getCity(), brewery.getAddress().getState(),
                brewery.getAddress().getZip(), brewery.getAddress().getId());

    }

    @Override
    public void deleteBrewery(Brewery requestedBrewery) {

    }

    @Override
    public Brewery mapRowToBrewery(SqlRowSet breweries) {

        Brewery aBrewery = new Brewery();

        aBrewery.setAddress(mapAddress(breweries));
        aBrewery.setWeeklyHours(getWeeklyHours(breweries));

        aBrewery.setId(breweries.getLong("brewery_id"));
        aBrewery.setPhone(breweries.getString("phone_number"));
        aBrewery.setBreweryName(breweries.getString("brewery_name"));
        aBrewery.setHistory(breweries.getString("brewery_history"));
        aBrewery.setImage(breweries.getString("brewery_image_filename"));
        aBrewery.setActive(breweries.getBoolean("active"));

        return aBrewery;
    }

    private Address mapAddress(SqlRowSet result) {
        return new Address(
                result.getLong("address_id"),
                result.getString("street"),
                result.getString("city"),
                result.getString("state_code"),
                result.getInt("zip_code")
        );
    }

    private Long getNextBreweryId() {
        String sqlSelectNextId = "SELECT NEXTVAL('breweries_brewery_id_seq')";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
        Long id = null;
        if (results.next()) {
            id = results.getLong(1);
        } else {
            throw new RuntimeException("Something strange happened, unable to select next forum post id from sequence");
        }
        return id;
    }

    private Long getNextAddressId() {
        String sqlSelectNextId = "SELECT NEXTVAL('address_address_id_seq')";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectNextId);
        Long id = null;
        if (results.next()) {
            id = results.getLong(1);
        } else {
            throw new RuntimeException("Something strange happened, unable to select next forum post id from sequence");
        }
        return id;
    }

    private Map<String, String> getWeeklyHours(SqlRowSet brewery) {

        Map<String, String> weeklyHours = new HashMap<>();

        weeklyHours.put("Sunday", brewery.getString("sunday_hrs"));
        weeklyHours.put("Monday", brewery.getString("monday_hrs"));
        weeklyHours.put("Tuesday", brewery.getString("tuesday_hrs"));
        weeklyHours.put("Wednesday", brewery.getString("wednesday_hrs"));
        weeklyHours.put("Thursday", brewery.getString("thursday_hrs"));
        weeklyHours.put("Friday", brewery.getString("friday_hrs"));
        weeklyHours.put("Saturday", brewery.getString("saturday_hrs"));

        return weeklyHours;

    }

    public void assignBrewer(Brewery brewery, User brewer){
        String sqlInsertBrewer =
                "UPDATE breweries SET brewer_id = ? " +
                        "WHERE brewery_id = ?";

        jdbcTemplate.update(sqlInsertBrewer, brewery.getId(), brewer.getId());

    }


}
