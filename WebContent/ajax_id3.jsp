    <%@ page import="java.sql.*" %>  
    <%  
    String name=request.getParameter("val"); 

    	try
    	{  
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
    			out.print("<table style=\"padding:10px; margin:20px \"> ");  
    			out.print("<tr><th style=\"padding:10px;\">Id</th><th></th><th style=\"padding:10px;\">Name</th></tr>");  
    			while(rs.next())
    			{  
    				out.print("<tr><td style=\"padding:10px;\">"+rs.getInt("id")+"</td><td></td><td style=\"padding:10px;\">"+rs.getString("fname")+"</td>");
    				out.print("<td><form name=\"form2\" method=\"post\" action=\"su_controller\">");
    				out.print("<input id=\"idaj\" name=\"idaj\" value=\""+ rs.getInt("id")+"\" hidden>");
    				out.print("<input type=\"submit\" name=\"action\" value=\"Details\"></form></td>");
    			}  
    			out.print("</table>");  
    		}  
    		con.close();  
    	}
    	catch(Exception e)
    	{
    		out.print(e);
    	}  
     
    %>  