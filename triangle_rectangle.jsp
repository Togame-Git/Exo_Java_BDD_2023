<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Scanner" %>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor="white">
    <h1>Résultat exo 1</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoiles : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>

    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>

        <%-- Afficher le triangle rectangle --%>
        <%
            // Convertir la valeur en entier
            int taille = Integer.parseInt(valeur);

            // Boucle pour générer les lignes du triangle
            for (int i = 0; i < taille; i++) {
                // Boucle pour générer les étoiles dans chaque ligne
                for (int j = 0; j < i; j++) {
                    out.print("* ");
                }
                // Passer à la ligne suivante après chaque ligne d'étoiles
                out.println();
            }
        %>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
