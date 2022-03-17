<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Project.ConnectionProvider" %>
    <%@page import="java.sql.*"%>
    <%
    try
    {
    	Connection con=ConnectionProvider.getCon();
    	Statement st=con.createStatement();
    	
    	String q1="create table users(Name varchar(100),Email varchar(100)primary key,Mobile bigint,SecurityQuestion varchar(200),Answer varchar(200),Password varchar(100),Address varchar(100),City varchar(100),State varchar(100),Country varchar(100))";
    String q2="create table product(id int,name varchar(500),category varchar(200),price int,active varchar(10))";
    String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,address varchar(500),city varchar(100),state varchar(100),country varchar(100), mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
    String q4="create table message (id int AUTO_INCREMENT,Email varchar(100),subject varchar(200),body varchar(1000),PRIMARY KEY(id))";
    	//System.out.println(q2);
    	System.out.println(q4);

    	//st.execute(q1);
    	//st.execute(q2);
    	st.execute(q4);

    	System.out.println("Table created");
    	con.close();
    
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
    %>
    
