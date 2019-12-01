<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asistente.aspx.cs" Inherits="WAppTransporteEstudiantes.Asistente" %>

<!DOCTYPE html>

<html lang="es">
<head runat="server">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Agregar Asistentes</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="css/styleAsistente.css" rel="stylesheet" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<script type="text/javascript">
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();
  var actions = $("table td:last-child").html();
  // Append table with add row form on add new button click
    $(".add-new").click(function(){
    $(this).attr("disabled", "disabled");
    var index = $("table tbody tr:last-child").index();
    var row = 
      '<tr>' + '<td><input type="text" class="form-control" name="name" id="name"></td>' +
      '<td><input type="text" class="form-control" name="school" id="school"></td>' +
      '<td><input type="text" class="form-control" name="bus" id="bus"></td>' +
      '<td style="text-align: center;" >' + actions + '</td>' +'</tr>';
      $("table").append(row);   
    $("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
        $('[data-toggle="tooltip"]').tooltip();
    });
  // Add row on add button click
  $(document).on("click", ".add", function(){
    var empty = false;
    var input = $(this).parents("tr").find('input[type="text"]');
        input.each(function(){
      if(!$(this).val()){
        $(this).addClass("error");
        empty = true;
      } else{
                $(this).removeClass("error");
            }
    });
    $(this).parents("tr").find(".error").first().focus();
    if(!empty){
      input.each(function(){
        $(this).parent("td").html($(this).val());
      });     
      $(this).parents("tr").find(".add, .edit").toggle();
      $(".add-new").removeAttr("disabled");
    }   
    });
  // Edit row on edit button click
  $(document).on("click", ".edit", function(){    
        $(this).parents("tr").find("td:not(:last-child)").each(function(){
      $(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
    });   
    $(this).parents("tr").find(".add, .edit").toggle();
    $(".add-new").attr("disabled", "disabled");
    });
  // Delete row on delete button click
  $(document).on("click", ".delete", function(){
        $(this).parents("tr").remove();
    $(".add-new").removeAttr("disabled");
    });
});
</script>
    


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

<div class="w3-content" style="max-width:2000px;margin-top:46px">

<div class="container">
  <div class="table-wrapper">
    <div class="table-title">
      <div class="row">
        <div class="col-sm-8">
          <h2>Perfiles <b>Asistente</b></h2>
        </div>
        <div class="col-sm-4">
          <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i>Agregar</button>
        </div>
      </div>
    </div>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th >Nombre</th>
          <th>Colegio</th>
          <th>Bus #</th>
          <th style="text-align: center;"><a class="add-new" data-toggle="tooltip"><i class="material-icons">&#xe7fe;</i></a></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>Alexa Chaves Vargas</td>
          <td>San Lorenzo</td>
          <td>13</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>
        <tr>
          <td>Carlos Araya Arias</td>
          <td>Anglo American School</td>
          <td>07</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit"title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>
        <tr>
          <td>Carolina Chávez Acosta</td>
          <td>San Lorenzo</td>
          <td>11</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>
        <tr>
          <td>María  Montoya Suárez</td>
          <td>San Lorenzo</td>
          <td>48</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>
        <tr>
          <td>Sophia Mora Parra</td>
          <td>Anglo American School</td>
          <td>57</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>  
        <tr>
          <td>Pablo Vargas Hernández</td>
          <td>Colegio Internacional Canadiense</td>
          <td>34</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>  
        <tr>
          <td>Teresa Delgado Mendoza</td>
          <td>Colegio Internacional Canadiense</td>
          <td>22</td>
          <td>
            <a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
          </td>
        </tr>          
      </tbody>
    </table>
  </div>
</div>   

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