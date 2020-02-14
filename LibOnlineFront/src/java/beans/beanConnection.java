
package beans;

import dao.Connector;
import java.sql.Connection;
import java.sql.SQLException;

public class beanConnection {
    private Connector connector; 
   

 public Connection getConection() throws SQLException{
   Connection connexion= connector.contacterBDD();
    return connexion; 
 }
}
