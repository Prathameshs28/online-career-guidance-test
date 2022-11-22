
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author admin
 */
public class Database {
    Connection cn=null;
    Statement st=null;
     String Connectdb()
     {
         
        try
        {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            cn=DriverManager.getConnection("jdbc:odbc:IQ_TEST");
            return ("Database Connected");
        }
        catch(Exception ex)
        {
            return (ex.toString());
        }
     }
     
     
     String Insert(String sql)
     {
         try
         {
             st=cn.createStatement();
             st.executeUpdate(sql);
             return ("Record Inserted");
             
         }catch(Exception ex)
         {
             return (ex.toString());
         }
     }
     
     String Update(String sql)
     {
         try
         {
             st=cn.createStatement();
             st.executeUpdate(sql);
             return ("Record Updated");
             
         }catch(Exception ex)
         {
             return (ex.toString());
         }
     }
     
     
     String Delete(String sql)
     {
         try
         {
             st=cn.createStatement();
             st.executeUpdate(sql);
             return ("Record Deleted");
             
         }catch(Exception ex)
         {
             return (ex.toString());
         }
     }
     
     
     
     
     
     
     
     
    
}
