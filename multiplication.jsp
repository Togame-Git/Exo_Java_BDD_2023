<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Table de multiplication</title>
</head>
<body bgcolor="white">
    <h1>exo 7</h1>
    <form action="#" method="post">
        <label for="inputNombre">Saisir un nombre : </label>
        <input type="text" id="inputNombre" name="nombre">
        <input type="submit" value="Afficher la table">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String nombreStr = request.getParameter("nombre"); %>

    <%-- Vérification de l'existence de la valeur --%>
    <% if (nombreStr != null && !nombreStr.isEmpty()) { %>

        <%-- Convertir la valeur en entier --%>
        <% int nombre = Integer.parseInt(nombreStr); %>

        <%-- Afficher la table de multiplication --%>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Multiplier par</th>
                <th>Résultat</th>
            </tr>
            
            <% for (int i = 1; i <= 10; i++) { %>
                <tr>
                    <td><%= nombre %></td>
                    <td><%= i %></td>
                    <td><%= nombre * i %></td>
                </tr>
            <% } %>
        </table>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
