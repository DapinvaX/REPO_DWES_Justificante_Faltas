<%@page import="VO.ProfesorVO"%>
<%@page import="DAO.ProfesorDAO"%>


<?xml version="1.0" encoding="UTF-8" ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Justificante de Faltas</title>
</head>
<body>

	<%
		/*

		ProfesorVO profesor = new ProfesorVO();
	
		String nombre = request.getParameter("nombre"); 
	
		String dni = request.getParameter("dni"); 
	
		String nrp = request.getParameter("nrp"); 
		
		String fAusencia = request.getParameter("inpFechasFalta");
		
		String hLectivas = request.getParameter("inpHorasL");
		
		String hComplementarias = request.getParameter("inpHorasC");
		
		System.out.println(nombre);
		System.out.println(nrp);
		System.out.println(fAusencia);
		System.out.println(hLectivas);
		System.out.println(hComplementarias);
		
		*/		
 
		
		
    %>


<div class="container" style="margin-left: 600px;text-align: center; border-style:double;width: 850px; height: 1150px;">

        <div class="row">
            <div class="col-md-12" style="text-align: center;">
                <h1 style="font-weight: bold;"> Formulario de Faltas de Profesores</h1>
            </div>
        </div>


        <div class="form-group">
	
	 		<form action="guardarProfesor.jsp">

	
	            <div class="row" style="margin-top: 100px;">
	
	                <div class="col-md-6">
	                    <div class="col-md-3"><b>Nombre:</b></div>
	                    <div class="col-md-3"><input type="text" style="width: 300px; text-align: center;" class="form-control" name="nombre" id="inpNombre" aria-describedby="helpId" placeholder="Introduzca el nombre y los apellidos"></div>
	
	                </div>
	
	
	                <div class="col-md-6" style="text-align: justify;">
	                    <label for=""><b>DNI:</b></label>
	                    <input type="text" style="width: 300px; text-align: center;" class="form-control" name="inpDNI" id="inpDNI" aria-describedby="helpId" placeholder="Introduzca el DNI">
	
	                </div>
	            </div>
	
	            <div class="row" style="margin-top: 100px;">
	
	                <div class="col-md-6">
	                    <div class="col-md-3"><b>NRP:</b></div>
	                    <div class="col-md-3"><input type="number" value="1000000000" min="100000000" max="9999999999" style="width: 300px; text-align: center;" class="form-control" name="nrp" id="inpNRP" aria-describedby="helpId" placeholder="Introduzca el NRP"></div>
	
	                </div>
	
	
	                <div class="col-md-6" style="text-align: justify;">
	
	                    <label for=""><b>Fecha/s de ausencia: </b></label><br>
	                    <!-- <input type="text" class="form-control" name="fecha" id="inpFechasFalta" placeholder="Introduzca la fecha"> -->
						<input type="date" class="form-control" name="fecha" id="inpFechasFalta" value="2000-01-01" min="2000-01-01" max="2030-12-31"">
						
						
	                </div>
	            </div>
	
	            <div class="row" style="margin-top: 100px;">
	
	                <div class="col-md-6" style="text-align: justify;">
	                    <div class="col-md-3"><b>Horas Lectivas:</b></div>
	                    <div class="col-md-3"><input type="number" style="width: 60px; text-align: center;" min="0" max="6" class="form-control" name="horasLectivas" id="inpHorasL" aria-describedby="helpId" placeholder="1"></div>
	
	                </div>
	
	
	                <div class="col-md-6" style="text-align: justify;">
	                    <label for=""><b>Horas Complementarias: </b></label>
	                    <input type="number" style="width: 70px; text-align: center;" min="0" max="30" class="form-control" name="horasComplementarias" id="inpHorasC" aria-describedby="helpId" placeholder="1">
	
	                </div>
	            </div>
				
				<div class="row" style="margin-top: 150px;">
					<div class="col-md-6" style="text-align: left;">
						<label><b>Asignatura</b></label>
					<!--  	
					<input type="text" class="form-control" name="asignatura" id="inpAsignatura" style="width: 400px; text-align: center;" placeholder="Introduzca la asignatura"> 
					-->
						<select name="asignatura" id="inpAsignatura" style="height:30px;">
							<option value="Ciencias de la Computación" >Ciencias de la Computación</option>
							<option value="Ciencias" selected>Ciencias</option>
							<option value="Ciencias de la lengua e historia">Ciencias de la lengua e historia</option>
							<option value="Ciencias del deporte">Ciencias del deporte</option>
							<option value="Idiomas extrangeros">Idiomas extrangeros</option>
							
						</select>
					</div>
					<div class="col-md-6" style="text-align: left;">
						<label for=""><b>Motivo:</b> </label>
						<textarea class="form-control" name="TAMotivo" id="TAMotivo" rows="10" cols="50" placeholder="Escriba una breve descripción sobre los motivos de su ausencia."></textarea>
					
					</div>
				
				</div>
				
	            <div class="row" style="margin-top: 100px;">
	                <div class="col-md-6" style="text-align: left;">
	                    <input name="btnAceptar" id="btnAceptar" style="margin-top: 50px;" class="btn btn-primary" type="submit" value="Aceptar">
	                </div>
	                <div class="col-md-6" style="text-align: left;">
	                    
	                </div>
	
	                <input type="hidden" id="fechaActual" onclick="type='text/javascript'; DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern('dd/MM/yy'); System.out.println('dd/MM/yy'-> +dtf2.format(LocalDateTime.now()));";>
	
	            </div>
	         </form>
        </div>
    </div>







    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


</body>
</html>