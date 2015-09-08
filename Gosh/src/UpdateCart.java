import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.GoshCart;
import model.GoshProduct;
import model.GoshUser;
import customTools.DBUtil;



/**
 * Servlet implementation class AddComment
 */
@WebServlet("/UpdateCart")
public class UpdateCart extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateCart() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		GoshUser user = (GoshUser) session.getAttribute("User");
		GoshProduct product = (GoshProduct) session.getAttribute("product");
		int qty =Integer.parseInt(request.getParameter("quantity"));
		
		
		
			
			
			
			GoshCart tran=new GoshCart();
			
			
				String qString2= "select g from GoshCart g where g.goshUser=?1 and g.goshProduct=?2";
				TypedQuery<GoshCart> q2 = DBUtil.createQuery(qString2, GoshCart.class);
				q2.setParameter(1, user);
				q2.setParameter(2, product);
				tran=q2.getSingleResult();
				tran.setProductQty(qty);
				GoshCartDB.update(tran);
				String alert = "Quantity updated!";
				request.setAttribute("alert", alert);
				getServletContext().getRequestDispatcher("/successful.jsp")
						.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}