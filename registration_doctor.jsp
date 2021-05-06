<%@ page language="java" import="java.net.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<html>
    <body>
        <%
        String s1=request.getParameter("nm1");
        String s2=request.getParameter("nm2");
        String s3=request.getParameter("nm3");
        String s4=request.getParameter("nm4");
        String s5=request.getParameter("nm5");
        String s6=request.getParameter("nm6");
        String s7=request.getParameter("nm7");
        String s8=request.getParameter("nm8");
        String s9=request.getParameter("nm9");
        String s10=request.getParameter("nm10");
        String s11=request.getParameter("nm11");
        String s12=request.getParameter("nm12");

        Connection con=null;
        Statement s=null;
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","system");

            PreparedStatement ps=con.prepareStatement("insert into RegistrationDoctor values(?,?,?,?,?,?,?,?,?,?,?,?)");
            ps.setstring(1,s1);
            ps.setstring(2,s2);
            ps.setstring(3,s3);
            ps.setstring(4,s4);
            ps.setstring(5,s5);
            ps.setstring(6,s6);
            ps.setstring(7,s7);
            ps.setstring(8,s8);
            ps.setstring(9,s9);
            ps.setstring(10,s10);
            ps.setstring(11,s11);
            ps.setstring(12,s12);
            ps.executeUpdate();
        }
        catch(Exception se){out.println(se);}
        %>
        <p>You have been registered successfully</p>
    </body>
</html> 