<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp" />

<section class="jumbotron" id="heading">
    <div class="container headerText">
        <h1 class="display-4 headingText">Brewery Finder</h1>
        <p class="lead headingText">Welcome to the Brewery Finder! Here you can find your next brewery adventure!</p>

        <c:url var="breweriesUrl" value="/breweries"/>
        <a class="btn btn-primary btn-lg" href="${breweriesUrl}" role="button">View Breweries</a>


        <c:if test="${LOGGED_USER.role == 'admin'}">
            <c:url var="addBreweryURL" value="/admin/addBrewery"/>
            <a class="btn btn-primary btn-lg" href="${addBreweryURL}" role="button">Add Brewery</a>
        </c:if>

    </div>
</section>

<c:import url="/WEB-INF/jsp/footer.jsp" />