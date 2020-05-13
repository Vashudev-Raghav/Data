<html>
<head>
</head>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<body>
<% 
	String name=request.getParameter("name");
	String psw=request.getParameter("psw");
	String pswr=request.getParameter("pswr");
	String dob=request.getParameter("dob");
	String sex=request.getParameter("sex");
	try
	{
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
		PreparedStatement ps=con.prepareStatement("insert into student13 values(?,?,?,?,?)");
		ps.setString(1,name);
		ps.setString(2,psw);
		ps.setString(3,pswr);
		ps.setString(4,dob);
		ps.setString(5,sex);
		ps.execute();
		HttpSession sess=request.getSession();  
	    sess.setAttribute("name",name);  
		//System.out.println("Session Created");
		//out.println(" Data Inserted Successfully");
		response.sendRedirect("Welcome.jsp");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</body>
</html>