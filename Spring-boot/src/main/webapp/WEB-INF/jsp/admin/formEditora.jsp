<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/index.css">

<title>Cadastrar Editoras</title>
</head>

<body>

	<%@ include file="header.jsp"%>

	<main class="main mb-5">

		<div class="container bg-light mt-4 rounded shadow-1">
			<div class="row">
				<div class="container-fluid">
					<form:form action="${s:mvcUrl('EC#createEditora').build()}"
						method="POST" modelAttribute="editora">
						<div class="row m-5 d-flex justify-content-center shadow-1">
							<div class="col-sm-12 col-md-6 p-2 ">

								<label for="nome">Nome:</label>
								<form:input path="descricao" class="form-control" />


								<form:select path="status" class="form-control mt-3">
									<form:option value="true" label="Ativo" />
									<form:option value="false" label="Inativo" />
								</form:select>

								<button class="btn btn-md btn-block btn-success mt-5 mb-5"
									type="submit">Cadastrar</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>

			<div class="row">
				<div class="container w-100 m-5 shadow-1">
					<h3 class="text-center p-2">Editoras cadastradas</h3>
					<div class="container-fluid  table-responsive-md">
						<table
							class="table table-sm table-hover table-bordered text-center">
							<thead class="thead-dark">
								<tr>
									<th>Nome:</th>
									<th>Status:</th>
									<th>Editar</th>
									<th>Excluir</th>
								</tr>
							</thead>

							<tbody>
								<c:forEach items="${registros}" var="reg">
									<tr>
										<td>${reg.descricao}</td>
										<td>${reg.status}</td>
										<td><button class="btn-edite"></button></td>
										<!--<td><button class="btn-delete"></button></td> -->
										<td><a class="btn-excluir" href="${s:mvcUrl('EC#ExcluirEditora').arg(0, reg.id).build()}">Excluir</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</main>

	<%@ include file="footer.jsp"%>
</body>

</html>