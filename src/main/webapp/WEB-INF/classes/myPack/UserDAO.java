package myPack;
import java.sql.*;
import java.io.*; 


public class UserDAO  implements Serializable{
  Statement st=null;
  
  public UserDAO(){
   try {
    Class.forName("com.mysql.jdbc.Driver");
    
    String url = "jdbc:mysql://127.0.0.1/finalproject";

    Connection con=DriverManager.getConnection(url, "root", "usman");

    st=con.createStatement();
    System.out.println("Data base is connected");
   
   }
   catch (Exception e) {
	   System.out.println(e);
   }
   }
  
  //ADD User
   public boolean addUser(User temp){
    String query = "INSERT INTO users(name,email,phone,password)VALUES('"+ temp.getname() + "','" + temp.getemail() + "','" + temp.getPhone()+"','"  + temp.getpassword()+ "') ";
    int rs=0;
    try {
      rs = st.executeUpdate( query );
      System.out.println("User is added "+rs);
    } catch (Exception e) {
    	System.out.println(e);
    	rs=0;
    }
    
    if(rs>0) return true;
  
   return false;
  }
//Get User
  public User getUser(String name,String password){
      User temp=null;
      try {
      String query = "Select * from users where name='"+name+"' AND "+"password='"+password+"'";
          ResultSet rs= st.executeQuery( query );  
          System.out.println(query);
          if(rs.next()){
        	  
              temp=new User(rs.getString("name"),rs.getString("email"),rs.getString("phone"),rs.getString("password"));
              System.out.println("Found the user ");
             return temp; 
					   }else {
						  
						   System.out.println("Not found");
					   }
  } catch (Exception e) {
	  System.out.println(e);
  }
  return temp;
  }

  public boolean deleteUser(String name,String password){
     String query="Delete from users where name = '"+name+"' AND password='"+password+"'";
     int rs=0;
     try {
       st.executeUpdate(query);
       rs=1;
     } catch (Exception e) {}

     return rs==1?true:false;
  }
  
  public static void main(String[]args) {
	  new UserDAO().getUser("usnma hggh", "46730820Hangb");
  }
}



