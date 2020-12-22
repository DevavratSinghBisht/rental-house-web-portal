package AddServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String location = request.getParameter("location");
		String deposit = request.getParameter("deposit");
		String rent = request.getParameter("rent");
		String duration = request.getParameter("duration");
		String s_area = request.getParameter("s_area");
		String details = request.getParameter("details");
		String owner = request.getParameter("owner");
		String contact_no = request.getParameter("contact_no");
		String email_id = request.getParameter("email_id");
		
		try {
			
			Class.forName("org.mariadb.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/renthome","root","root");
			Statement st = con.createStatement();
			int i = st.executeUpdate("insert into home(location,deposit,rent,duration,s_area,details,owner,contact_no,email_id) values('"+location+"','"+deposit+"','"+rent+"','"+duration+"','"+s_area+"','"+details+"','"+owner+"','"+contact_no+"','"+email_id+"')");
			
			if(i>0)
			{
				out.println("Registraton Successful");
			}
			else
			{
				out.println("Registration Un-successful");
			}
			
			
		} catch (Exception e) {
			
			out.println(e);
			
		}
		
	}

}