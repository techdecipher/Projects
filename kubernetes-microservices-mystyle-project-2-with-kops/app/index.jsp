<%@ page import="java.sql.*, java.net.*" %>
<html>
<head><title>SimpleDecipher App</title></head>
<body>
<h2>Welcome to SimpleDecipher Web App</h2>

<%
try {
    // MySQL connectivity check
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://vprodb:3306/mydb", "root", "dbpass");
    out.println("<p>✅ Connected to MySQL</p>");
    conn.close();
} catch(Exception e) {
    out.println("<p>❌ MySQL Error: " + e + "</p>");
}

try {
    // Memcache DNS check
    InetAddress memcache = InetAddress.getByName("vprocache01");
    out.println("<p>✅ Memcache DNS Resolved: " + memcache.getHostAddress() + "</p>");
} catch(Exception e) {
    out.println("<p>❌ Memcache Error: " + e + "</p>");
}

try {
    // RabbitMQ DNS check
    InetAddress mq = InetAddress.getByName("vpromq01");
    out.println("<p>✅ RabbitMQ DNS Resolved: " + mq.getHostAddress() + "</p>");
} catch(Exception e) {
    out.println("<p>❌ RabbitMQ Error: " + e + "</p>");
}
%>

</body>
</html>

