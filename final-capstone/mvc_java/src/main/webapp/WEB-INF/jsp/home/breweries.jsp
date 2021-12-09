<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<div class="row row-cols-1 row-cols-md-3">
    <c:forEach var="brewery" items="${breweries}">
        <c:if test="${brewery.active}">
            <div class="col mb-4">
                <div class="card">
                    <c:url var="imageUrl" value="../img/breweryImg/${brewery.image}.jpg"/>
                    <img src="${imageUrl}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${brewery.breweryName}</h5>
                        <a href="/breweryDetail?id=${brewery.id}" class="btn btn-primary">View Details</a>
                        <c:if test="${LOGGED_USER.role == 'brewer'}">
                            <a href="/brewer/updateBrewery?id=${brewery.id}" class="btn btn-primary">Update Brewery</a>
                        </c:if>
                        <c:if test="${LOGGED_USER.role == 'admin'}">
                            <a href="/admin/assignBrewer?id=${brewery.id}" class="btn btn-primary">Assign Brewer</a>
                        </c:if>
                    </div>
                </div>
            </div>
        </c:if>
    </c:forEach>
</div>


<c:import url="/WEB-INF/jsp/footer.jsp"/>
