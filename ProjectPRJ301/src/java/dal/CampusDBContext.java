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
public class CampusDBContext extends DBContext{
    public String getCampus(int id) {
        try {
            String sql = "Select name from Campus where id = '"+ id +"'";
            PreparedStatement stm = connection.prepareCall(sql);
//            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery(sql);
            while (rs.next()) {
                String name = rs.getString(1);
                return name;
            }
            rs.close();
            stm.close();
            connection.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(CampusDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
