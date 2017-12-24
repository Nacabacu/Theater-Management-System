/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

/**
 *
 * @author Nacabacuzz
 */
public class Utility {
    
    public static String md5(String input) throws NoSuchAlgorithmException {
        String result = input;
        if(input != null) {
            MessageDigest md = MessageDigest.getInstance("MD5"); //or "SHA-1"
            md.update(input.getBytes());
            BigInteger hash = new BigInteger(1, md.digest());
            result = hash.toString(16);
            while(result.length() < 32) {
                result = "0" + result;
            }
        }
        return result;
    }
    
    public static String getMonth(){
      String[] months = {"January", "February",
      "March", "April", "May", "June", "July",
      "August", "September", "October", "November",
      "December"};
      
      Calendar cal = Calendar.getInstance(); 
      return months[cal.get(Calendar.MONTH)];
    }
    
    public static String increaseID(String input,int num){
        String first = input.substring(0,num);
        int y = Integer.parseInt(input.substring(num,input.length()))+1;
        if(y/10<1){
            first=first+"000"+Integer.toString(y);
        }
        else if(y/10<10){
            first=first+"00"+Integer.toString(y);
        }
        else if(y/10<100){
            first=first+"0"+Integer.toString(y);
        }
        else{
            first=first+Integer.toString(y);
        }
        return first;
    }
    
    public static String getCurDate(int format){
        DateFormat dateFormat = null;
        if(format==1){
            dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        }
        if(format==2){
             dateFormat= new SimpleDateFormat("yyyy/MM/dd");
        }
	Calendar cal = Calendar.getInstance();
        return dateFormat.format(cal.getTime());
    }
    
}

