<%@ page import="java.sql.*,java.io.*,java.util.*"%>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection c=DriverManager.getConnection("Jdbc:Odbc:OnlineMobile");
Statement s=c.createStatement();
ResultSet r,r1,r2;
int flag=0;
%>