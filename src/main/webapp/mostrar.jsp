<%@page import="VO.ProfesorVO"%>
<%@page import="DAO.ProfesorDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ 

page import="java.util.List" 

%>

	
  
  <style>
table, th, td {
  border:1px solid black;
}
</style>
  <table class="table table-hover table-inverse table-responsive">
        <thead class="thead-inverse">
            <tr>
                <th><b>ID</b></th>
                <th><b>NOMBRE</b></th>
                <th><b>DNI</b></th>
                <th><b>NRP</b></th>
                <th><b>FECHA AUSENCIA</b></th>
                <th><b>HORAS LECTIVAS</b></th>
                <th><b>HORAS COMPLEMENTARIAS</b></th>
                <th><b>MOTIVO</b></th>
                
              </tr>
            </thead>
  <%


  
	List<ProfesorVO> list=ProfesorDAO.obtenerJustificaciones();
	String s=list.get(0).getDni();
	for(ProfesorVO p : list)
	{
%>
<tr>
	<td scope="row"><%= p.getIdProfesor()%></td>
    <td><%= p.getNombre()%></td>
    <td><%= p.getDni()%></td>
    <td><%= p.getNrp()%></td>
    <td><%= p.getFechasAusen()%></td>
    <td><%= p.gethLectivas()%></td>
    <td><%= p.gethComplement()%></td>
    <td><%= p.getMotivo()%></td>
</tr>

		
	<%
	}
	%>
 
</table>
  
</body>
</html>