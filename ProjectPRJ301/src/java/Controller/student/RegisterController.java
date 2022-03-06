package Controller.student;

import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class RegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        int campusId = (int) session.getAttribute("campusId");
        
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        int specializedId = Integer.parseInt(request.getParameter("specialized"));
        
        if(firstName == null || firstName.isEmpty() || lastName == null || lastName.isEmpty()
                || dob== null || dob.isEmpty() || gender == null || gender.isEmpty()
                || address == null || address.isEmpty() || phoneNumber == null || phoneNumber.isEmpty()
                || email == null || email.isEmpty()) {
            request.setAttribute("error", "You have not filled in all the information");
            request.getRequestDispatcher("/register/register.jsp").forward(request, response);
        } else {
            int genders = Integer.parseInt(gender);
            StudentDBContext db = new StudentDBContext();
            db.insertStudent(firstName, lastName, dob, genders, address, phoneNumber, email, specializedId, campusId);
            
            request.setAttribute("success", "You have successfully registered");
            request.getRequestDispatcher("/register/success.jsp").forward(request, response);
        }
        
        

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
