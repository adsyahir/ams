package payment.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import payment.dao.PaymentDAO;
import payment.model.Payment;

/**
 * Servlet implementation class UpdateStatusController
 */
@WebServlet("/UpdateStatusController")
public class UpdateStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PaymentDAO dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateStatusController() {
        super();
        dao = new PaymentDAO();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// TODO Auto-generated method stub
	String paymentid = request.getParameter("paymentid");
	Payment pm = new Payment();
	pm.setPaymentid(paymentid);
	pm.setPaymentstatus(request.getParameter("Status"));
	dao.updatePaymentById(pm);

	request.setAttribute("pm", PaymentDAO.getPayment(paymentid));
	
	request.setAttribute("success", "Update success");
	RequestDispatcher view = request.getRequestDispatcher("updatePaymentSupplier.jsp");
    view.forward(request, response);	
	
    }
}
