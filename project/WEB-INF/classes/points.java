
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class for Servlet: points
 *
 */
 public class points extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
	 String str1,str2;
		//int point1,point2 ;
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public points() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 
			try {
					response.setContentType("application/x-java-serialized-object");
					InputStream in = request.getInputStream();
					ObjectInputStream inputFromApplet = new ObjectInputStream(in);
					
					String p1 = (String ) inputFromApplet.readObject();
					String  p2 = (String ) inputFromApplet.readObject();
				    String points1 = (String)inputFromApplet.readObject();
					String points2 = (String)inputFromApplet.readObject();
				  
					int point1 = Integer.parseInt(points1);
					int point2 = Integer.parseInt(points2);
					
					    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ;
						Connection c = DriverManager.getConnection("jdbc:odbc:abc","root","root");
						Statement s = c.createStatement();
						Statement sq = c.createStatement();
						sq.execute("insert into playerpoints values('"+p2+"',"+point2+",'"+p1+"')");
						s.execute("insert into playerpoints values('"+p1+"',"+point1+",'"+p2+"')");
				} catch (Exception e) {
			e.printStackTrace();
		}
				/*try {
					
					 
					 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver") ;
						Connection c = DriverManager.getConnection("jdbc:odbc:abc","root","root");
						//Statement s = c.createStatement();
						Statement sq = c.createStatement();
						sq.execute("insert into p values('"+str1+"')");
						//s.execute("insert into playerpoints values('"+str2+"',"+point2+",'"+str1+"')");
						
				} catch (Exception e) {
			e.printStackTrace();
		}*/
				
	}   	  	    
}