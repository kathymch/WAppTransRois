<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Horarios.aspx.cs" Inherits="WAppTransporteEstudiantes.Horarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Horarios</title>
    <link href="css/styleHorarios.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
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


    <form id="form1" runat="server">
  <div class="auto-style1">
        <div class="auto-style2">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Horarios Escuelas:</b></h2></div>
                    <div class="col-sm-4">
                        <button type="button" class="btn btn-info add-new"><i class="fa fa-plus"></i> Añadir</button>
                    </div>
                </div>
            </div>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Ruta</th>
                        <th>Chofer</th>  
                        <th>Ruta #</th>
                        <th>Bus #</th>  
                        <th>Horario</th>  
                        <th>Agregar</th>  
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Curridabat y alrededores</th>
                        <th>César Varela Sanchéz</th>
                        <th>1</th>     
                        <th>07</th>     
                        <th>Mañana-Tarde-E</th>

                        <td>
							<a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>

                    <tr>
                        <th>Santo Domingo - Moraviar</th>
                        <th>Juan Villareal Rojas</th>
                        <th>2</th>     
                        <th>57</th>     
                        <th>Mañana-Tarde</th>    
                        <td>
							<a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>

                    <tr>
                        <th>Coronado - Tres Ríos</th>
                        <th>Alfonso González Ríos</th>
                        <th>3</th>     
                        <th>39</th>     
                        <th>Mañana-Tarde-E</th>    

                        <td>
							<a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                            <a class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <a class="delete" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>      

                    <tr>
                        <th>Calle Blancos - Sabanilla</th>
                        <th>Jorge Espinosa Solano</th>
                        <th>4</th>     
                        <th>09</th>     
                        <th>Mañana-Tarde</th>     
                     
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
        </form>

    <script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	var actions = $("table td:last-child").html();
	// Append table with add row form on add new button click
    $(".add-new").click(function(){
		$(this).attr("disabled", "disabled");
		var index = $("table tbody tr:last-child").index();
        var row = '<tr>' +
            '<td><input type="text" class="form-control" name="ruta" id="ruta"></td>' +
            '<td><input type="text" class="form-control" name="chofer" id="chofer"></td>' + '<td><input type="text" class="form-control" name="Ruta#" id="cantidadderutas"></td>'+
			'<td><input type="text" class="form-control" name="Bus#" id="cantidadderutas"></td>'+'<td><input type="text" class="form-control" name="Horario" id="cantidadderutas"></td>'+'<td>' + actions + '</td>' +
        '</tr>';
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

        </body>
    </html>