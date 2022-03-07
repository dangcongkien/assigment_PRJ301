package dal;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

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
}
