<%@ include file="/common/taglibs.jsp"%>
<html>
<head>
    <title>Login page</title>
    <link href="/sc-content/css/bootstrap_v1.0.css" type="text/css" rel="stylesheet" />
    <link href="/sc-content/css/style_v1.0.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>


<body>
<div id="mainWrapper">
    <div class="login-container">
        <div class="login-card">
            <div class="login-form">
                <form action="/perform_login" method="post" class="form-horizontal">
                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger">
                            <p>Invalid username and password.</p>
                        </div>
                    </c:if>
                    <c:if test="${param.logout != null}">
                        <div class="alert alert-success">
                            <p>You have been logged out successfully.</p>
                        </div>
                    </c:if>
                    <div class="input-group input-sm">
                        <label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>
                        <input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
                    </div>
                    <div class="input-group input-sm">
                        <label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
                    </div>
                    <div class="input-group input-sm">
                        <div>
                            <img id="captcha_id" name="imgCaptcha" src="captcha.jpg">
                        </div>
                    </div>
                    <%--<div class="input-group input-sm">--%>
                        <%--<a href="javascript:;"--%>
                           <%--title="change captcha text"--%>
                           <%--onclick="document.getElementById('captcha_id').src = 'captcha.jpg?' + Math.random();  return false">--%>
                            <%--<img src="<c:url value="/sc-content/images/refresh.png"/>" />--%>
                        <%--</a>--%>
                    <%--</div>--%>
                    <div class="input-group input-sm">
                        <input type="text" class="form-control" name="captcha" />
                    </div>
                    <div class="input-group input-sm">
                        <div class="checkbox">
                            <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>
                        </div>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                    <div class="form-actions">
                        <input type="submit"
                               class="btn btn-block btn-primary btn-default" value="Log in">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>