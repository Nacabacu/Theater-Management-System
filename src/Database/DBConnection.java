/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Nacabacuzz
 */
public class DBConnection {
    
    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Login.main(args);
    }
    public static Connection conn = null;
    public static Statement stmt = null;
    public static ResultSet rs = null;
    public static PreparedStatement pre = null;
    public static String position = null,branch;
    
    public static void connect(String username,String password){
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/diamond?user=root");
            String sql = " SELECT * FROM  Staff WHERE StaffID = ? AND Password = ? ";
            pre = conn.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            rs = pre.executeQuery();
            if(rs.next())                         
            {
                sql = " SELECT BranchID,Position FROM Staff WHERE StaffID='"+username+"'";
                stmt = conn.createStatement();
                rs = stmt.executeQuery(sql);
                rs.next();
                branch = rs.getString(1);
                position = rs.getString(2);
            }
            else 
            {
                JOptionPane.showMessageDialog(null, "กรอก Username หรือ Password ผิดพลาด");
                Login.relogin();
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage() + "SQLException: ");
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: x.getSQLSta" + ex.getErrorCode());
        }
        finally{
            closeConnection();
        }
    }
    
    public static void connection(){
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        
        try {
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/diamond?user=root");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage() + "SQLException: ");
            System.out.println("SQLState: " + ex.getSQLState());
            System.out.println("VendorError: x.getSQLSta" + ex.getErrorCode());
        }
    }
    
    public static void closeConnection(){
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException sqlEx) { } 
                conn = null;
        }
        if (rs != null) {
            try {
                rs.close();
                } catch (SQLException sqlEx) { } 
                rs = null;
        }
 
        if (stmt != null) {
            try {
                stmt.close();
            } catch (SQLException sqlEx) { } 
                stmt = null;
        }
    }
}
