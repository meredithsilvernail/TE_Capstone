<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<c:url var="imageUrl" value="../img/breweryImg/${selectedBrewery.image}.jpg"/>
<div class="container">
    <div class="card mb-3" style="max-width: 100%;">
        <div class="row no-gutters">
            <div class="col-md-4">
                <img src="${imageUrl}" class="card-img" alt="...">
            </div>
            <div class="col-md-8">
                <div class="card-body align-content-between">
                    <h5 class="card-title d-inline" id="detailTitle"><strong>${selectedBrewery.breweryName}</strong>
                    </h5>
                    <div class="container d-inline flex-shrink-1 flex-wrap ml-4">
                        <p class="d-inline justify-content-end" id="addressDetail">${address.street}
                            <strong>|</strong> ${address.city}, ${address.state} ${address.zip}
                            <strong>|</strong> ${selectedBrewery.phone}</p>
                    </div>
                    <p class="card-text my-4" id="historyText"><em>${selectedBrewery.history}</em></p>

                    <div class="container m-2" id="hoursTable">
                        <table class="table table-striped align-self-end text-center">
                            <thead class="thead-dark">
                            <tr>
                                <th scope="col">Sunday</th>
                                <th scope="col">Monday</th>
                                <th scope="col">Tuesday</th>
                                <th scope="col">Wednesday</th>
                                <th scope="col">Thursday</th>
                                <th scope="col">Friday</th>
                                <th scope="col">Saturday</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>${hours.get("Sunday")}</td>
                                <td>${hours.get("Monday")}</td>
                                <td>${hours.get("Tuesday")}</td>
                                <td>${hours.get("Wednesday")}</td>
                                <td>${hours.get("Thursday")}</td>
                                <td>${hours.get("Friday")}</td>
                                <td>${hours.get("Saturday")}</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div>

                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="container" id="availableBeers">
        <div class="row">
            <div class="col justify-content-center text-center" id="availableBeersHeading">
                <h4 class="m-1 p-1"><strong>Available Beers:</strong></h4>
                <c:if test="${LOGGED_USER.role == 'brewer'}">
                    <a href="/brewer/addBeer?id=${selectedBrewery.id}" class="btn btn-primary m-1">Add Beer</a>
                    <a href="/brewer/deleteBeer?id=${selectedBrewery.id}" class="btn btn-primary m-1">Remove Beer</a>

                </c:if>

                <div class="accordion justify-content-center align-items-center" id="accordionExample">
                    <div class="card justify-self-center">
                        <c:set var="counter" value="1"/>
                        <c:forEach var="beer" items="${availableBeers}">
                            <c:url var="beerImage" value="../img/beerImg/${beer.image}.jpg"/>
                            <div class="card-header align-items-center" id="headingOne${counter}">
                                <h2 class="mb-0">
                                    <button class="btn btn-outline-dark collapsed" type="button" data-toggle="collapse"
                                            data-target="#collapseOne${counter}" aria-expanded="false"
                                            aria-controls="collapseOne${counter}">
                                            ${beer.beerName}
                                    </button>
                                    <c:if test="${LOGGED_USER.role == 'brewer'}">
                                    <a href="/brewer/updateBeer?id=${beer.beerID}" class="btn btn-outline-primary m-1">Update Beer</a>
                                    </c:if>
                                </h2>
                            </div>

                            <div id="collapseOne${counter}" class="collapse" aria-labelledby="headingOne${counter}"
                                 data-parent="#accordionExample">
                                <div class="card-body">
                                    <table class="table table-striped align-items-center">
                                        <thead class="thead-dark align-items-center">
                                        <tr>
                                            <th scope="col" class="align-middle"></th>
                                            <th scope="col" class="align-middle">Type</th>
                                            <th scope="col" class="align-middle">Description</th>
                                            <th scope="col" class="align-middle">ABV</th>
                                            <th scope="col" class="align-middle">Average Rating</th>
                                        </tr>
                                        </thead>
                                        <tbody class="align-items-center">

                                        <tr class="align-items-center">
                                            <td><img src="${beerImage}" id="beerImg" alt="..."/> </td>
                                            <td class="align-middle">${beer.beerType}</td>
                                            <td class="align-middle">${beer.beerDescription}</td>
                                            <td class="align-middle">${beer.beerABV}</td>
                                            <td class="align-middle">${beer.averageRating}</td>
                                        </tr>


                                        </tbody>

                                    </table>
                                    <c:if test="${LOGGED_USER.role == 'user'}">
                                        <a href="/user/addReview?id=${beer.beerID}" class="btn btn-primary m-1">Review this Beer</a>
                                        <a href="/user/viewReviews?id=${beer.beerID}" class="btn btn-primary m-1">Read Reviews</a>

                                    </c:if>
                                </div>
                            </div>
                            <c:set var="counter" value="${counter + 1}"/>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp"/>

