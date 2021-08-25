package logistics;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GMProfile
 */
@WebServlet("/GMProfile")
public class GMProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GMProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String a=request.getParameter("Staffid");
		String b=request.getParameter("password");
		String c=request.getParameter("urole");
		String d=request.getParameter("name");
		String e=request.getParameter("gender");
		String f=request.getParameter("addr");
		String g=request.getParameter("city");
		String h=request.getParameter("state");
		String i=request.getParameter("country");
		int j=Integer.parseInt(request.getParameter("pin"));
		String k=request.getParameter("email");
		long l=Long.parseLong(request.getParameter("phnnumb"));
		String m=request.getParameter("dobs");
		java.util.Date ud=null;
		java.sql.Date sd=null;
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		try
		{
			ud=sdf.parse(m);
		}
			catch(ParseException pe)
			{
				System.out.println(pe);
			}
			sd=new java.sql.Date(ud.getTime());

			Connection con=null;
			PreparedStatement pslogin,psreg=null;
			con=CrudOperation.createConnection();
			try
			{
				con.setAutoCommit(false);
				String Strlogin="insert into log_staff values(?,?,?)";
		 		String Strreg="insert into staff_register values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		 		pslogin=con.prepareStatement(Strlogin);
				pslogin.setString(1,a);
				pslogin.setString(2,b);
				pslogin.setString(3,c);
				int rw=pslogin.executeUpdate();
				psreg=con.prepareStatement(Strreg);
				psreg.setString(1,a);
				psreg.setString(2,b);
				psreg.setString(3,c);
				psreg.setString(4,d);
				psreg.setString(5,e);
				psreg.setString(6,f);
				psreg.setString(7,g);
				psreg.setString(8,h);
				psreg.setString(9,i);
				psreg.setInt(10,j);
				psreg.setString(11,k);
				psreg.setLong(12,l);
				psreg.setDate(13,sd);

				int rw1=psreg.executeUpdate();
				if(rw>0 && rw1>0)
				{
					System.out.println("row inserted successfully");
					con.commit();
					response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=registration done successfully");
				}
			}
				catch(SQLException se)
				{
					System.out.println(se);	
				}
	
	
	
	}

}
