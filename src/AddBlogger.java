

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.*;

/**
 * Servlet implementation class AddBlogger
 */
@WebServlet("/AddBlogger")
public class AddBlogger extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBlogger() {
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
		MongoClient m=new MongoClient("localhost",27017);
		DB db=m.getDB("blog");	
		System.out.println("connected to db");
		DBCollection coll=db.getCollection("user1");
		
		String user = (String) request.getParameter("username");
		String pswd = (String) request.getParameter("password");
		String cpswd = (String) request.getParameter("cpassword");
		BasicDBObject dbobj=new BasicDBObject();
		dbobj.put("username",user );
		dbobj.put("password",pswd );
		coll.insert(dbobj);
		PrintWriter out=response.getWriter();
		out.print("<html><body><script>alert('User added successfully!');</script></body></html>");
		
		
		
		
		
	}

}
