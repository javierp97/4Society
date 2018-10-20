<!DOCTYPE html>
<html lang="es">

<head>
  <title>Projects</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<style>
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
		height: 100px;
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
  <div class="container">
    <div class="col-sm-12" style="border-bottom:1px solid #ededed; color:gray;">
      <span class="glyphicon glyphicon-search searchButton"></span> 
      <input type="text" placeholder="BUSCAR..." name="search" style="border:none">
    </div>
      {{range .rList}}
      <div style="padding: 10px;" class="col-sm-12 col-xs-12">
        <div class="card">
          <form action="/restaurant" method="get" >
            <div class="imgtop" style="background-image:url('{{.Photo}}')"></div>
            <div class="imgbottom" ><center>
              <h3><button type="submit" name="rName" value='{{.Name}}'>{{.Name}}</button></h3>
              <small><p style="text-transform: uppercase; color: gray">{{.TAG1}} {{.TAG2}} {{.TAG3}}</p></small>
              <b>{{.Punctuation}}</b>
            </center></div>
          </form>
        </div>
      </div>
      {{end}}
  </div>
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