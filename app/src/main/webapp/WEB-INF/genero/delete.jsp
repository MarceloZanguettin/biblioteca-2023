<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Remover Gênero</title>
    <link rel="stylesheet" href="../../css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <h1>Remover Gênero</h1>
        <p>Tem certeza que deseja remover o gênero "${genero.nome}" ?</p>
        <form action="/genero/delete" method="post">
            <input type="hidden" name="id" value="${genero.id}">
            <br>
            <a href="/genero/list" class="btn btn-primary">Voltar</a>
            <button type="submit" class="btn btn-danger">Excluir</button>
        </form>
    </div>
    
</body>
</html>