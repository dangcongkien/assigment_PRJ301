package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author Admin
 */
public class StudentDBContext extends DBContext{
    public void insertStudent(String firstName, String lastName, String dob, int gender, String address,
                                String phoneNumber, String email, int specializedId, int campusId ) {
        try {
            String sql = "INSERT INTO Student(firstName, lastName, dob, gender, address, phoneNumber, email, specializedId, campusId)"
                    + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, firstName);
            stm.setString(2, lastName);
            stm.setString(3, dob);
            stm.setInt(4, gender);
            stm.setString(5, address);
            stm.setString(6, phoneNumber);
            stm.setString(7, email);
            stm.setInt(8, specializedId);
            stm.setInt(9, campusId);
            stm.executeUpdate();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ArrayList<Student> getListRegister(){
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "select s.id, s.firstName, s.lastName, s.dob, s.gender, s.cardNo, s.cardDate, \n" +
                    "s.cardPlace, s.address, s.phoneNumber, s.email, s.specializedId, s.campusId \n" +
                    "from student s left outer join academic_student sa on s.id = sa.studentid \n" +
                    "where sa.studentId is null";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String firstName = rs.getString(2);
                String lastName = rs.getString(3);
                Date dob = rs.getDate(4);
                boolean gender = rs.getBoolean(5);
                int cardNo = rs.getInt(6);
                Date cardDate = rs.getDate(7);
                String cardPlace = rs.getString(8);
                String address = rs.getString(9);
                int phonenumber = rs.getInt(10);
                String email = rs.getString(11);
                int specializedId = rs.getInt(12);
                int campusId = rs.getInt(13);
                
                Student s = new Student(id, firstName, lastName, dob, gender, cardNo, cardDate, cardPlace,
                                        address, phonenumber, email, specializedId, campusId, 0);
                students.add(s);
                
            }
            rs.close();
            stm.close();
            connection.close();
            return students;
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Student getStudentById(int id) {
        ArrayList<Student> students = new ArrayList<>();
        try {
            
            String sql = "SELECT firstName, lastName, dob, gender, cardNo, cardDate, cardPlace, \n" +
                    "address, phoneNumber, email,  specializedId, campusId \n" +
                    "FROM Student WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
               String firstName = rs.getString(1);
                String lastName = rs.getString(2);
                Date dob = rs.getDate(3);
                boolean gender = rs.getBoolean(4);
                int cardNo = rs.getInt(5);
                Date cardDate = rs.getDate(6);
                String cardPlace = rs.getString(7);
                String address = rs.getString(8);
                int phoneNumber = rs.getInt(9);
                String email = rs.getString(10);
                int specializedId = rs.getInt(11);
                int campusId = rs.getInt(12);
                
                Student s = new Student(id, firstName, lastName, dob, gender, cardNo, cardDate,
                        cardPlace, address, phoneNumber, email, specializedId, campusId, 0);
                students.add(s);
                return s;
            }
            rs.close();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
        
    }
    
    public String getNameStudent(int id) {
        try {
            String sql = "SELECT lastname, dbo.getNameStudent(firstName) FROM Student WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                String preName = rs.getString(1);
                // Convert to ACSII
                String sort = java.text.Normalizer.normalize(preName, java.text.Normalizer.Form.NFD).replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
                String postName = rs.getString(2);
                return sort + postName;
            }
            rs.close();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void acceptStudent(String firstName, String lastName, String dob,
            int gender, String address, String phoneNumber, String email,
            int specializedId, int studentId) {
        
        try {
            String sql = "UPDATE Student SET firstName = ?, lastName = ?, dob = ?, \n" +
                    "gender = ?, address = ?, parentId = ?, email = ?, specializedId = ? WHERE id = ?";
            
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, firstName);
            stm.setString(2, lastName);
            stm.setString(3, dob);
            stm.setInt(4, gender);
            stm.setString(5, address);
            stm.setString(6, phoneNumber);
            stm.setString(7, email);
            stm.setInt(8, specializedId);
            stm.setInt(9, studentId);
            stm.executeUpdate();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public void deleteStudent(String id) {
        try {
            String sql = "DELETE FROM Student WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.executeUpdate();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return;
    }
}
