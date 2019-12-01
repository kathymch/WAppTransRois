<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pasajeros.aspx.cs" Inherits="WAppTransporteEstudiantes.Passengers" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Agregar Pasajeros</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">

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
        <div class="container-fluid">
            <div class="signup-content">
                <div class="signup-form">
                    <form method="POST" class="register-form" id="register-form">
                        <h2>Datos del Estudiante</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="name">Nombre</label>
                                <input type="text" name="name" id="name" required/>
                            </div>
                            <div class="form-group">
                                <label for="apellidos">Apellidos</label>
                                <input type="text" name="apellidos" id="apellidos" required/>
                            </div>
                            <div class="form-group">
                                <label for="id">Cédula</label>
                                <input type="text" name="id" id="id" minlength="9" maxlength="9" pattern="\d*" title= "No digite Guiones ni Espacios en blanco"required/>
                            </div>
                            <div class="form-group">
                                    <label for="gender" class="radio-label">Género</label>
                                    <div class="form-radio-item" >
                                        <input type="radio" name="gender" id="male" checked>
                                        <label for="male">Masculino</label>
                                        <span class="check"></span>
                                    </div>
                                    <div class="form-radio-item">
                                        <input type="radio" name="gender" id="female">
                                        <label for="female">Feménino</label>
                                        <span class="check"></span>
                                    </div>
                                </div>
                        </div>
                        <div class="form-row">
                                <div class="form-combo">
                                        <label for="school">Centro Educativo</label>
                                        <div class="form-select">
                                            <select  name="school" id="school" required >
                                                <option disabled value=""  selected hidden>Seleccione una opción</option>
                                                <option value="1">Anglo American School</option>
                                                <option value="2">Colegio Internacional Canadiense</option>
                                                <option value="3">San Lorenzo School</option>
                                            </select>
                                            <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                        </div>   
                                    </div>
                            <div class="form-combo">
                                <label for="colegio">Nivel que Cursa</label>
                                <div class="form-select">
                                    <select name="grado" id="grado" required>
                                        <option disabled value=""  selected hidden>Seleccione una opción</option>
                                        <option value="1">Maternal</option>
                                        <option value="2">Prekinder</option>
                                        <option value="3">Kinder</option>
                                        <option value="1">Preparatoria</option>
                                        <option value="2">Primara</option>
                                        <option value="3">Secundaria</option>
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>   
                            </div>
                            <div class="form-group">
                                <label for="seccion">Sección</label>
                                <input type="text" name="seccion" id="seccion" maxlength="3" minlength="3" style="text-transform: uppercase;" pattern="[A-Za-z1-9-]{3}" title="ej 1-A"/>
                            </div>
                            <div class="form-combo">
                                <label for="colegio">Horario</label>
                                <div class="form-select">
                                    <select  name="colegio" id="colegio" required >
                                        <option disabled value="" selected hidden>Seleccione una opción</option>
                                        <option value="1">Mañana y Tarde</option>
                                        <option value="2">Mañana</option>
                                        <option value="3">Tarde</option>
                                        <option value="4">Especial</option>        
                                    </select>
                                    <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
                                </div>   
                            </div>
                            
                        </div>
                        <div class="form-row" style="width: fit-content;">
                            <div class="form-group" >
                                <label for="address">Dirección Exacta</label>
                                <textarea class="form-control" rows="2" type="text" name="address" id="address" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="phone">Télefono Celular</label>
                                <input type="tel" name="phone" id="phone" style="line-height: 3;" minlength="8"/>
                            </div>
                            <div class="form-group">
                                <label for="email">Correo Eléctronico</label>
                                <input type="email" name="email" id="email" style="line-height: 3;" />
                            </div>
                        </div>
                        <h2>Datos Encargado</h2>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="nameMother">Nombre de Encargado</label>
                                <input type="text" name="nameMother" id="nameMother" required/>
                            </div>
                            <div class="form-group">
                                <label for="lastnameMother">Apellidos</label>
                                <input type="text" name="lastnameMother" id="lastnameMother" required/>
                            </div>
                            <div class="form-group">
                                <label for="idMother">Cédula</label>
                                <input type="text" name="idMother" id="idMother" minlength="9" maxlength="9" pattern="\d*" title= "No digite Guiones ni Espacios en blanco"required/>
                            </div>
                            <div class="form-group">
                                <label for="phoneMother">Télefono Celular</label>
                                <input type="tel" name="phoneMother" id="phoneMother" minlength="8" required/>
                            </div>
                        </div>
                        <div class="form-row" style="width: fit-content;">
                            <div class="form-group">
                                <label for="houseMother">Télefono de Habitación</label>
                                <input type="tel" name="houseMother" id="houseMother" style="line-height: 3;" minlength="8"/>
                            </div>
                            <div class="form-group">
                                <label for="officeMother">Télefono Oficina</label>
                                <input type="tel" name="officeMother" id="officeMother" style="line-height: 3;" minlength="8"/>
                            </div>
                            <div class="form-group">
                                <label for="emailMother">Correo Eléctronico</label>
                                <input type="emailMother" name="emailMother" id="emailMother" style="line-height: 3;" />
                            </div>
                            <div class="form-group" >
                                <label for="workaddressMother">Dirección de Trabajo</label>
                                <textarea class="form-control" rows="2" type="text" name="workaddressMother" id="workaddressMother" required></textarea>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-radio">
                                <label for="contactMother" class="radio-label" style="padding: 0 15px; ">Método de Contacto</label>
                                <div class="form-radio-item">
                                    <input type="radio" name="contactMother" id="1M" checked>
                                    <label for="1M">Celular</label>
                                    <span class="check"></span>
                                </div>
                                <div class="form-radio-item">
                                        <input type="radio" name="contactMother" id="2M">
                                        <label for="2M">Oficina</label>
                                        <span class="check"></span>
                                </div>
                                <div class="form-radio-item">
                                        <input type="radio" name="contactMother" id="3M">
                                        <label for="3M">Habitación</label>
                                        <span class="check"></span>
                                    </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="contactMother" id="4M">
                                    <label for="4M">Email</label>
                                    <span class="check"></span>
                                </div>
                                <div class="form-radio-item">
                                    <input type="radio" name="contact" id="5M">
                                    <label for="5M">Todos</label>
                                    <span class="check"></span>
                                </div>
                            </div> 
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>

    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>