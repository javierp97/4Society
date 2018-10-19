package controllers

import (
	"4Society/models"

	"github.com/astaxie/beego"
)

type RegisterController struct {
	beego.Controller
}

func (c *RegisterController) Post() {
	models.Register(c.GetString("username"), c.GetString("name"), c.GetString("password"), c.GetString("password2"), c.GetString("email"))
	c.Redirect("/", 302)
}
