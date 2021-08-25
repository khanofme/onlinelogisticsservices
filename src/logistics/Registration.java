package logistics;


import java.io.IOException;
import java.io.PrintWriter;
//import java.io.PrintWriter;
import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
     //private ResultSet rs=null;
     //private Connection con=null;
     //private PreparedStatement ps=null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Registration() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
/**String ui= request.getParameter("txtuserID1");
		con=CrudOperation.createConnection();
		try {
			ps=con.prepareStatement(strsql);
			ps.setString(1,ui);
			rs=ps.executeQuery();
			System.out.println(ps);
			if(rs.next())
			{
				PrintWriter pw=response.getWriter();
				pw.println("userid exists");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println(e);
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	long ph=Long.parseLong(request.getParameter("phnnum1"));
	String ui=request.getParameter("txtuserid1");
	String upass=request.getParameter("txtpassword1");
	String uname=request.getParameter("txtname1");
	
	String uemail=request.getParameter("txtemailid1");



	Connection con=null;
	PreparedStatement pslogin,psreg,pst=null;
	con=CrudOperation.createConnection();
	try
	{
		con.setAutoCommit(false);
		
		String strsql="select * from register where User_id=?";
		String Strlogin="insert into log_user values(?,?,?)";
	 String Strreg="insert into register values(?,?,?,?,?)";
		
		pst=con.prepareStatement(strsql);
		pst.setString(1,ui);
		ResultSet rs=pst.executeQuery();
		System.out.println(pst);
		if(rs.next())
		{
			PrintWriter pw=response.getWriter();
			pw.println("userid exists");
		}
	 pslogin=con.prepareStatement(Strlogin);
	pslogin.setString(1,ui);
	pslogin.setString(2,upass);
	pslogin.setString(3,"usr");
	int rw=pslogin.executeUpdate();
	psreg=con.prepareStatement(Strreg);
	psreg.setString(1,ui);
	psreg.setString(2,upass);
	psreg.setString(3,uname);
	
	psreg.setString(4,uemail);
	psreg.setLong(5,ph);

	
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
