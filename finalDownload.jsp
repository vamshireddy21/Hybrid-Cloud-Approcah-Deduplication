<%@ page import="java.sql.*"%>
<%@ page import="databaseconnection.*,java.io.*"%>

<%
    String fid=request.getParameter("fid");

    String ckey=request.getParameter("ckey");
	String fname=null;
	 
	     try{
		 
		 Connection con=databasecon.getconnection();
		 PreparedStatement ps =con.prepareStatement("select AES_DECRYPT(fdata,'"+ckey+"'),fname from servicecloud where fid ='"+fid+"'");
		 ResultSet rs = ps.executeQuery();
		 while(rs.next())
		 {
		 fname=rs.getString(2);
	
			String filename =fname;
		
			byte[] ba = rs.getBytes(1);
		
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+".txt\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
		
			//session.removeAttribute("file");
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
		
		
%>