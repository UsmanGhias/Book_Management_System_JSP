<!DOCTYPE html>
<html lang="en">
<head>
<!-- TODO: ------------------- Required meta tags ------------------>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!--TODO:----- Google Fonts(Optional) Roboto -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet" />
<!--TODO:----- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet" />
<!--TODO:----- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--TODO:------------- Custom Personalize css  -------------->
<link rel="stylesheet" href="css/dashboard.css" />
<link rel="stylesheet" href="css/table.css" />

<title>DashBoard | UG</title>
<!--TODO:------ Adding icon of Max size of (100 X 100) in Tab bar -->
<link rel="shortcut icon" href="UG.png" />


</head>

<body>

	<%
	if (session.getAttribute("name") == null) {
		String message = "Please login first!";
		request.getSession().setAttribute("errMessage", message);
		response.sendRedirect("login.jsp");
	}
	if (session.getAttribute("message") != null) {
		out.print("<script>");
		out.print("alert('Message: " + session.getAttribute("message") + "')");
		out.print("</script>");
		session.removeAttribute("message");
	}
	%>

	<h3 class="welcome">
		<span class="logo"><img src="UG.png" alt="" /></span> Welcome <span
			id="username"> <%=session.getAttribute("name")%>

		</span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/searchbook.jsp"
			class="btn btn-danger btn-sm ml-2"><i
			class="fa-solid fa-magnifying-glass"></i></i> SearchBook</a> </span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/updatebook.jsp"
			class="btn btn-danger btn-sm ml-2"><i
			class="fa-solid fa-pen-to-square"></i> UpdateBook</a> </span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/deletebook.jsp"
			class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-trash"></i>
			DeleteBook</a> </span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/addbook.jsp"
			class="btn btn-danger btn-sm ml-2"><i
			class="fa-solid fa-book-medical"></i> Add Book</a> </span>
		<form action="Controller" method="POST" class="form_logout">
			<button class="logout" type="submit" name="action" value="logout"
				style="position: relative; top: -3rem; float: right;">logout</button>
		</form>
	</h3>
	<hr class="line" />

	<div class="container">
		<div class="row features">
			<div class="col-3">
				<a href="addbook.jsp"><img class="book_img"
					src="books_blue_add.png" alt="" />
					<p class="title titley">Add Book</p> </a>
			</div>
			<div class="col-3">
				<a href="updatebook.jsp"> <img class="book_img"
					src="books_blue_edit.jpg" alt="" />
					<p class="title titley">Update Book</p>
				</a>
			</div>
			<div class="col-3">
				<a href="searchbook.jsp"> <img class="book_img book_img_search"
					src="book_blue_view.png" alt="" />
					<p class="title titlex">Search Book</p>
				</a>
			</div>
			<div class="col-3">
				<a href="deletebook.jsp"> <img class="book_img"
					src="books_blue_delete.jpg" alt="" />
					<p class="title titley">Remove Book</p>
				</a>
			</div>
		</div>
	</div>
	<%@ page import="myPack.*"%>
	<%@ page import="java.util.*"%>
	<table class="table table-striped table-dark show_table">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Title</th>
				<th scope="col">Author</th>
				<th scope="col">Publisher</th>
				<th scope="col">Genre</th>
				<th scope="col">Link</th>
			</tr>
		</thead>
		<tbody>
			<%
			BookDAO initial = new BookDAO();
			ArrayList<Book> list = initial.getBooks((String) session.getAttribute("email"));
			for (int i = 0; i < list.size(); i++) {
				Book temp = list.get(i);
			%>
			<tr>
				<th scope="row"><%=temp.getId()%></th>
				<td><%=temp.getTitle()%></td>
				<td><%=temp.getAuthor()%></td>
				<td><%=temp.getPublisher()%></td>
				<td><%=temp.getGenre()%></td>
				<td><a href="<%=temp.getLink()%>" target="_blank" class="tapMe">Tap
						me</a></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<hr class="line" />
	<!--TODO:----- JQuery -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<!--TODO:----- Bootstrap tooltips -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
	<!--TODO:----- Bootstrap core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
	<!--TODO:----- MDB core JavaScript -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>

	<!--TODO:------------ Font awesome icons link  -------------->
	<script src="https://use.fontawesome.com/releases/v5.14.0/js/all.js"></script>
</body>
</html>
