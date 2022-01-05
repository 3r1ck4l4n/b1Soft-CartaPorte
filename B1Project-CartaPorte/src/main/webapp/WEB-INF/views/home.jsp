<%--
  Created by IntelliJ IDEA.
  User: yeder
  Date: 03/01/2022
  Time: 10:56 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}public/css/stylelog.css">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400&display=swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2021.3.1109/js/jszip.min.js"></script>
    <script src="https://kendo.cdn.telerik.com/2021.3.1109/js/kendo.all.min.js"></script>
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
                    Número de guia
                </div>
               
            </div>
            <div id="inputs-wrapper">
                <form id="login"></form>
            </div>
            <div id="guia">
                <a href="" class="k-button">Subir</a>
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
                buttonsTemplate: "<a href='index.html' class='k-button'>Buscar</a>",
                formData:{
                    Guia:"",
                },
                
                items: [
                    {
                        field: "Guia",
                        label:"",
                        attributes:{
                            type:"text",
                            placeholder: "Numero de guia",
                            required:true
                            
                        }
                    }, 
                    {
                        field: "Password",
                        label:"",
                        attributes:{
                            type:"file"
                        }
                    },
                   
                ]
                
            })
           
        })
    </script>
</body>
</html>
