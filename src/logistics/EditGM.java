package logistics;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class EditGM
 */
@WebServlet("/EditGM")
public class EditGM extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private Connection con=null;
	    private PreparedStatement ps=null;  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditGM() {
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
		String uaddr=request.getParameter("addr");
		String ucit=request.getParameter("city");
		String ustat=request.getParameter("state");
		String upin=request.getParameter("pin");
		String uemail=request.getParameter("email");
		String uphone=request.getParameter("phnnumb");
		String upas=request.getParameter("password");
		HttpSession hs=request.getSession(false);
		String ui=(String)hs.getAttribute("General Manager");
		String strupdate="update staff_register set Address=?, City=?, State=?, Pincode=?, Mobile_no=?, Email=?, Password=? where Staff_id=?";
		con=CrudOperation.createConnection();

		try
		{
		ps=con.prepareStatement(strupdate);
		ps.setString(1,uaddr);
		ps.setString(2,ucit);
		ps.setString(3,ustat);
		ps.setString(4,upin);
		ps.setString(5,uphone);
		ps.setString(6,uemail);
		ps.setString(7,upas);
		ps.setString(8, ui);
		int rw=ps.executeUpdate();
		if(rw>0)
		{
		response.sendRedirect("/logistics/jsp/ViewProfileGM.jsp");
		}

		}
		catch(SQLException se)
		{
		System.out.println(se);
		}

	}

}
