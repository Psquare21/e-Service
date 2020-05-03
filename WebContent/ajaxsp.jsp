    <%@ page import="java.sql.*" %>  
    <%  
    String name=request.getParameter("val");  
    if(name==null||name.trim().equals(""))
    {  
    	out.print("<p>Please enter id!</p>");  
    }
    else
    {  
    	try
    	{  
    		out.println("hello");
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
    		PreparedStatement ps=con.prepareStatement("select * from signup where id =?");
    		ps.setString(1, name);
    		ResultSet rs=ps.executeQuery();  
      		if(!rs.isBeforeFirst()) 
      		{      
     			out.println("<p>No Record Found!</p>");   
    		}
      		else
      		{  
    			out.print("<table border='1' width='100%'>");  
    			out.print("<tr><th>Id</th><th>Name</th></tr>");  
    			while(rs.next())
    			{  
    				out.print("<tr><td>"+rs.getInt("id")+"</td><td>"+rs.getString("fname")+"</td>");
    				out.print("");
    				out.print("<input type='submit' name='action' value='Details'></form>");
    			}  
    			out.print("</table>");  
    		}  
    		con.close();  
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
    }  
    %>  