
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A2Control
 */
@WebServlet("/A2Control")
public class A2Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public A2Control() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String url = ""; // url to forward to

// Get the parameter values from the request
		String name = request.getParameter("gmailUser");
		String quantity = request.getParameter("quantity");

// If any are empty, set the url to forward to to the error page.
// Otherwise, forward to the normal reciept
		if (name.equals("") || quantity.equals("")) {
			url = "/errorA2.jsp";
		} else {
			url = "/handlA2.jsp";
			int initPrice = 2;
			int number = Integer.parseInt(quantity);
			int totalPrice = Math.round(number * initPrice);

			request.setAttribute("totalCost", "" + totalPrice);
		}

// Create the dispatcher from the url and perform the forward
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
	processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
