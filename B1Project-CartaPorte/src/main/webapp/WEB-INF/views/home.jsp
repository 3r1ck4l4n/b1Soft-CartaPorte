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
    <title>Welcome to app</title>
</head>
<body>
<div id="sign-in-page">
        <div id="sign-in-wrapper">
            <div id="logo-wrapper">
                <div id="logo">
                    <img src="image/TierraAereo.png" width="200"
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
