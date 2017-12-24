package Database;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Vector;
import javax.swing.table.DefaultTableModel;
import static Database.DBConnection.conn;
import static Database.DBConnection.stmt;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nacabacuzz
 */
public class DBStatement {
    
    
    public static void DBQuery(String que,ArrayList <String> arList,int n) {
        DBConnection.connection();
        try {
            int i,j=1;
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(que);
            while(rs.next())
            {     
                for(i=0;i<n;i++)
                {
                    arList.add(i,rs.getString(j));
                    j++;
                }
            }
       }
        catch (SQLException ex) {
        System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());
        System.out.println("VendorError: " + ex.getErrorCode());
        }
        finally{
            DBConnection.closeConnection();
        }
    }
    
    public static int numOfRow(String que){
        //select count(*) from TABLE_NAME
        DBConnection.connection();
        int num = 0;
        try {
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(que);
            rs.next();
            num = rs.getInt(1);
       }
        catch (SQLException ex) {
        System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());
        System.out.println("VendorError: " + ex.getErrorCode());
        }
        finally{
            DBConnection.closeConnection();
        }
        return num;
    }
    
    public static String queryID(String que,int num){
        String result="";
        DBConnection.connection();
        try {
            int i=1;
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(que);
            rs.next();
            while(rs.next())
            {   
                i++;
                if(i==num)
                {
                    result = rs.getString(1);
                }   
            }
       }
        catch (SQLException ex) {
        System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());
        System.out.println("VendorError: " + ex.getErrorCode());
        }
        finally{
            DBConnection.closeConnection();
        }
        return result;
    }
    
    public static void querySeat(String que,String[] seat){
        DBConnection.connection();
        try {
            int i=0;
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(que);
            while(rs.next())
            {   
                seat[i] = rs.getString(1);
                i++;      
            }
       }
        catch (SQLException ex) {
        System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());
        System.out.println("VendorError: " + ex.getErrorCode());
        }
        finally{
            DBConnection.closeConnection();
        }
    }
    
    public static void DBupdate(String up) {
        DBConnection.connection();
        try {
            stmt = conn.createStatement();
            stmt.executeUpdate(up);
        }
        catch (SQLException ex) {
        System.out.println("SQLException: " + ex.getMessage());
        System.out.println("SQLState: " + ex.getSQLState());
        System.out.println("VendorError: " + ex.getErrorCode());
        JOptionPane.showMessageDialog(null, "เกิดข้อผิดพลาด กรุณาตรวจสอบข้อมูลที่กรอก");
        }
        finally{
            DBConnection.closeConnection();
        }
    }
    
    public static ArrayList comboBoxQuery(String query) {
        ArrayList<String> list = new ArrayList<String>();
        DBConnection.connection();
        try {
            PreparedStatement stm = DBConnection.conn.prepareStatement(query); 

            ResultSet rs = stm.executeQuery(query); 

            while (rs.next()) { 
                String temp = rs.getString(1); 
                list.add(temp);
                }
            rs.close(); 
        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        }
        finally{
            DBConnection.closeConnection();
        }
        return list;
    }
    
    public static DefaultTableModel executeAndBuildTableModel(String sql) {

        Statement stmt = null;
        ResultSet rs = null;
        Vector<String> columnNames = new Vector<String>();
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();
        DBConnection.connection();
        try {
            stmt = DBConnection.conn.createStatement();
            stmt.execute(sql);
            rs = stmt.getResultSet();
            ResultSetMetaData metaData = rs.getMetaData();

            int columnCount = metaData.getColumnCount();
            for (int column = 1; column <= columnCount; column++) {
                columnNames.add(metaData.getColumnName(column));
            }

            while (rs.next()) {
                Vector<Object> vector = new Vector<Object>();
                for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                    vector.add(rs.getObject(columnIndex));
                }
                data.add(vector);
            }

        } catch (SQLException e) {
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
        } finally {
            DBConnection.closeConnection();
        }
        return new DefaultTableModel(data, columnNames);
    }
    
    
}
