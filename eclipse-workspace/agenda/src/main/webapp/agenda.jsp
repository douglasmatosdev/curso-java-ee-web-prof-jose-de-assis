<%@page import="model.JavaBeans"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
// Teste de recebimento da lista
//for (int i = 0; i < lista.size(); i++) {
//	out.println(lista.get(i).getIdcon());
//	out.println(lista.get(i).getNome());
// 	out.println(lista.get(i).getFone());
// 	out.println(lista.get(i).getEmail());
// }
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<title>Agenda de contatos</title>
<link rel="stylesheet" href="style.css" />
<link rel="icon" href="imagens/favicon.ico" />
</head>
<body>
	<h1>Agenda de contatos</h1>
	<a href="novo.html" class="Botao1">Novo contato</a>
	<table id="tabela">
		<tr>
			<th>Id</th>
			<th>Nome</th>
			<th>Fone</th>
			<th>Email</th>
			<th>Opções</th>
		</tr>
		<thead>
		</thead>
		<tbody>
			<%
			for (int i = 0; i < lista.size(); i++) {
			%>
			<tr>
				<td><%=lista.get(i).getIdcon()%></td>
				<td><%=lista.get(i).getNome()%></td>
				<td><%=lista.get(i).getFone()%></td>
				<td><%=lista.get(i).getEmail()%></td>
				<td><a href="select?idcon=<%=lista.get(i).getIdcon()%>" class="Botao1">Editar</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>