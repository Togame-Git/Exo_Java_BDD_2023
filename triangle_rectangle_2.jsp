<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Left Star Pattern</title>
</head>
<body bgcolor="white">
    <h1>Left Star Pattern</h1>

    <%-- Java code equivalent to Left Star Pattern --%>
    <%
        int row = 6;
        for (int i = 0; i < row; i++) {
            for (int j = 2 * (row - i); j >= 0; j--) {
                out.print("&nbsp;");  // HTML non-breaking space for indentation
            }
            for (int j = 0; j <= i; j++) {
                out.print("* ");
            }
            out.println("<br>");
        }
    %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
