<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="/WEB-INF/jsp/home/mainHeader.jsp" />

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- 404 Error Text -->
          <div class="text-center">
            <div class="error mx-auto" data-text="500">500</div>
            <p class="lead text-gray-800 mb-5">Server Error</p>
            <p class="text-gray-500 mb-0">It looks like you found a bug in the mix...we'll be chatting with our developers!</p>
            <a href="/home/index">&larr; Back to Homepage</a>
          </div>

        </div>
        <!-- /.container-fluid -->
        <!-- End of Main Content -->

<c:import url="/WEB-INF/jsp/footer.jsp" />