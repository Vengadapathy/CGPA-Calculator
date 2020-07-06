package servlet;

import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

import objects.Department;
import objects.Subject;
import operations.Calculator;

/**
 * Servlet implementation class CgpaCalculator
 */
@WebServlet("/cgpa")
public class CgpaCalculator extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Get Request");
		Calculator cal = new Calculator();
		cal.initialize();
		
		String process = request.getParameter("process");
		
		response.setContentType("appliction/json");
		
		if(("department").equalsIgnoreCase(process)) {
			
			HashMap<String,Department> map = cal.getDeptList();
			JSONObject json = new JSONObject(map); 
			response.getWriter().print(json);
			System.out.println(json);
			
		} else if(("subject").equalsIgnoreCase(process)) {
			
			String deptName = request.getParameter("deptname");
			int semester = Integer.parseInt(request.getParameter("sem"));
			HashMap<String, Subject> map = cal.getSubjectList(deptName, semester);
			JSONObject jsonmap = new JSONObject(map);
			response.getWriter().print(jsonmap);			
		}
		cal.closeConnection();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Post Request");
		Calculator cal = new Calculator();
		cal.initialize();
		
		String jsonArray = request.getParameter("reqData");
		System.out.println(jsonArray);
		 Gson gson = new Gson();
		 Type type = new TypeToken<HashMap<String,Subject>>(){}.getType();
		 HashMap<String,Subject> map = gson.fromJson(jsonArray, type);
		 System.out.println(map.toString());
		 double cgpa = cal.calculateCGPA(map); 

		JSONObject responseJson = new JSONObject();
		
		try {
			responseJson.put("cgpa", String.format("%.2f",cgpa));
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		response.setContentType("appliction/json");
		response.getWriter().print(responseJson);

		cal.closeConnection();
	}

}
