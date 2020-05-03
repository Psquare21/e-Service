    <%@ page import="java.sql.*" %>  
    <%  
    String name=request.getParameter("val");  
   
    	try
    	{  
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
    		PreparedStatement ps=con.prepareStatement("select * from signup where email=?");  
    		ps.setString(1, name);
    		ResultSet rs=ps.executeQuery();  
      		if(rs.next()) 
      		{      
     			out.println("Email Id Already Used");   
    		}
   
    		con.close();  
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
     
    %>  