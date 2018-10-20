<!DOCTYPE html>
<html lang="es">
  <head>
    <title>{{.Title}}</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
  </head>
  <style>
  body {
    background-image: url("static/img/background.gif");
  }
/* Popup container - can be anything you want */
.popup {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
}

/* The actual popup */
.popup .popuptext {
    visibility: hidden;
    width: 160px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 8px 0;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -80px;
}

/* Popup arrow */
.popup .popuptext::after {
    content: "";
    position: absolute;
    top: 100%;
    left: 50%;
    margin-left: -5px;
    border-width: 5px;
    border-style: solid;
    border-color: #555 transparent transparent transparent;
}

/* Toggle this class - hide and show the popup */
.popup .show {
    visibility: visible;
    -webkit-animation: fadeIn 1s;
    animation: fadeIn 1s;
}

/* Add animation (fade in the popup) */
@-webkit-keyframes fadeIn {
    from {opacity: 0;} 
    to {opacity: 1;}
}

@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity:1 ;}
}

  /* ------------------------------------------- */

  .topbar {
  border: 1px solid #ccc;
  overflow: hidden;
  background-color: white;  
  position: fixed;
  bottom: 0;
  width: 100%;
}

.topbar a {
  float: left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topbar a:hover {
  background-color: #ddd;
  color: black;
}

.topbar a.active {
  color: darkgray;
}

.topbar .icon {
  display: none;
}

.carrito{
  border: 1px solid  lightgray; 
  border-radius:4px 4px 4px 4px;
  box-shadow: 1px 1px 1px rgba(0,0,0,0.2);
}

@media screen and (max-width: 600px) {
  .topbar a:not(:first-child) {display: none;}
  .topbar a.icon {
    float: right;
    display: block;
  }
}

@media screen and (max-width: 600px) {
  .topbar.responsive .icon {
    position: absolute;
    right: 0;
    bottom:0;
  }
  .topbar.responsive a {
    float: none;
    display: block;
    text-align: left;
  }

}
</style>
  <body>
    {{ template "resources/navbar.tpl" }}
    <div class="container" style="background-color:white; box-shadow: 5px 20px 30px rgba(0,0,0,0.2); height: 100%;">
        <div class="col-sm-12" style="border-bottom: 1px solid  lightgray; ">
            <div class="col-sm-3">         
                <img class="img-responsive" src='{{.Image}}'>
            </div>
            <div class="col-sm-9">         
                <h1>{{.Title}}</h1>
                <p>{{.Place}}</p>
                <p>{{.Date}}</p>
                <br><br><br>
            </div>
        </div>

        <div class="container">
            <div class="col-sm-12">
                <br><br>
                <p>{{.Description}}</p>
            </div>
        </div>
        

        <div class="container">
                <div class="col-sm-12" style="height:250px; left:-2.5%">
                    {{ template "map.tpl" }}
                </div>
        </div>

        <div id="comReg" class="container">
        <a href="/register">SING IN TO COMMENT</a>
        </div>
        <div id="comBox" class="container">
            <div class="col-sm-12">
                <legend>Leave a comment</legend>
                Title:<br>
                <input type="text" id="Title"><br>
                Comment:<br>
                <input type="text" id="Comment">
                <button class="loginbutton" onclick="sendComment()">Send Comment</button>
            </div>
        </div>

        <div class="container" id="commentsBox">
        {{range .Comments}}
            <div class="col-sm-12">
            <h3>{{.Title}}</h3>
            <h6 style="color: gray;">{{.Name}}</h6>
            <p>{{.Comment}}</p>
            </div>
        {{end}}
        </div>
    </div>
    <br>
    <footer style="background-color:white; box-shadow: 2px 2px 46px 2px rgba(0,0,0,0.10);border-width:3px;border-color:black; text-align:center">
        <div class="container">
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">ABOUT</small>
                <p>Who we are?</p>
                <p>Impact</p>
            </div>
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">CONTACT</small>
                <p>contact@4society.org</p>
                <p>+34 666 66 66</p>
            </div>
            <div class="col-sm-4">
                <small style="color:light-gray; font-weight: bold;">SOCIAL</small>
                <p>IG: @4society</p>
                <p>TW: @4society</p>
            </div>
        </div>
    </footer> 
  </body>
  
<script>
  if ({{.nam}} != null){
    document.getElementById("id02").style.display = "none";
    document.getElementById("id02.1").style.display = "none";
    document.getElementById("id03").style.display = "block";
    document.getElementById("comBox").hidden = false;
    document.getElementById("comReg").hidden = true;
  } else{
    document.getElementById("id02").style.display = "block";
    document.getElementById("id02.1").style.display = "block";
    document.getElementById("id03").style.display = "none";
    document.getElementById("comBox").hidden = true;
    document.getElementById("comReg").hidden = false;
  }

    function sendComment() {
        var xhttp = new XMLHttpRequest();
        xhttp.open("POST", "/comment", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        var c = "Title=" + document.getElementById("Title").value + "&Comment=" + document.getElementById("Comment").value + '&Name={{.nam}}&UserID={{.UserID}}&Project={{.ID}}' ;
        xhttp.send(c);
        alert('Comment submited');location.reload();
    }
</script>

</html>