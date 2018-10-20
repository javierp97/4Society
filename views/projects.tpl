<!DOCTYPE html>
<html lang="es">

<head>
  <title>Projects</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<style>
body {
    background-image: url("static/img/background.gif");
  }
  .imgtop {
		position: relative;
		height: 175px;
		overflow: hidden;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		background-color: rgba(white,.15);
 		background-blend-mode: overlay;
		border-radius:4px 4px 0 0;
	}
  .imgbottom {
		position: relative;
		height: 125px;
		overflow: hidden;
		background-repeat: no-repeat;
		background-size: cover;
		background-position: center;
		background-color: rgba(white,.15);
 		background-blend-mode: overlay;
		border-radius:0 0 4px 4px;
    border-bottom: 1px solid  #ededed;
    border-left: 1px solid  #ededed;
    border-right: 1px solid  #ededed;
	}
  .card:hover{
    box-shadow: 5px 20px 30px rgba(0,0,0,0.2);
  }
  .searchButton {
    position: absolute;  
    left: -5px;
    top: 18px;
    width: 40px;
    height: 36px;
    border: none;
    background: none;
    text-align: center;
    color: gray;
    font-size: 20px;
  }
</style>
<body>
  {{ template "resources/navbar.tpl" }}
  <div class="container" style="background-color:white; box-shadow: 5px 20px 30px rgba(0,0,0,0.2); height: 100%;">
    <div class="col-sm-11" style="border-bottom:1px solid #ededed; color:gray;">
      <span class="glyphicon glyphicon-search searchButton"></span> 
      <input type="text" placeholder="BUSCAR..." name="search" style="border:none">
    </div>
    <div class="col-sm-1">
        <a href="/newproject" class="loginbutton"> NEW </a>
    </div>
      {{range .Projects}}
      <div style="padding: 10px;" class="col-sm-6 col-xs-12">
        <div class="card">
          <form action="/project" method="get" >
            <div class="imgtop" style="background-image:url('{{.Image}}')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="p" value='{{.ID}}'>{{.Title}}</button></h3>
              <small><p style="text-transform: uppercase; color: gray">{{.TAG1}} {{.TAG2}} {{.TAG3}}</p></small>
              <b>{{.Punctuation}}<span class="glyphicon glyphicon-heart" style="color:red"></span></b>
            </center></div>
          </form> 
        </div>
      </div>
      {{end}}
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
  } else{
    document.getElementById("id02").style.display = "block";
    document.getElementById("id02.1").style.display = "block";
    document.getElementById("id03").style.display = "none";
  }
</script>
</html>