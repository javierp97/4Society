package controllers

import (
	"4Society/models"
	"strconv"

	"github.com/astaxie/beego"
)

type ProjectController struct {
	beego.Controller
}

func (c *ProjectController) Get() {
	c.TplName = "project.tpl"
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
		c.Data["UserID"] = userID
	}
	i, _ := strconv.Atoi(c.GetString("p"))
	p, _ := models.GetProject(uint(i))
	c.Data["Title"] = p.Title
	c.Data["Date"] = p.Date
	c.Data["Description"] = p.Description
	c.Data["EconomicSupport"] = p.EconomicSupport
	c.Data["HumanSupport"] = p.HumanSupport
	c.Data["MaterialSupport"] = p.MaterialSupport
	c.Data["Image"] = p.Image
	c.Data["ID"] = i
	c.Data["Place"] = p.Place
	c.Data["Comments"] = models.GetComments(i)
}
