package com.techelevator.dao;


import com.techelevator.entity.Beer;
import com.techelevator.entity.Brewery;
import org.junit.*;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.List;
import static org.junit.Assert.*;


public class JDBCBeerDAOTest {

    private JDBCBeerDAO dao;
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
        dao = new JDBCBeerDAO(dataSource);
        jdbcTemplate = new JdbcTemplate(dataSource);


    }

    @Test
    public void saveBeer() {

        Beer theBeer = getBeer(404L,"Yolo", "Gose", "Germany Crap Beer", "12%");


        dao.saveBeer(theBeer);
        Beer savedBeer = dao.getBeerByName(theBeer.getBeerName());

        assertNotEquals(null, theBeer.getBeerID());
        assertBeersAreEqual(theBeer, savedBeer);
    }

    @Test
    public void getBeerByName() {

        Beer theBeer = getBeer(404L, "Hopstation", "IPA", "A good delicious beer", "7.2%");

        dao.saveBeer(theBeer);
        Beer savedBeer = dao.getBeerByName(theBeer.getBeerName());


        assertEquals("Hopstation", theBeer.getBeerName());
        assertNotEquals(null, theBeer.getBeerID());
        assertBeersAreEqual(theBeer, savedBeer);

    }

    @Test
    public void getBeerByID() {

        Beer theBeer = getBeer(420L, "Raging Bitch", "Belgian IPA", "Two inflammatory words... one wild drink!", "8.3%");

        dao.saveBeer(theBeer);
        Beer savedBeer = dao.getBeerByID(theBeer.getBeerID());


        assertEquals("Raging Bitch", theBeer.getBeerName());
        assertNotEquals(null, theBeer.getBeerID());
        assertBeersAreEqual(theBeer, savedBeer);
    }

    @Test
    public void updateBeer() {

        Beer theBeer = getBeer(900L, "Yolo", "Gose", "Germany Crap Beer", "12%");

        dao.saveBeer(theBeer);
        Beer savedBeer = dao.getBeerByName(theBeer.getBeerName());
        assertBeersAreEqual(theBeer, savedBeer);

        Beer newBeer = getBeer(savedBeer.getBeerID(),"Beer", "Beer", "Crap Beer", "5.0%");

        dao.updateBeer(newBeer);
        Beer updatedBeer  = dao.getBeerByID(newBeer.getBeerID());
        assertBeersAreEqual(newBeer, updatedBeer);

    }

    @Test
    public void deleteBeer() {
    }

    @Test
    public void listBeersByBrewery() {

        List<Beer> actual = dao.listBeersByBrewery(10);
        int expected = 0;
        SqlRowSet result = jdbcTemplate.queryForRowSet("SELECT COUNT(*) AS total FROM beers WHERE brewery_id = 10");
        if(result.next()) {
            expected = result.getInt("total");
        }

        assertEquals(actual.size(), expected);
    }



    private void assertBeersAreEqual(Beer expected, Beer actual) {
        assertEquals(expected.getBeerID(), actual.getBeerID());
        assertEquals(expected.getBeerName(), actual.getBeerName());
        assertEquals(expected.getBeerType(), actual.getBeerType());
        assertEquals(expected.getBeerDescription(), actual.getBeerDescription());
        assertEquals(expected.getBeerABV(), actual.getBeerABV());

    }

    private Beer getBeer(Long beerID, String beerName, String type, String beerDescription, String beerABV) {
        Beer theBeer = new Beer();
        theBeer.setBeerID(beerID);
        theBeer.setBeerName(beerName);
        theBeer.setBeerType(type);
        theBeer.setBeerDescription(beerDescription);
        theBeer.setBeerABV(beerABV);
        return theBeer;
    }



}