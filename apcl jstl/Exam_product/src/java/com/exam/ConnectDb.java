/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exam;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author l2pc209e
 */
public class ConnectDb {
    Connection con;
    String url="jdbc:mysql://localhost:3306/product_db";
    String user="root";
    String password="apcl123456";
    public Connection doConnect(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url, user, password);
        } catch (Exception e) {
        }
        return con;
    
    }
}
