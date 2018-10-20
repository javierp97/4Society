package controllers

import (
	"github.com/astaxie/beego"
)

type NewController struct {
	beego.Controller
}

func (c *NewController) Get() {
	c.TplName = "new.tpl"
	session := c.StartSession()
	userID := session.Get("UserID")
	if userID != nil {
		c.Data["nam"] = session.Get("Name")
	}
}
