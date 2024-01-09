<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

        <%-- Boucle for pour afficher une ligne d'étoiles --%>
        <%
            int cpt = Integer.parseInt(valeur);
            for (int i = 1; i <= cpt; i++) {
        %>
                <%= "*" %>
        <%
            }
        %>
        <br/>

        <%-- Afficher le carré d'étoiles en utilisant deux boucles --%>
        <%
            for (int i = 1; i <= cpt; i++) {
                for (int j = 1; j <= cpt; j++) {
        %>
                    <%= "*" %>
        <%
                }
        %>
                <br/>
        <%
            }
        %>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

