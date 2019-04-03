package action.example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SaveData
 */
public class SaveData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public SaveData() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String name,email,pwd;
		
		name = request.getparamenter("name");
		email = request.getparamenter("email");
		pwd = request.getparamenter("pwd");
		
		String msg ="";
		try
		{
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://dbs92.cm8uzr6c4avp.us-east-2.rds.amazonaws.com/akshay", "akshay", "akshay123");

			Statement st = con.createStatement();
			st.executeUpdate("insert into users(name,email,pwd) values('"+name+"','"+email+"','"+pwd+"')" );

			con.close();

			msg ="Account created!!!";
			
		}
		catch(Exception  ex){
			
			msg = ex.toString();
			
		}
		
		
		
		response.getWriter().append(msg);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
