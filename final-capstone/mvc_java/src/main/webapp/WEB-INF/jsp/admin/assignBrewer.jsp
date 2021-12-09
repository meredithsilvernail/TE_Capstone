<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Nested Row within Card Body -->
            <div class="row">
                <div class="col-lg-5 d-none d-lg-block bg-newBrewer-image"></div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4">Assign Brewer to Brewery</h1>
                        </div>
                        <c:url var="formAction" value="/admin/assignBrewer"/>
                        <form class="user" method="POST" action="${formAction}">
                            <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                            <div class="form-group row">
                                <div class="col-sm-6 mb-1">
                                    <input type="text" class="form-control form-control-user"
                                           name="userName" id="userName" placeholder="Brewer User Name">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col">
                                    <button type="submit" class="btn btn-outline-primary btn-user btn-block">
                                        Submit Brewer
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