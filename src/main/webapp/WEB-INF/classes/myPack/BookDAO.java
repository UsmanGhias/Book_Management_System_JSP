package myPack;

import java.sql.*;
import java.util.ArrayList;
import java.io.*;


public class BookDAO implements Serializable {
	Statement st = null;
	Connection con = null;

	public BookDAO() {
		try {
			Class.forName("com.mysql.jdbc.Driver");

			String url = "jdbc:mysql://127.0.0.1/finalproject";

			con = DriverManager.getConnection(url, "root", "usman");

			st = con.createStatement();
		} catch (Exception e) {
		}
	}

	public boolean addBook(Book temp, String email) {
		String query = "INSERT INTO books(title,author,publisher,genre,link,email)VALUES('" + temp.getTitle() + "','"
				+ temp.getAuthor() + "','" + temp.getPublisher() + "','" + temp.getGenre() + "','" + temp.getLink()
				+ "','" + email + "') ";
		int rs = 0;
		try {
			rs = st.executeUpdate(query);
			System.out.println("Book is added " + rs);
		} catch (Exception e) {
			System.out.println(e);
		}

		if (rs > 0)
			return true;
		return false;
	}

//Get Book  
	public Book getBook(String title, String email) {
		Book temp = null;
		try {
			String query = "Select * from books where title='" + title + "' AND " + "email='" + email + "'";
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				temp = new Book(rs.getString("title"), rs.getString("author"), rs.getString("publisher"),
						rs.getString("genre"), rs.getString("link"), rs.getInt("id"));
				System.out.println("Found the user ");
				return temp;
			} else {

				System.out.println("Not found");
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return temp;
	}

	// Get BookbyID
	private Book getBookById(int ID, String email) {
		Book temp = null;
		try {
			String query = "Select * from books where id='" + ID + "' AND " + "email='" + email + "'";
			ResultSet rs = st.executeQuery(query);
			if (rs.next()) {
				temp = new Book(rs.getString("title"), rs.getString("author"), rs.getString("publisher"),
						rs.getString("genre"), rs.getString("link"), rs.getInt("id"));
				
				return temp;
			}
		} catch (Exception e) {
		}
		return temp;
	}
//Get Update

	public boolean updateBook(Book temp, String email) {
		int rs = 0;
		Book preBook = getBookById(temp.getId(), email);
		try {
			PreparedStatement ps = con.prepareStatement(
					"UPDATE books set title=IFNULL(?,title),author=IFNULL(?,author),publisher=IFNULL(?,publisher),genre=IFNULL(?,genre) ,link=IFNULL(?,link) WHERE id=(?) AND email=?");
			ps.setString(1, temp.getTitle());
			ps.setString(2, temp.getAuthor());
			ps.setString(3, temp.getPublisher());
			ps.setString(4, temp.getGenre());
			ps.setString(5, temp.getLink());
			ps.setInt(6, temp.getId());
			ps.setString(7, email);

			rs = ps.executeUpdate();
		} catch (Exception e) {
		}
		if (rs == 1)
			return true;
		else
			return false;

	}

//Get Book Array List

	public ArrayList<Book> getBooks(String email) {
		ArrayList<Book> temp = new ArrayList<Book>();
		try {
			String query = "Select * from books where email='" + email + "'";
			ResultSet rs = st.executeQuery(query);
			while (rs.next())
				temp.add(new Book(rs.getString("title"), rs.getString("author"), rs.getString("publisher"),
						rs.getString("genre"), rs.getString("link"), rs.getInt("id")));

		} catch (Exception e) {
		}
		return temp;
	}
//Delete Book

	public boolean deleteBook(int id, String email) {
		int rs = 0;
		try {
			PreparedStatement query = con.prepareStatement("Delete from books where id = ? AND email = ?");
			query.setInt(1, id);
			query.setString(2, email);
			rs = query.executeUpdate();
		} catch (Exception e) {
		}
		return rs == 1 ? true : false;
	}
}



/*
	public static void main(String args[]){
		BookDAO temp=new BookDAO();
			Book t=new Book();
			t.setId(2);
			t.setTitle("Helooo");
			temp.addBook(new Book("In Sha Allah","usmanghias","03126912440","life","xyz"));
			System.out.print(temp.getBook("In sha Allah", "usman ghias"));
			System.out.print(temp.deleteBook(In sha Allah", "usman ghias"));
			Book test= temp.getBook("Maths", "ranausmang1039@gmail.com");
			System.out.println(test);
			System.out.println(temp.updateBook(t,"ranausmang1039@gmail.com"));
			System.out.println(temp.deleteBook(2)); 
 }
*/


