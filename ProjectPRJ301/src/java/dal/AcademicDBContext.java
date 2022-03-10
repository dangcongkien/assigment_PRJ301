package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class AcademicDBContext extends DBContext{
    public void insertStudent(String rollNumber, String memberCode,
            String mode, Date enrollDate, int studentId) {
        try {
            String sql = "INSERT INTO Academic_Student (rollNumber, memberCode, mode, enrollDate, studentId) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, rollNumber);
            stm.setString(2, memberCode);
            stm.setString(3, mode);
            stm.setDate(4, enrollDate);
            stm.setInt(5, studentId);
            stm.executeUpdate();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(AcademicDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void deleteStudent(String id) {
        try {
            String sql = "DELETE FROM Academic_Student WHERE studentId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, id);
            stm.executeUpdate();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(AcademicDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return;
    }
}
