<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-updateBrewery-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Update Brewery Details</h1>
                            <p>Update any needed fields and submit</p>
                        </div>
                        <c:url var="formAction" value="/brewer/updateBrewery"/>
                        <form class="user" method="POST" action="${formAction}">
                            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <label for="breweryName">Brewery Name</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="breweryName" id="breweryName" value="${breweryToUpdate.breweryName}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="streetAddress">Street</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="streetAddress" id="streetAddress" value="${breweryToUpdate.address.street}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="city">City</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="city" id="city" value="${breweryToUpdate.address.city}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="state">State</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="state" id="state" value="${breweryToUpdate.address.state}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="zip">Zip Code</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="zip" id="zip" value="${breweryToUpdate.address.zip}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="phone">Phone</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="phone" id="phone" value="${breweryToUpdate.phone}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="active">Currently Active?</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="active" id="active" value="${breweryToUpdate.active}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="imageName">Image file name</label>
                                <input type="text" class="form-control form-control-user"
                                       name="imageName" id="imageName" value="${breweryToUpdate.image}">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <label for="sunHours">Sunday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="sunHours" id="sunHours" value="${breweryToUpdate.weeklyHours.get("Sunday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="monHours">Monday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="monHours" id="monHours" value="${breweryToUpdate.weeklyHours.get("Monday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="tuesHours">Tuesday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="tuesHours" id="tuesHours" value="${breweryToUpdate.weeklyHours.get("Tuesday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="wedHours">Wednesday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="wedHours" id="wedHours" value="${breweryToUpdate.weeklyHours.get("Wednesday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="thursHours">Thursday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="thursHours" id="thursHours" value="${breweryToUpdate.weeklyHours.get("Thursday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="friHours">Friday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="friHours" id="friHours" value="${breweryToUpdate.weeklyHours.get("Friday")}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="satHours">Saturday Hours</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="satHours" id="satHours" value="${breweryToUpdate.weeklyHours.get("Saturday")}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <label for="history">Brewery History/Description</label>
                                    <textarea class="form-control" id="history" name="history" value="${breweryToUpdate.history}" rows="8"></textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <button type="submit" class="btn btn-outline-primary btn-user btn-block">
                                        Submit Brewery
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
