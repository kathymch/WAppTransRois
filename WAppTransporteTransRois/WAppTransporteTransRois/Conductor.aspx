<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conductor.aspx.cs" Inherits="WAppTransporteEstudiantes.Driver" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Agregar Pasajeros</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/styleDriver.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 
<style>
    body {font-family: "Lato", sans-serif}
    .mySlides {display: none}
</style>
</head>

<body>
    <!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="Inicio.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Inicio</a>
    <a href="Conductor.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Conductor</a>
    <a href="Busetas.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Busetas</a>
    <a href="Pasajeros.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Estudiantes</a>
      <a href="Asistente.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Asistentes</a>
            <a href="Escuelas.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Escuelas</a>
      <a href="Horarios.aspx" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Horarios</a>
  </div>
</div>


    <div class="main">
        <div class="container">
            <div class="signup-content">
                <div class="signup-img">
                    <img src="images/driver.jpg" alt="">
                </div>
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form">
                        <h2>Agregar Conductor</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="nameDriver">Nombre</label>
                                <input type="text" name="nameDriver" id="nameDriver" required/>
                            </div>
                            <div class="form-group">
                                <label for="lastnameDriver">Apellidos</label>
                                <input type="text" name="lastnameDriver" id="lastnameDriver" required/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="idDriver">Cédula</label>
                            <input type="text" name="idDriver" id="idDriver" minlength="9" maxlength="9" pattern="\d*" title= "No digite Guiones ni Espacios en blanco"required/>
                        </div>
                            <div class="form-group">
                                <label for="school">Centro Educativo</label>
                                <div class="form-select">
                                    <select name="school" id="school" required>
                                        <option disabled value=""  selected hidden>Seleccione una opción</option>
                                        <option value="1">Anglo American School</option>
                                        <option value="2">Colegio Internacional Canadiense</option>
                                        <option value="3">San Lorenzo School</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="routeDriver">Ruta</label>
                                <div class="form-select">
                                    <select name="routeDriver" id="routeDriver" required>
                                        <option disabled value=""  selected hidden>Seleccione una opción</option>
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="busDriver">Bus</label>
                                <div class="form-select">
                                    <select name="busDriver" id="busDriver" required>
                                        <option disabled value=""  selected hidden>Seleccione una opción</option>
                                        <option value="1">07</option>
                                        <option value="2">20</option>
                                        <option value="3">38</option>
                                        <option value="4">14</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phoneDriver">Télefono Celular</label>
                            <input type="tel" name="phoneDriver" id="phoneDriver" minlength="8"/>
                        </div>
                        <div class="form-group">
                            <label for="emailDriver">Correo Eléctronico</label>
                            <input type="email" name="emailDriver" id="emailDriver" />
                        </div>
                        <div class="form-submit">
                            <input type="submit" value="Cancelar" class="submit" name="reset" id="reset" />
                            <input type="submit" value="Crear" class="submit" name="submit" id="submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>