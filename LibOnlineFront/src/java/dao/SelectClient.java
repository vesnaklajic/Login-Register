
package dao;

import beans.Utilisateur;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class SelectClient {
   private Connector connector;  

   public SelectClient(){
        connector = new Connector();
   }
      
 public Utilisateur getClient(String bUser, String bPass ) throws SQLException{  
  Utilisateur util=new Utilisateur();
     Connection connexion = connector.contacterBDD();
     String query="SELECT * FROM CLIENT WHERE "+ bUser+ " = CLIENTLOGIN AND " + bPass+" =CLIENTMDP;";
      
        Statement stmt = connexion.createStatement();
        ResultSet rs = stmt.executeQuery(query);
    
        try{
            if(rs.next()){
                util.setLog(rs.getString("bUser"));
                util.setPass(rs.getString("bPass"));
            }
            rs.close();
            stmt.close();
            connexion.close();
            return util;
        } catch (SQLException e) {
            System.err.print(e.getMessage());
            rs.close();
            stmt.close();
            connexion.close();
            return null;
        }

    }
   
}
