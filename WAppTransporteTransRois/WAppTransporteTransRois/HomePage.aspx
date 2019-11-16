<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="WAppTransporteTransRois.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
<style>
body {font-family: "Lato", sans-serif}
.mySlides {display: none}
</style>
<body>

    <!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-black w3-card">
    <a class="w3-bar-item w3-button w3-padding-large w3-hide-medium w3-hide-large w3-right" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Conductor</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Unidades</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Pasajeros</a>
      <a href="#" class="w3-bar-item w3-button w3-padding-large w3-hide-small">Asistentes</a>
  </div>
</div>

<!-- Page content -->
<div class="w3-content" style="max-width:2000px;margin-top:46px">

  <!-- Automatic Slideshow Images -->
  <div class="mySlides w3-display-container w3-center">
    <img src="https://www.loqqat.com/wp-content/uploads/2019/09/slider-1-Lq.jpg" style="width:100%">
    <div class="w3-display-bottommiddle w3-container w3-text-white w3-padding-32 w3-hide-small">
      <h3>Empresa de Transporte Estudiantil</h3>
      <p><b>Trans-Rois</b></p>   
    </div>
  </div>
</div>

  <!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:800px" id="band">
    <h2 class="w3-wide">TRANS-ROIS</h2>
    <p class="w3-opacity"><i>Transporte de Estudiantes</i></p>
    <p class="w3-justify">Trans-Rois es una empresa pionera en Costa Rica en el servicio de Transportes de Estudiantes, que desde 1981 hasta hoy ha logrado desarrollar y consolidar, diferentes soluciones de transporte de estudiantes para Instituciones Educativas Selectas.

Nos especializamos en la administración, de todos los servicios de transporte de estudiantes que los Centros Educartivos requieran, garantizando la seguridad y bienestar de los estudiantes en todo momento.</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>Tibas Centro, Calle Blancos (Sabanilla)</p>
        <img src="https://www.nacion.com/resizer/ri_Pt3zy5yHxoy2cd-hVrjTzWyc=/600x0/center/middle/filters:quality(100)/arc-anglerfish-arc2-prod-gruponacion.s3.amazonaws.com/public/BYBZYYDV5BHBNCZXJ2G6EI5C3Q.jpg" class="w3-round w3-margin-bottom" alt="Tibás" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Santo Domingo, Moravia</p>
        <img src="https://apollo-virginia.akamaized.net/v1/files/jyp1n60xww642-CR/image;p=full" class="w3-round w3-margin-bottom" alt="Santo Domingo" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Coronado, Tres Ríos</p>
        <img src="https://news.co.cr/wp-content/uploads/2017/04/IglesiaCoronado.jpg" class="w3-round w3-margin-bottom" alt="Coronado" style="width:60%">
      </div>
    </div>
  </div>


  <!-- The Contact Section -->
  <div class="w3-container w3-content w3-padding-64" style="max-width:800px" id="contact">
    <h2 class="w3-wide w3-center">CONTACTO</h2>
    <p class="w3-opacity w3-center"><i>Envíanos tus comentarios o dudas!</i></p>
    <div class="w3-row w3-padding-32">
      <div class="w3-col m6 w3-large w3-margin-bottom">
        <i class="fa fa-map-marker" style="width:30px"></i> San José, Costa Rica<br>
        <i class="fa fa-phone" style="width:30px"></i> Telefono:  2225-9696  <br>
        <i class="fa fa-envelope" style="width:30px"> </i> Email: cinthya@trans-rois.com<br>
      </div>
      <div class="w3-col m6">
        <form action="/action_page.php" target="_blank">
          <div class="w3-row-padding" style="margin:0 -16px 8px -16px">
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Nombre Completo" required name="NombreCompleto">
            </div>
            <div class="w3-half">
              <input class="w3-input w3-border" type="text" placeholder="Correo" required name="Correo">
            </div>
          </div>
          <input class="w3-input w3-border" type="text" placeholder="Mensaje" required name="Mensaje">
          <button class="w3-button w3-black w3-section w3-right" type="submit">ENVIAR</button>
        </form>
      </div>
    </div>
  </div>
  

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <p class="w3-medium">Redes Sociales <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">Trans-Rois</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 4000);    
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>



</body>
</html>
