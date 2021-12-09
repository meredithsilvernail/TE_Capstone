package com.techelevator.dao;

import com.techelevator.entity.Address;
import com.techelevator.entity.Brewery;
import org.junit.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;


public class JDBCBreweryDAOTest {

    private JDBCBreweryDAO dao;
    private JdbcTemplate jdbcTemplate;


    /* Using this particular implementation of DataSource so that
     * every database interaction is part of the same database
     * session and hence the same database transaction */
    private static SingleConnectionDataSource dataSource;

    /* Before any tests are run, this method initializes the datasource for testing. */
    @BeforeClass
    public static void setupDataSource() {
        dataSource = new SingleConnectionDataSource();
        dataSource.setUrl("jdbc:postgresql://localhost:5432/brewery");
        dataSource.setUsername("postgres");
        dataSource.setPassword("postgres1");
        /* The following line disables autocommit for connections
         * returned by this DataSource. This allows us to rollback
         * any changes after each test */
        dataSource.setAutoCommit(false);
    }

    /* After all tests have finished running, this method will close the DataSource */
    @AfterClass
    public static void closeDataSource() throws SQLException {
        dataSource.destroy();
    }

    /* After each test, we rollback any changes that were made to the database so that
     * everything is clean for the next test */
    @After
    public void rollback() throws SQLException {
        dataSource.getConnection().rollback();
    }

    /* This method provides access to the DataSource for subclasses so that
     * they can instantiate a DAO for testing */
    protected DataSource getDataSource() {
        return dataSource;
    }


    @Before
    public void setup() {
        dao = new JDBCBreweryDAO(dataSource);
        jdbcTemplate = new JdbcTemplate(dataSource);


    }


    @Test
    public void saveBrewery() {
        Address address = getAddress("Hillsboro", "OH", "12345 Main St", 45133);
        Brewery theBrewery = getBrewery(500L, "Anthony's Ale", "1234567890", "Once upon a time...", getWeeklyHours(), "WildOhio", address);

        dao.saveBrewery(theBrewery);
        Brewery savedBrewery = dao.getByID(theBrewery.getId());

        assertNotEquals(null, theBrewery.getId());
        assertBreweriesAreEqual(theBrewery, savedBrewery);
    }

    @Test
    public void getBreweryByName() {
        Address address = getAddress("Hillsboro", "OH", "12345 Main St", 45133);
        Brewery theBrewery = getBrewery( 500L,"Bob", "1234567890", "Once upon a time...", getWeeklyHours(), "WildOhio", address);

        dao.saveBrewery(theBrewery);
        Brewery savedBrewery = dao.getBreweryByName(theBrewery.getBreweryName());


        assertEquals("Bob", theBrewery.getBreweryName());
        assertNotEquals(null, theBrewery.getBreweryName());
        assertBreweriesAreEqual(theBrewery, savedBrewery);
    }

    @Test
    public void getByID() {
        Address address = getAddress("Hillsboro", "OH", "12345 Main St", 45133);
        Brewery theBrewery = getBrewery( 500L,"Brew Crew Crib", "1234567890", "Once upon a time...", getWeeklyHours(), "WildOhio", address);

        dao.saveBrewery(theBrewery);
        Brewery savedBrewery = dao.getByID(theBrewery.getId());


        assertNotEquals(null, theBrewery.getId());
        assertBreweriesAreEqual(theBrewery, savedBrewery);

    }

    @Test
    public void updateBrewery(){

        Address address = getAddress("Omaha", "NE", "12345 Main St", 43230);
        Brewery theBrewery = getBrewery( 500L,"SilverTongue Tavern", "1234567890", "Once upon a time...", getWeeklyHours(), "WildOhio", address);

        dao.saveBrewery(theBrewery);
        Brewery savedBrewery = dao.getByID(theBrewery.getId());
        assertBreweriesAreEqual(theBrewery, savedBrewery);

        Address newAddress = getAddress("Miami", "FL", "12345 Ocean Ave", 33101);
        Brewery newBrewery = getBrewery( savedBrewery.getId(),"SilverNail Tavern", "1234567890", "Once Upon A Time...Again", getWeeklyHours(), "WildOhio", address);

        dao.updateBrewery(newBrewery);
        Brewery updateBrewery  = dao.getByID(newBrewery.getId());
        assertBreweriesAreEqual(newBrewery, updateBrewery);


    }

    @Test
    public void assignBrewer(){

    }

    @Test
    public void listAllBreweries() {

        List<Brewery> actual = dao.listAllBreweries();
        int expected = 0;
        SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT COUNT(*) AS total FROM breweries");
        if(result.next()) {
            expected = result.getInt("total");
        }

        assertEquals(actual.size(), expected);


    }

    private Address getAddress(String city, String state, String street, int zip) {
        Address theAddress = new Address();
        theAddress.setCity(city);
        theAddress.setState(state);
        theAddress.setStreet(street);
        theAddress.setZip(zip);
        return theAddress;
    }

    private Brewery getBrewery(Long brewery_id, String name, String phone, String history, Map weeklyHours, String image, Address address) {
        Brewery theBrewery = new Brewery();
        theBrewery.setId(brewery_id);
        theBrewery.setBreweryName(name);
        theBrewery.setPhone(phone);
        theBrewery.setHistory(history);
        theBrewery.setWeeklyHours(weeklyHours);
        theBrewery.setImage(image);
        theBrewery.setAddress(address);
        return theBrewery;
    }


    private void assertBreweriesAreEqual(Brewery expected, Brewery actual) {
        assertEquals(expected.getId(), actual.getId());
        assertEquals(expected.getAddress(), actual.getAddress());
        assertEquals(expected.getBreweryName(), actual.getBreweryName());
        assertEquals(expected.getHistory(), actual.getHistory());
        assertEquals(expected.getPhone(), actual.getPhone());
        assertEquals(expected.getImage(), actual.getImage());
        assertEquals(expected.getWeeklyHours(), actual.getWeeklyHours());

    }

    private Map<String, String> getWeeklyHours() {

        Map<String, String> weeklyHours = new HashMap<>();

        weeklyHours.put("Sunday", "10:00pm-2:00am");
        weeklyHours.put("Monday", "10:00pm-2:00am");
        weeklyHours.put("Tuesday", "10:00pm-2:00am");
        weeklyHours.put("Wednesday", "10:00pm-2:00am");
        weeklyHours.put("Thursday", "10:00pm-2:00am");
        weeklyHours.put("Friday", "10:00pm-2:00am");
        weeklyHours.put("Saturday", "10:00pm-2:00am");

        return weeklyHours;
    }
}