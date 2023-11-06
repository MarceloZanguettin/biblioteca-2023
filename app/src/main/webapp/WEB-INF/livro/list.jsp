<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Livros</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Livros</h1>
        <a href="/livro/insert" class="btn btn-primary">Novo Gênero</a>
        <table class="table">
            <tr>
                <th>Id</th>
                <th>Título</th>
                <th>ISBN</th>
                <th>Gênero</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="item" items="${livros}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.isbn}</td>
                    <td>${item.genero.nome}</td>
                    <td>
                        <a href="/livro/update?id=${item.id}" class="btn btn-warning">Editar</a>
                        <a href="/livro/update?id=${item.id}" class="btn btn-warning">Excluir</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
    
</body>
</html>