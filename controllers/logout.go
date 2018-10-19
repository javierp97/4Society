package controllers

import (
	"github.com/astaxie/beego"
)

type LogoutController struct {
	beego.Controller
}

func (this *LogoutController) Post() {
	// Check if user is logged in
	session := this.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		// UserID is set and can be deleted
		session.Delete("UserID")
		session.Delete("Username")
		session.Delete("Name")
	}
}
