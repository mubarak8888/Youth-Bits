

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSInputFile;

import java.io.File;
/**
 * Servlet implementation class Create
 */
@WebServlet("/Create")
public class Create extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Create() {
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
		DBCollection coll=db.getCollection("blogdata");
		PrintWriter out=response.getWriter();
		//String user = (String) request.getParameter("title");
		//String pswd = (String) request.getParameter("discription");
		String imagefilepath = (String) request.getParameter("video");
		System.out.println(imagefilepath);
	
		BasicDBObject dbobj=new BasicDBObject();
		//dbobj.put("title",user );
		//dbobj.put("discription",pswd );
		coll.insert(dbobj);
		
		
		String newFileName = "myblog-image";
		File imageFile = new File("C:/Users/Mubarak/Documents/WorkSpace/Blogs/whosays.avi");
		GridFS gfsPhoto = new GridFS(db, "photo");
		GridFSInputFile gfsFile = gfsPhoto.createFile(imageFile);
		gfsFile.setFilename(newFileName);
		gfsFile.save();
		
		System.out.println("video stored");
		
		out.print("<html><body><script>alert('video uploaded  successfully!');</script></body></html>");
		
	}

}
