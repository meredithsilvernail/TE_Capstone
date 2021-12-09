<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-deleteBeer-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Add New Beer</h1>
                        </div>
                        <c:url var="formAction" value="/brewer/deleteBeer"/>
                        <form class="user" method="POST" action="${formAction}">
                            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                            <div class="col-sm-6 mb-1">
                                <select class="custom-select" id="beerName" name="beerName">
                                    <option selected>Select Beer to remove</option>
                                    <c:forEach var="beer" items="${beers}">
                                    <option value="${beer.beerName}">${beer.beerName}</option>
                                    </c:forEach>

                                </select>

                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <button type="submit" class="btn btn-outline-primary btn-user btn-block">
                                        Remove Beer
                                    </button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp"/>

