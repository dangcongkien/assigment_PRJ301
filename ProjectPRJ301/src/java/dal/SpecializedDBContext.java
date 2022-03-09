package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SpecializedDBContext extends DBContext{
    
    public String getSpecialized(int specializedId) {
        try {
            String sql = "SELECT code FROM Specialized WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, specializedId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                String code = rs.getString(1);
                return code;
            }
            rs.close();
            stm.close();
            connection.close();
        } catch (SQLException ex) {
            Logger.getLogger(SpecializedDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
