package model;
import java.sql.*;
import java.io.FileInputStream;
public class Database 
{
    static Connection con;
    public static Connection dataConnection()
    {
        try
        {
        	Class.forName("com.mysql.jdbc.Driver"); //database connection driver
        	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root"); 
            System.out.println("Database connected"); //database connected
        }catch(Exception e)
        {
        	System.out.println("Database not connected " +e);
        }
        return con;
    }
}
