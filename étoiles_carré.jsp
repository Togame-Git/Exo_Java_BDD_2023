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

    <%-- Afficher le carré d'étoiles avec un espace entre chaque étoile --%>
    <%
        int cpt = Integer.parseInt(valeur);
        for (int i = 0; i < cpt; i++) {
            for (int j = 0; j < cpt; j++) {
    %>
                <%= "*" %>&nbsp;&nbsp;&nbsp;&nbsp;
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

