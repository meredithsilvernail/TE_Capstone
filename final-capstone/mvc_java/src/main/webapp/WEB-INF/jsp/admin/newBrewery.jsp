<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-newBrewery-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Add New Brewery</h1>
                        </div>
                        <c:url var="formAction" value="/admin/addBrewery"/>
                        <form class="user" method="POST" action="${formAction}">
                            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="breweryName" id="breweryName" placeholder="Brewery Name">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="streetAddress" id="streetAddress" placeholder="Street Address">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="city" id="city" placeholder="City">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="state" id="state" placeholder="State">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="zip" id="zip" placeholder="Zip-code">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="phone" id="phone" placeholder="Phone">
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control form-control-user"
                                       name="imageName" id="imageName" placeholder="Image File Name">
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="sunHours" id="sunHours" placeholder="Sunday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="monHours" id="monHours" placeholder="Monday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="tuesHours" id="tuesHours" placeholder="Tuesday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="wedHours" id="wedHours" placeholder="Wednesday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="thursHours" id="thursHours" placeholder="Thursday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="friHours" id="friHours" placeholder="Friday Hours">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="satHours" id="satHours" placeholder="Saturday Hours">
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col">
                                    <textarea class="form-control" id="history" name="history"
                                              placeholder="Brewery History" rows="4"></textarea>
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