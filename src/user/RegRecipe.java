package user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RegRecipe
 */
@WebServlet("/RegRecipe")
public class RegRecipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegRecipe() {
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
		String hdnParam	=	request.getParameter("pagename");
		if(hdnParam.equals("Register")){
			String fname	=	request.getParameter("txtFName");
			String lname	=	request.getParameter("txtLName");
			String email	=	request.getParameter("txtEmail");
			String password	=	request.getParameter("txtPassword");
			
			Register sets	=	new Register();
			
			sets.setFname(fname);
			sets.setLname(lname);
			sets.setEmail(email);
			sets.setPassword(password);
		
			
			try {
				DbManager.Insert(sets);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(hdnParam.equals("Login")){
				String userName	=	request.getParameter("txtUserName");
				String password	=	request.getParameter("txtPassword");
				if((userName.equals("admin")) && (password.equals("admin"))){
					response.sendRedirect("Admin.jsp");
				}else{
					Register set	=	new Register();
				
					set.setEmail(userName);
					set.setPassword(password);
						try {
							Integer checkUser = DbManager.checkUser(request, response, set);
							System.out.println(checkUser);
							if(checkUser != null){
								
								
								
//								response.sendRedirect("Welcome.jsp");
								response.sendRedirect("http://localhost:8080/Project/Welcome.jsp?Username=" + userName + "");
							}else{
								response.sendRedirect("Wrong.jsp");
							}
						} catch (ClassNotFoundException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						
				}
		}
		
	}

}

