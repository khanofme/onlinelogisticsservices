package logistics;
import java.sql.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logincheck
 */
@WebServlet("/logincheck")
public class logincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;  
	HttpSession hs=null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public logincheck() {
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
		String ui= request.getParameter("txtuserID");
		String upass=request.getParameter("txtpassword");
		String strsql="select * from log_user where User_id=? and Password=?";
		con=CrudOperation.createConnection();
		try{
			hs=request.getSession();
			hs.setAttribute("usr",ui);
			ps=con.prepareStatement(strsql);
			ps.setString(1,ui);
			ps.setString(2,upass);
			System.out.println(ps);
			rs=ps.executeQuery();
			if(rs.next())
			{
				String utype=rs.getString("Urole");
				if(utype.equals("manager"))
				{
					response.sendRedirect("/logistics/jsp/manager.jsp");
				}
				if(utype.equals("usr"))
				{
					response.sendRedirect("/logistics/jsp/purpose.jsp");
				}
			}
			else
			{
				response.sendRedirect("/logistics/jsp/HomePage.jsp?msg=<b><font color:'red'>invalid userid or password</font></b>");
			}
		}
		catch(SQLException se){
			System.out.println(se);
		}
				
			}
	}


