<!DOCTYPE html>
<html lang="en">
<head>
<!-- TODO: ------------------- Required meta tags ------------------>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!--TODO:----- Google Fonts(Optional) Roboto -->
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"> -->
<!--TODO:----- Bootstrap core CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet" />
<!--TODO:----- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
	rel="stylesheet" />

<!--TODO:------------- Custom Personalize css  -------------->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/addbook.css" />

<!--TODO:-------------- Animation.css links(Please Include anim folder)  -------------->
<link rel="stylesheet" href="anim/css/libs/animate.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Add product | UG</title>
<!--TODO:------ Adding icon of Max size of (100 X 100) in Tab bar -->
<link rel="shortcut icon" href="UG.png" />
</head>

<body>
	
    <% if(session.getAttribute("name") == null){
      String message="Please login first!";
            request.getSession().setAttribute("errMessage", message);
            response.sendRedirect("login.jsp");
    }
    if(session.getAttribute("message") != null){
      out.print("<script>");
        out.print("alert('Message: "+ session.getAttribute("message")+"')");
        out.print("</script>");
        session.removeAttribute("message");
    } %>
    
	<h3 class="welcome">
		<a href="dashboard.jsp" class="logo"><img src="UG.png" alt="" /></a>
		Welcome <span id="username"> <%=session.getAttribute("name")%>
		</span> </span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/dashboard.jsp"
			class="btn btn-danger btn-sm ml-2"><i class="fa fa-home"
			aria-hidden="true"></i> DashBoard</a> </span> </span> <a
			href="http://localhost:8088/OnlineBookManagmentSystem/searchbook.jsp"
			class="btn btn-danger btn-sm ml-2"><i
			class="fa-solid fa-pen-to-square"></i> Search</a> </span> </span> <a
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
	<!-- Sign up form -->
	<section class="updatebook">
		<div class="container">
			<div class="signup-content">
				<div class="signup-form">
					<h2 class="form-title">Update Book</h2>
					<form method="POST" name="updatebook" class="register-form"
						action="Controller">
						<div class="form-group">
							<input type="number" name="id" placeholder="ID *" required />
						</div>
						<div class="form-group">
							<input type="text" name="title" placeholder="Title" />
						</div>
						<div class="form-group">
							<input name="author" placeholder="Author" />
						</div>
						<div class="form-group">
							<input name="publisher" placeholder="Publiusher" />
						</div>
						<div class="form-group">
							<input name="genre" placeholder="Genre" />
						</div>
						<div class="form-group">
							<input name="link" placeholder="URL (link)" />
						</div>

						<div class="form-group form-button">
							<input type="submit" name="action" class="form-submit"
								value="updatebook" />
						</div>
					</form>
				</div>
				<div class="signup-image">
					<figure>
						<img src="books_blue_edit.jpg" alt="UpdatebookImage" />
					</figure>
				</div>
			</div>
		</div>
	</section>

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

</body>
</html>
