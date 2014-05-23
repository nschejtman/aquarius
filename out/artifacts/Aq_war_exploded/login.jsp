<%@ page import="servlets.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
    <meta charset="utf-8"/>
    <title>Aquarius</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN CORE CSS FRAMEWORK -->
    <link href="../assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
    <link href="../assets/plugins/boostrapv3/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/boostrapv3/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/animate.min.css" rel="stylesheet" type="text/css"/>
    <!-- END CORE CSS FRAMEWORK -->
    <!-- BEGIN CSS TEMPLATE -->
    <link href="../assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/magic_space.css" rel="stylesheet" type="text/css"/>
    <link href="../assets/css/custom-icon-set.css" rel="stylesheet" type="text/css"/>
    <!-- END CSS TEMPLATE -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="error-body no-top lazy" data-original="assets/img/work.jpg"
      style="background-image: url('../assets/img/work.jpg')">

<style type="text/css">
    div.hidden{
        display: none;
    }
</style>


<div class="container">
    <div class="row login-container animated fadeInUp">
        <div class="col-md-7 col-md-offset-2 tiles white no-padding">
            <div class="p-t-30 p-l-40 p-b-20 xs-p-t-10 xs-p-l-10 xs-p-b-10">
                <h2 class="normal">Sign in to Aquarius</h2>

                <p>Ideas matter!<br></p>

                <p class="p-b-20">Sign up Now for webarch accounts, it's free and always will be..</p>
                <button type="submit" class="btn btn-primary btn-cons" id="loginBtn">Login</button>
                or&nbsp;&nbsp;
                <button type="button" class="btn btn-info btn-cons" id="register_toggle"> Create an account</button>
            </div>
            <div class="tiles grey p-t-20 p-b-20 text-black">
                <form id="<%=Constants.LOGIN_FORM_ID%>" class="animated fadeIn"
                      action="<%=Constants.LOGIN_FORM_ACTION%>" method="post">
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="col-md-6 col-sm-6 ">
                            <input name="<%=Constants.LOGIN_USERNAME_FIELD%>" id="login_username" type="text"
                                   class="form-control" placeholder="Username">
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <input name="<%=Constants.LOGIN_PASSWORD_FIELD%>" id="login_pass" type="password"
                                   class="form-control" placeholder="Password">
                        </div>
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                    <div class="alert alert-error hidden" id="error-message">
                        <button class="close" data-dismiss="alert"></button>
                        <b>Error:</b> Incorrect user or password!
                    </div>
                    </div>
                    <div class="row p-t-10 m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="control-group  col-md-10">
                            <div class="checkbox checkbox check-success"><a href="#">Trouble login in?</a>&nbsp;&nbsp;
                                <input type="checkbox" id="checkbox1" value="1">
                                <label for="checkbox1">Keep me reminded </label>
                            </div>
                        </div>
                    </div>
                </form>
                <form id="frm_register" class="animated fadeIn" style="display:none">
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="col-md-6 col-sm-6">
                            <input name="reg_username" id="reg_username" type="text" class="form-control"
                                   placeholder="Username">
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <input name="reg_pass" id="reg_pass" type="password" class="form-control"
                                   placeholder="Password">
                        </div>
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="col-md-12">
                            <input name="reg_mail" id="reg_mail" type="text" class="form-control"
                                   placeholder="Mailing Address">
                        </div>
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="col-md-6 col-sm-6">
                            <input name="reg_first_Name" type="text" class="form-control" placeholder="First Name">
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <input name="reg_first_Name" type="password" class="form-control" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="row form-row m-l-20 m-r-20 xs-m-l-10 xs-m-r-10">
                        <div class="col-md-12 ">
                            <input name="reg_email" id="reg_email" type="text" class="form-control" placeholder="Email">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN CORE JS FRAMEWORK-->
<script src="../assets/plugins/jquery-1.8.3.min.js" type="text/javascript"></script>
<script src="../assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="../assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="../assets/plugins/jquery-lazyload/jquery.lazyload.min.js" type="text/javascript"></script>
<script src="../assets/js/login_v2.js" type="text/javascript"></script>
<!-- BEGIN CORE TEMPLATE JS -->
<script>
    $("#loginBtn").click(function () {
        $("#<%=Constants.LOGIN_FORM_ID%>").submit();
    });

    //Toggle error message
    $(document).onload(function(){
        if(XMLHttpRequest.getAttribute("error") == true){
            $("#error-message").toggle(true);
        }

    })
</script>
<!-- END CORE TEMPLATE JS -->
</body>


</html>