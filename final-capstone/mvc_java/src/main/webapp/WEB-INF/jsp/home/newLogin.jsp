<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:import url="/WEB-INF/jsp/home/mainHeader.jsp" />

<div class="container">

    <!-- Outer Row -->
    <div class="row justify-content-center">

        <div class="col-xl-10 col-lg-12 col-md-9">

            <div class="card o-hidden border-0 shadow-lg my-5">
                <div class="card-body p-0">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                        <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                        <div class="col-lg-6">
                            <div class="p-5">
                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                </div>
                                <form class="user" method="POST" action="/home/newLogin">
                                    <input type="hidden" name="destination" value="${param.destination}"/>
                                    <input type="hidden" name="CSRF_TOKEN" value="${CSRF_TOKEN}"/>
                                    <div class="form-group">
                                        <input type="email" class="form-control form-control-user"
                                               name="userName" id="userName" aria-describedby="emailHelp" placeholder="Enter Email Address...">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" class="form-control form-control-user"
                                               name="password" id="password" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox small">
                                            <input type="checkbox" class="custom-control-input" id="customCheck">
                                            <label class="custom-control-label" for="customCheck">Remember Me</label>
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary btn-user btn-block">
                                        Login
                                    </button>
                                    <hr>
                                    <a href="#" class="btn btn-google btn-user btn-block">
                                        <c:url var="googleImageUrl" value="/img/googleRed.png" />
                                        <img src="${googleImageUrl}" /> &nbsp;Register with Google
                                    </a>
                                    <a href="#" class="btn btn-facebook btn-user btn-block">
                                        <c:url var="fbImageUrl" value="/img/facebook.png" />
                                        <img src="${fbImageUrl}" /> &nbsp;Register with Facebook
                                    </a>
                                </form>
                                <hr>
                                <div class="text-center">
                                    <a class="small" href="/forgot-password">Forgot Password?</a>
                                </div>
                                <div class="text-center">
                                    <a class="small" href="/home/newRegister">Create an Account!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>

</div>

<c:import url="/WEB-INF/jsp/footer.jsp" />
