package Controller.Academic;

import dal.CampusDBContext;
import dal.SpecializedDBContext;
import dal.StudentDBContext;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Student;

/**
 *
 * @author Admin
 */
public class ShowRegisterController extends HttpServlet {

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
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        
        StudentDBContext studentdb = new StudentDBContext();
        Student student = studentdb.getStudentById(studentId);
        request.setAttribute("student", student);
        
        CampusDBContext campusdb = new CampusDBContext();
        String campus = campusdb.getCampus(student.getCampusId());
        HttpSession session = request.getSession();
        session.setAttribute("campus", campus);
        
        SpecializedDBContext specializeddb = new SpecializedDBContext();
        String specialized = specializeddb.getSpecialized(student.getSpecializedId());
        request.setAttribute("specialized", specialized);
        
        String nameStudent = studentdb.getNameStudent(student.getId());
        request.setAttribute("nameStudent", nameStudent);
        
        request.getRequestDispatcher("/academic/inforregister.jsp").forward(request, response);
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
