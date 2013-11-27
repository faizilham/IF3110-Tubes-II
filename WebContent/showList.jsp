<%@page import="java.util.ArrayList"%>
<%@page import="kelas.*"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><% out.println("Kategori: " + request.getAttribute("kategori")); %></title>
</head>
<body>
	<div class="page_container">
	<%@ include file="template/template.jsp" %> 
		<% 
			out.println("<h1>Kategori: " + request.getAttribute("kategori") + "</h1>");
		
			ArrayList<Barang> barangs = (ArrayList<Barang>) request.getAttribute("barangs");
			int awal = (request.getParameter("start") == null ? 0 : Integer.parseInt(request.getParameter("start")));
			int no = 0;
			for(Barang b: barangs){
				if(no < awal){
					no++;
					continue;
				}
				%>
				
				<%
				if(no - awal == 9){
					break;
				}
				no++;
			}
			%>
			<div class="pagination"> Halaman: 
			<%
			for(int i=0;i<Math.ceil(barangs.size()/10f);i++){
				if(i * 10 == awal){
					out.println("[" + (i+1) + "]");
				} else {
					%>	
					<a href="showList?cat=<%= request.getParameter("cat") %>&start=<%= i*10 %>"><%= (i+1) %></a>
					<%
				}
			}
			%>
			</div>
			<%
		%>
	</div>
</body>
	<script src="transaction.js"></script>
</html>