<style>
  /* Full-width input fields */

  input[type=text],
  input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }

  button {
    background: none;
    border: none;
    margin: 0;
    padding: 0;
    cursor: pointer;
  }

  button:hover {
    opacity: 0.8;
  }

  /* Extra styles for the cancel button */

  .loginbutton {
    background-color: #385b8c;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
  }

  .cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
  }

  /* Center the image and position the close button */

  .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
  }

  img.avatar {
    width: 40%;
    border-radius: 50%;
  }

  .container {
    padding: 16px;
  }

  span.psw {
    float: right;
    padding-top: 16px;
  }

  /* The Modal (background) */

  .modal {
    display: none;
    /* Hidden by default */
    position: fixed;
    /* Stay in place */
    z-index: 1;
    /* Sit on top */
    left: 0;
    top: 0;
    width: 100%;
    /* Full width */
    height: 100%;
    /* Full height */
    overflow: auto;
    /* Enable scroll if needed */
    background-color: rgb(0, 0, 0);
    /* Fallback color */
    background-color: rgba(0, 0, 0, 0.4);
    /* Black w/ opacity */
    padding-top: 60px;
  }

  /* Modal Content/Box */

  .modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto;
    /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 60%;
    /* Could be more or less, depending on screen size */
    padding: 20px;
  }

  /* The Close Button (x) */

  .close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
  }

  .close:hover,
  .close:focus {
    color: red;
    cursor: pointer;
  }

  /* Add Zoom Animation */

  .animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
  }

  @-webkit-keyframes animatezoom {
    from {
      -webkit-transform: scale(0)
    }
    to {
      -webkit-transform: scale(1)
    }
  }

  @keyframes animatezoom {
    from {
      transform: scale(0)
    }
    to {
      transform: scale(1)
    }
  }

  /* Change styles for span and cancel button on extra small screens */

  @media screen and (max-width: 300px) {
    span.psw {
      display: block;
      float: none;
    }
    .cancelbtn {
      width: 100%;
    }
  }
    @font-face {
        font-family: logo;
        src: url(/static/fonts/Rommantis.ttf);
    }


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<nav style="background-color: white;box-shadow: 0px 2px 46px 0px rgba(0,0,0,0.10);border:none;" class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <b>
        <a class="navbar-brand" style="color:#385b8c;font-size-adjust: 1.20;font-weight: normal;  font-family: logo;" href="/">4Society</a>
      </b>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
    </div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="/projects">PROJECTS</a></li>
        <li><a href="/news">NEWS</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a id="id02" onclick="document.getElementById('id00').style.display='block'" style="width:auto; cursor:pointer"><span class="glyphicon glyphicon-log-in"></span> SING IN</a></li>
        <li><a id="id02.1" onclick="document.getElementById('id01').style.display='block'" style="width:auto; cursor:pointer">SING UP</a></li>
        <li><a id="id03" onclick='exit()' style="width:auto;" href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
      </ul>
    </div>
  </div>
</nav>

  <div id="id00" class="modal">
    <form class="modal-content animate" action="/login" method="post">
        <h2 style="text-align: center;">LOGIN</h2>
        <label for="user"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="user" required>
        <label for="pass"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pass" required>
        <button class="loginbutton" type="submit">LOGIN</button>
    </form>
  </div>

    <div id="id01" class="modal">
    <form class="modal-content animate" action="/register" method="post">
        <h2 style="text-align: center;">SING UP</h2>
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="username" required>
        <label for="uname"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="name" required>
        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="password" required>
        <label for="psw"><b>Repit password</b></label>
        <input type="password" placeholder="Repite Password" name="password2" required>
        <label for="mail"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" required>
        <p><input type="checkbox" name="terms" required> I accept the <u>Terms and Conditions</u></p>
        <button class="loginbutton" type="submit">SING UP</button>
    </form>
  </div>



<script>  
  var modal = document.getElementById('id00');
  var modal2 = document.getElementById('id01');
  var modal3 = document.getElementById('id05');
  window.onclick = function(event) {
    if (event.target == modal2 || event.target == modal || event.target == modal3) {
      modal.style.display = "none";
      modal2.style.display = "none";
      modal3.style.display = "none";
    }
  }
</script> 

<script> 
  function exit() {
    var xhttp = new XMLHttpRequest();
    xhttp.open("POST", "/logout", true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    var cc = 'exit=y';
    xhttp.send(cc);
    window.location = '/';          
  }

</script>
