<%-- 
    Document   : recuver
    Created on : 4 ene 2022, 11:58:37
    Author     : guapo_mfkjs57
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forgotpassword</title>
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
                    <img src="${pageContext.request.contextPath}public/images/TierraAereo.png" width="200"
                    height="150"></img>
                </div>
                <div id='banner'>
                    Recuperar contraseña 
                </div>
                
            </div>
            <div id="inputs-wrapper">
                <form id="login"></form>
                
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
                buttonsTemplate: "<a href='index.html' class='k-button'>Sign in</a>",
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
