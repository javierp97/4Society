package controllers

import (
	"4Society/models"
	"4Society/operations"

	"github.com/astaxie/beego"
)

type RegisterController struct {
	beego.Controller
}

func (c *RegisterController) Post() {
	x := c.GetString("email")
	models.Register(c.GetString("username"), c.GetString("name"), c.GetString("password"), c.GetString("password2"), x)
	operations.SendMailPass(x)
	c.Redirect("/", 302)
}
