<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Boucles</title>
</head>
<body bgcolor="white">
    <h1>Résultat exo 3</h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir le nombre d'étoile : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>

    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>

        <%-- Afficher le triangle rectangle inversé --%>
        <%
            // Convertir la valeur en entier
            int lignes = Integer.parseInt(valeur);

            // Boucle pour générer les lignes du triangle inversé
            for (int i = lignes; i >= 1; i--) {
                // Boucle pour générer les étoiles dans chaque ligne
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                // Passer à la ligne suivante après chaque ligne d'étoiles
                out.println("<br>");
            }
        %>

    <% } %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
