<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-updateBeer-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Update Beer Details</h1>
                            <p>Update any needed fields and submit</p>
                        </div>
                        <c:url var="formAction" value="/brewer/updateBeer"/>
                        <form class="user" method="POST" action="${formAction}">
                            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <label for="beerName">Beer Name</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="beerName" id="beerName" value="${beerToUpdate.beerName}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="beerType">Type</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="beerType" id="beerType" value="${beerToUpdate.beerType}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="beerDescription">Description</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="beerDescription" id="beerDescription" value="${beerToUpdate.beerDescription}">
                                </div>
                                <div class="col-sm-6 mb-1">
                                    <label for="beerABV">ABV</label>
                                    <input type="text" class="form-control form-control-user"
                                           name="beerABV" id="beerABV" value="${beerToUpdate.beerABV}">
                                </div>

                            </div>
                            <div class="form-group">
                                <label for="imageName">Image file name</label>
                                <input type="text" class="form-control form-control-user"
                                       name="imageName" id="imageName" value="${beerToUpdate.image}">
                            </div>

                            <div class="form-group row">
                                <div class="col">
                                    <button type="submit" class="btn btn-outline-primary btn-user btn-block">
                                        Submit Beer Updates
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
