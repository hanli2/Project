package user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DbManager {
	private static Connection conn = null;
	//System.out.println(conn);
	public static void Insert(Register set) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		conn=ConnectionManager.getInstance().getConnection();
		String sql	=	"INSERT INTO register (fname,lname,email,password) VALUES(?,?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, set.getFname());
		pstmt.setString(2, set.getLname());
		pstmt.setString(3, set.getEmail());
		pstmt.setString(4, set.getPassword());
		pstmt.executeUpdate();
		ConnectionManager.getInstance().close();		
	}
	
	public static int checkUser(HttpServletRequest request,
			HttpServletResponse response, Register get) throws ClassNotFoundException, SQLException{
		Class.forName("com.mysql.jdbc.Driver");
		
		conn=ConnectionManager.getInstance().getConnection();
		String sql	=	"SELECT id FROM register WHERE email=? AND password=?";
		PreparedStatement pstmt	=	conn.prepareStatement(sql);
		pstmt.setString(1, get.getEmail());
		pstmt.setString(2, get.getPassword());
		ResultSet rs	=	pstmt.executeQuery();
		RegisterDAO dao = new RegisterDAO();
		
		Integer id = null;
		while(rs.next()){
			id	=	rs.getInt(1);
			get = dao.readReById(id);
			break;
		}
		
		if(id != null){
			HttpSession session = request.getSession();
			session.setAttribute("Register", get);
		}
		
		ConnectionManager.getInstance().close();
		return id;
		
	}

}
