package Controller.Academic;

import dal.AcademicDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class InformationRegisterController extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        
        String studentId = request.getParameter("studentId");
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");
        String email = request.getParameter("email");
        String specialized = request.getParameter("specialized");
        
        HttpSession session = request.getSession();
        String rollNumner = session.getAttribute("campusName") + studentId;
        String membercode = request.getParameter("membercode");
        String mode = request.getParameter("mode");
        Date enrollDate = null;
        
        try {
            enrollDate = Date.valueOf(request.getParameter("enrolldate"));
            if(membercode == null || membercode.isEmpty() || mode == null || mode.isEmpty()
                    || enrollDate == null) {
                request.setAttribute("error", "You need to enter enroll date");
                request.getRequestDispatcher("../academic/error.jsp").forward(request, response);
            } else {
                int genders = Integer.parseInt(gender);
                int id = Integer.parseInt(studentId);
                
                StudentDBContext db = new StudentDBContext();
                db.acceptStudent(firstName, lastName, dob, genders, address,
                        phoneNumber, membercode + "@fpt.edu.vn", getSpecializedId(specialized), id);
                AcademicDBContext acbb = new AcademicDBContext();
                acbb.insertStudent(rollNumner, membercode, mode, enrollDate, id);
                
                response.sendRedirect("../academic/listregister.jsp");
            }
        } catch (Exception e) {
        }
    }
    
    private int getSpecializedId(String specialized) {
        if (specialized.equalsIgnoreCase("se")) {
            return 1;
        } else if (specialized.equalsIgnoreCase("id")) {
            return 2;
        } else {
            return 3;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
