package controllers

import (
	"4Society/models"

	"github.com/astaxie/beego"
)

type ProjectsController struct {
	beego.Controller
}

func (c *ProjectsController) Get() {
	c.TplName = "projects.tpl"
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
	}
	c.Data["Projects"], _ = models.ReadAllProjects()
}
