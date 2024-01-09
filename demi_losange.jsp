
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Demi-losange</title>
</head>
<body bgcolor="white">
    <h1>exo 6 </h1>
    <form action="#" method="post">
        <label for="inputValeur">Saisir la hauteur du demi-losange : </label>
        <input type="text" id="inputValeur" name="valeur">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la valeur saisie par l'utilisateur --%>
    <% String valeur = request.getParameter("valeur"); %>

    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>

        <%-- Afficher le demi-losange --%>
        <%
            // Convertir la valeur en entier
            int hauteur = Integer.parseInt(valeur);

            // Boucle pour générer les lignes du demi-losange
            for (int i = 1; i <= hauteur; i++) {
                // Boucle pour générer les étoiles dans chaque ligne
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                // Passer à la ligne suivante après chaque ligne d'étoiles
                out.println("<br>");
            }
            
            // Boucle pour générer les lignes inversées du demi-losange
            for (int i = hauteur - 1; i >= 1; i--) {
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
