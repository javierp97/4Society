package controllers

import (
	"4Society/models"
	"fmt"

	"github.com/astaxie/beego"
)

type LoginController struct {
	beego.Controller
}

func (this *LoginController) Post() {
	session := this.StartSession()
	userID := session.Get("UserID")
	username := this.GetString("user")
	password := this.GetString("pass")
	if userID != nil {
		// User is logged in already, display another page
		println("ERROR YOURE LOGED")
		this.Redirect("/", 302)
	}
	id, err := models.Login(username, password)
	if err == nil {
		session.Set("UserID", id)
		session.Set("Username", username)
		session.Set("Name", models.GetName(id))
		print(username)
		println(" loged in")
		this.Redirect("/", 302)
	} else {
		fmt.Println(err)
		this.Redirect("/", 302)
	}
}
