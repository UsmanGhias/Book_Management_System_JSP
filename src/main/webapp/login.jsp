<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- TODO: ------------------- Required meta tags ------------------>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <!--TODO:----- Google Fonts(Optional) Roboto -->
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"> -->
    <!--TODO:----- Bootstrap core CSS -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <!--TODO:----- Material Design Bootstrap -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css"
      rel="stylesheet"
    />

    <!--TODO:------------- Custom Personalize css  -------------->
    <link rel="stylesheet" href="css/style.css" />

    <!--TODO:-------------- Animation.css links(Please Include anim folder)  -------------->
    <link rel="stylesheet" href="anim/css/libs/animate.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"
    />

    <title>Login | UG </title>
    <link rel="shortcut icon" href="UG.png" />
    <!-- 
    <style type="text/css">
    /* Common styles for both pages */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: Arial, sans-serif;
}

.container {
  max-width: 1000px;
  margin: auto;
}

.form-title {
  margin-bottom: 20px;
  text-align: center;
}

.form-group {
  margin-bottom: 20px;
}

.form-group input {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

.form-button input {
  background-color: #4CAF50;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  padding: 10px 20px;
}

.signup-image {
  text-align: center;
  margin-top: 30px;
}

.signup-image img {
  max-width: 100%;
  height: auto;
}

.signup-image-link {
  display: inline-block;
  margin-top: 15px;
  font-size: 16px;
  color: #4CAF50;
}

/* Login page styles */
.log-in {
  padding: 50px 0;
}

.login-image {
  text-align: center;
}

.login-image img {
  max-width: 100%;
  height: auto;
}

.signup-image-link {
  display: inline-block;
  margin-top: 15px;
  font-size: 16px;
  color: #4CAF50;
}

/* Signup page styles */
.signup {
  padding: 50px 0;
}

.signup-form {
  width: 50%;
  margin: auto;
}

.signup-form input[type="tel"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

.signup-form input[type="password"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}
    
    </style>
    -->
  </head>

  <body>
    <!-- Sing in  Form -->
    <section class="log-in">
      <div class="container">
        <div class="login-content">
          <div class="login-image">
            <figure>
              <img src="signup-image.png" alt="Sing up image" />
            </figure>
            <a
              href="signup.jsp"
              class="signup-image-link"
              >Create an account</a
            >
          </div>

          <div class="login-form">
            <h2 class="form-title text-center">Log In</h2>
            <form
              action="Controller"
              method="POST"
              class="register-form"
              id="login-form"
            >
              <div class="form-group">
                <input
                  type="text"
                  name="name"
                  id="name"
                  placeholder="Name"
                  required
                />
              </div>
              <div class="form-group">
                <input
                  type="password"
                  name="password"
                  placeholder="Password"
                  required
                />
              </div>

              <div class="form-group form-button">
                <input
                  type="submit"
                  name="action"
                  class="form-submit"
                  value="login"
                />
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>

    <!--TODO:----- JQuery -->
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
    ></script>
    <!--TODO:----- Bootstrap tooltips -->
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"
    ></script>
    <!--TODO:----- Bootstrap core JavaScript -->
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"
    ></script>
    <!--TODO:----- MDB core JavaScript -->
    <script
      type="text/javascript"
      src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"
    ></script>
    <!--TODO:----- Customize(User) JavaScript -->
    <script src="js/"></script>
    <!--TODO:------------ Font awesome icons link  -------------->
    <script src="https://use.fontawesome.com/releases/v5.14.0/js/all.js"></script>
    <!-- <script></script> -->
    <% String errMessage=(String)session.getAttribute("errMessage");
    if(errMessage!=null  && !errMessage.isEmpty()){ 
      out.print("<script>");
      out.print("alert('Message: "+ errMessage+"')");
      out.print("</script>");
      // out.print("<h4 class='text-danger text-center'>"+errMessage +"</h4>");
      session.removeAttribute("errMessage");
       } 
       %>
  </body>
</html>
