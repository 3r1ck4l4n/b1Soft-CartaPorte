<%--
  Created by IntelliJ IDEA.
  User: yeder
  Date: 03/01/2022
  Time: 05:30 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}public/css/kendo.default.css">

    <link href="${pageContext.request.contextPath}public/css/font.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}public/css/stylelog.css" rel="stylesheet">

    <script src="${pageContext.request.contextPath}public/js/jquery-1.12.3.min.js"></script>
    <script src="${pageContext.request.contextPath}public/js/jszip.min.js"></script>
    <script src="${pageContext.request.contextPath}public/js/kendo.all.min.js"></script>
</head>
<body>
<div id="sign-in-page">
        <div id="sign-in-wrapper">
            
            <div id="logo-wrapper">

                <div id="logo">
                    <img src="${pageContext.request.contextPath}public/images/TierraAereo.png" width="200" height="150"></img>
                </div>

                <div id='banner'>
                    Carta porte 
                </div>
                
            </div>
            <div id="inputs-wrapper">
                <form id="login"></form>
            </div>
            
            <div id="signup">
                <a href='index.html' class='k-button'>Registrar usuario</a>
            </div>

            <div id="forgot">
                ¿Olvidaste tu contraseña? <a href="ForgotPass.html">Recuperar contraseña</a>
            </div>
        </div>

</div>
    <script>
        $(document).ready(function(){
            $("#login").kendoForm({
                grid:{
                    cols:1,
                    gutter:5
                },
                buttonsTemplate: "<a href='index.html' class='k-button'>Iniciar Sesión</a>",
                formData:{
                    Email:"",
                    Password:"",
                    RememberMe:false
                },
                items: [
                    {
                        field: "Email",
                        label:"",
                        attributes:{
                            placeholder: "Email",
                            required:true
                        }
                    }, 
                    {
                        field: "Password",
                        label:"",
                        attributes:{
                            type:"password",
                            required:true
                        }
                    },
                    {
                        field: "RememberMe",
                        label:"Remember Me",
                        attributes:{
                            type:"checkbox"
                        }
                    }
                ]
            })
            $("#Password").parent().append("<span class='k-icon k-i-preview'></span>");
            $(".k-i-preview").mousedown(function(){

                $("#Password").attr("type", "text");
            })
            $(".k-i-preview").mouseup(function(){

                $("#Password").attr("type", "password");
            })           
        })
    </script>
</body>
</html>