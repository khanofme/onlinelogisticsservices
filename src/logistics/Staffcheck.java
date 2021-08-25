package logistics;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Staffcheck
 */
@WebServlet("/Staffcheck")
public class Staffcheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;  
	HttpSession hs=null;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Staffcheck() {
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
	
		String a= request.getParameter("Staffid");
		String b=request.getParameter("password");
		String c=request.getParameter("urole");
		String strsql="select * from log_staff where Staff_id=? and Password=? and Designation=?";
		con=CrudOperation.createConnection();
		try{
			hs=request.getSession();
			hs.setAttribute(c,a);
			ps=con.prepareStatement(strsql);
			ps.setString(1,a);
			ps.setString(2,b);
			ps.setString(3,c);
			System.out.println(ps);
			rs=ps.executeQuery();
			if(rs.next())
			{
				String utype=rs.getString("Designation");
				if(utype.equals("manager"))
				{
					response.sendRedirect("/logistics/jsp/Manager.jsp");
				}
				if(utype.equals("General Manager"))
				{
					response.sendRedirect("/logistics/jsp/GeneralManager.jsp");
				}
				if(utype.equals("Delivery boy"))
				{
					response.sendRedirect("/logistics/jsp/DeliveryBoy.jsp");
				}
				
			}
			else
			{
				response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=<b><font color:'black'><h2>invalid Staffid or password</h2></font></b>");
			}
		}
		catch(SQLException se){
			System.out.println(se);
		}
				
			}
	
	
	
	}

