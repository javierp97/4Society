<html>


<head>
  <title>4Society</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/css/bootstrap.min.css">
</head>
<!------ Include the above in your HEAD tag ---------->
<style>
body{
   background-image: url("static/img/background.gif");
}
.centered-form{
	margin-top: 60px;
}

.centered-form .panel{
	background: rgba(255, 255, 255, 0.8);
}
</style>
<body>
{{ template "resources/navbar.tpl" }}
<div class="container" style="background-color:white; box-shadow: 5px 20px 30px rgba(0,0,0,0.2); height: 100%;">
        <h2 style="text-align: center;">Create Project</h2>
        <label for="user"><b>Title</b></label>
        <input id="Title" type="text" placeholder="Enter the project title" name="title" required>
        <label for="description"><b>Description</b></label>
        <input id="Description" type="text" placeholder="Enter the project description" name="description" required>
        <label for="Image"><b>Image</b></label>
        <br><br>
        <input type="file" id="Image" placeholder="Select the image th at you want" name="image" required>
        <br>
        <label for="Where"><b>Where</b> <small> (Format input: street,number,location,city)</small></label>
        <input id="Where" type="text" placeholder="Where is the event?" name="where" required>
        <label for="When"><b>When</b> <small> (Format input: DD/MM/YYYY)</small></label>
        <input id="When" type="text" placeholder="When is the event?" name="when" required>
        <div class="input-field col s12">
        <br>
        <select id="Select1">
        <option value="" disabled selected>Add Tag</option>
        <option value="" ></option>
        {{ range .tags }}
            <option value={{.Tagtype}}>{{.Tagtype}}</option>
        {{end}}
        </select>
        <label>Choose your 1st tag</label>
        <br>
        <select id="Select2">
        <option value="" disabled selected>Add Tag</option>
        <option value="" ></option>
        {{ range .tags }}
            <option value={{.Tagtype}}>{{.Tagtype}}</option>
        {{end}}
        </select>
        <label>Choose your 2nd tag</label>
        <br>
        <select id="Select3">
        <option value="" disabled selected>Add Tag</option>
        <option value="" ></option>
        {{ range .tags }}
            <option value={{.Tagtype}}>{{.Tagtype}}</option>
        {{end}}
        </select>
        <label>Choose your 3rd tag</label>
        </div>
        <button onclick="sendProject()" class="loginbutton">CREATE</button>
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
  function sendProject() {
        var xhttp = new XMLHttpRequest();
        xhttp.open("POST", "/retrieveinfonewproject", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        var c = "Title=" + document.getElementById("Title").value + "&Description=" + document.getElementById("Description").value + "&Where=" + document.getElementById("Where").value + "&When=" + document.getElementById("When").value + "&Select1=" + document.getElementById("Select1").value + "&Select2=" + document.getElementById("Select2").value + "&Select3=" + document.getElementById("Select3").value + "&Image=" + document.getElementById("Image").value +"&ImageB64=" + $('#Image').attr('value', '');
        xhttp.send(c);
        alert('Project submited');
        window.location = "/projects";
        
        
    }
</script>