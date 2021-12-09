<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/home/mainHeader.jsp"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<div class="container">

    <table class="table table-striped">
        <thead class="thead-dark">
        <tr>
            <th scope="col">User</th>
            <th scope="col">Title</th>
            <th scope="col">Review</th>
            <th scope="col">Rating</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="review" items="${beerReviews}">
        <tr class="align-items-center">
            <td>${review.userName}</td>
            <td>${review.reviewTitle}</td>
            <td>${review.reviewNotes}</td>
            <td>${review.rating}</td>
        </tr>
        </c:forEach>

        </tbody>

    </table>
    </div>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp"/>

